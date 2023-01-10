import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:is_it_safe_app/generated/l10n.dart';
import 'package:is_it_safe_app/src/app/modules/auth/register/presenter/bloc/register_bloc.dart';
import 'package:is_it_safe_app/src/app/modules/auth/register/presenter/pages/register_profile_page.dart';
import 'package:is_it_safe_app/src/app/modules/auth/register/presenter/pages/terms_and_conditions_page.dart';
import 'package:is_it_safe_app/src/components/style/colors/safe_colors.dart';
import 'package:is_it_safe_app/src/components/style/text/text_styles.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_app_bar.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_button.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_check_box.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_show_field_button.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_text_form_field.dart';
import 'package:is_it_safe_app/src/core/constants/string_constants.dart';
import 'package:is_it_safe_app/src/core/util/safe_log_util.dart';

class RegisterPage extends StatefulWidget {
  static const route = '/register';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ModularState<RegisterPage, RegisterBloc> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = true;

  @override
  void initState() {
    super.initState();
    SafeLogUtil.instance.route(Modular.to.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: SafeAppBar(
        title: S.current.textAppBarSignUp,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _mountWelcomeText(),
                const SizedBox(height: 30),
                _mountNameField(),
                const SizedBox(height: 20),
                _mountUsernameField(),
                const SizedBox(height: 20),
                _mountPronounField(),
                const SizedBox(height: 20),
                _mountEmailField(),
                const SizedBox(height: 20),
                _mountPasswordField(),
                const SizedBox(height: 20),
                _mountConfirmPasswordField(),
                const SizedBox(height: 20),
                _mountTermsAndConditions(),
                const SizedBox(height: 20),
                _mountRegisterButton(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  StreamBuilder<bool> _mountRegisterButton() {
    return StreamBuilder<bool>(
        stream: controller.registerButtonController.stream,
        initialData: false,
        builder: (context, snapshot) {
          return SafeButton(
              title: S.current.textRegister,
              state: snapshot.data == true
                  ? ButtonState.rest
                  : ButtonState.disabled,
              onTap: () {
                _formKey.currentState?.validate();
                if (snapshot.data == true) {
                  Modular.to.pushNamed(
                    StringConstants.dot + RegisterProfilePage.route,
                  );
                }
              });
        });
  }

  Row _mountTermsAndConditions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeCheckBox(
          value: controller.isTermsAndConditionsChecked,
          onChanged: (value) => setState(() {
            controller.toogleTermsAndConditions();
            controller.toogleRegisterButton();
          }),
        ),
        RichText(
          overflow: TextOverflow.fade,
          text: TextSpan(
            children: [
              TextSpan(
                text: S.current.textIReadAndAcceptThe,
                style: TextStyles.helper(),
              ),
              TextSpan(
                  text: S.current.textTermsAndConditions +
                      StringConstants.asterisk,
                  style: TextStyles.helper(
                    color: SafeColors.statusColors.active,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    Modular.to.push(MaterialPageRoute(builder: (_) => const TermsAndConditionsPage()));
                    }),
            ],
          ),
        ),
      ],
    );
  }

  SafeTextFormField _mountConfirmPasswordField() {
    return SafeTextFormField(
      controller: controller.confirmPasswordController,
      obscureText: _showPassword,
      labelText: S.current.textPasswordConfirmation + StringConstants.asterisk,
      onChanged: (value) => controller.toogleRegisterButton(),
      validator: (value) => controller.validatePassword(
        value,
        errorText: S.current.textErrorDifferentPasswords,
      ),
      suffixIcon: SafeShowFieldButton(
        value: _showPassword,
        onTap: () => setState(() {
          _showPassword = !_showPassword;
        }),
      ),
    );
  }

  SafeTextFormField _mountPasswordField() {
    return SafeTextFormField(
      controller: controller.passwordController,
      obscureText: _showPassword,
      labelText: S.current.textPassword + StringConstants.asterisk,
      bottomText: S.current.textTellUsTheEmailAssociatedWithYourAccount,
      onChanged: (value) => controller.toogleRegisterButton(),
      validator: (value) => controller.validatePassword(value),
      suffixIcon: SafeShowFieldButton(
        value: _showPassword,
        onTap: () => setState(() {
          _showPassword = !_showPassword;
        }),
      ),
    );
  }

  SafeTextFormField _mountEmailField() {
    return SafeTextFormField(
      controller: controller.emailController,
      labelText: S.current.textEmailAddress + StringConstants.asterisk,
      bottomText: S.current.textTellUsTheEmailAssociatedWithYourAccount,
      onChanged: (value) => controller.toogleRegisterButton(),
      validator: (value) => controller.validateEmail(value),
    );
  }

  SafeTextFormField _mountPronounField() {
    return SafeTextFormField(
      controller: controller.pronounController,
      labelText: S.current.textPronouns,
      bottomText: S.current.textHowDoYouPreferWeReferToYou,
      onChanged: (value) => controller.toogleRegisterButton(),
    );
  }

  SafeTextFormField _mountUsernameField() {
    return SafeTextFormField(
      controller: controller.usernameController,
      labelText: S.current.textUsername + StringConstants.asterisk,
      bottomText: S.current.textDontBeAfraidToBeCreative,
      onChanged: (value) => controller.toogleRegisterButton(),
      validator: (value) => controller.validateTextField(value),
    );
  }

  SafeTextFormField _mountNameField() {
    return SafeTextFormField(
      controller: controller.nameController,
      labelText: S.current.textName + StringConstants.asterisk,
      bottomText: S.current.textSayYourNameThisInfoIsPrivate,
      onChanged: (value) => controller.toogleRegisterButton(),
      validator: (value) => controller.validateTextField(value),
    );
  }

  RichText _mountWelcomeText() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.current.textWelcome + StringConstants.breakLine,
            style: TextStyles.headline1(),
          ),
          TextSpan(
            text: S.current.textMeetingYouWillBeAPleasure,
            style: TextStyles.headline2(),
          ),
        ],
      ),
    );
  }
}
