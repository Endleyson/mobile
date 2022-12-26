// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Is It Safe?`
  String get textIsItSafe {
    return Intl.message(
      'Is It Safe?',
      name: 'textIsItSafe',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get textAppBarProfileRegisterPage {
    return Intl.message(
      'Perfil',
      name: 'textAppBarProfileRegisterPage',
      desc: '',
      args: [],
    );
  }

  /// `Escolha seu avatar!`
  String get textAppBarChooseProfilePhotoPage {
    return Intl.message(
      'Escolha seu avatar!',
      name: 'textAppBarChooseProfilePhotoPage',
      desc: '',
      args: [],
    );
  }

  /// `Cadastro`
  String get textAppBarSignUp {
    return Intl.message(
      'Cadastro',
      name: 'textAppBarSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Início`
  String get textBottomNavBarHome {
    return Intl.message(
      'Início',
      name: 'textBottomNavBarHome',
      desc: '',
      args: [],
    );
  }

  /// `Buscar`
  String get textBottomNavBarSearch {
    return Intl.message(
      'Buscar',
      name: 'textBottomNavBarSearch',
      desc: '',
      args: [],
    );
  }

  /// `Avaliações`
  String get textBottomNavBarReviews {
    return Intl.message(
      'Avaliações',
      name: 'textBottomNavBarReviews',
      desc: '',
      args: [],
    );
  }

  /// `Vamos entrar.`
  String get textPageTitleLogin {
    return Intl.message(
      'Vamos entrar.',
      name: 'textPageTitleLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sentimos sua falta!`
  String get textPageSubtitleLogin {
    return Intl.message(
      'Sentimos sua falta!',
      name: 'textPageSubtitleLogin',
      desc: '',
      args: [],
    );
  }

  /// `Escolha seu avatar`
  String get textPageTitleProfileRegisterPage {
    return Intl.message(
      'Escolha seu avatar',
      name: 'textPageTitleProfileRegisterPage',
      desc: '',
      args: [],
    );
  }

  /// `Não se esqueça de sorrir!`
  String get textPageSubtitleProfileRegisterPage {
    return Intl.message(
      'Não se esqueça de sorrir!',
      name: 'textPageSubtitleProfileRegisterPage',
      desc: '',
      args: [],
    );
  }

  /// `Esqueceu sua senha?`
  String get textButtonForgotPassword {
    return Intl.message(
      'Esqueceu sua senha?',
      name: 'textButtonForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Não possui uma conta?`
  String get textButtonDontHaveAccount {
    return Intl.message(
      'Não possui uma conta?',
      name: 'textButtonDontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, digite um nome de usuário válido`
  String get textErrorLoginUsername {
    return Intl.message(
      'Por favor, digite um nome de usuário válido',
      name: 'textErrorLoginUsername',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, digite uma senha válida`
  String get textErrorLoginPassword {
    return Intl.message(
      'Por favor, digite uma senha válida',
      name: 'textErrorLoginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Campos errados! Tente novamente.`
  String get textErrorWrongFields {
    return Intl.message(
      'Campos errados! Tente novamente.',
      name: 'textErrorWrongFields',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, digite uma data válida`
  String get textErrorInvalidDate {
    return Intl.message(
      'Por favor, digite uma data válida',
      name: 'textErrorInvalidDate',
      desc: '',
      args: [],
    );
  }

  /// `Esse campo não pode ficar vazio`
  String get textErrorEmptyField {
    return Intl.message(
      'Esse campo não pode ficar vazio',
      name: 'textErrorEmptyField',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, digite um e-mail válido`
  String get textErrorEmail {
    return Intl.message(
      'Por favor, digite um e-mail válido',
      name: 'textErrorEmail',
      desc: '',
      args: [],
    );
  }

  /// `ex: Ela/Dela, Ele/Dele, Ela/Elu`
  String get textErrorPronouns {
    return Intl.message(
      'ex: Ela/Dela, Ele/Dele, Ela/Elu',
      name: 'textErrorPronouns',
      desc: '',
      args: [],
    );
  }

  /// `Os campos de senha devem ser iguais`
  String get textErrorDifferentPasswords {
    return Intl.message(
      'Os campos de senha devem ser iguais',
      name: 'textErrorDifferentPasswords',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, selecione seu avatar!`
  String get textErrorEmptyAvatar {
    return Intl.message(
      'Por favor, selecione seu avatar!',
      name: 'textErrorEmptyAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Algo deu errado!`
  String get textErrorDropdown {
    return Intl.message(
      'Algo deu errado!',
      name: 'textErrorDropdown',
      desc: '',
      args: [],
    );
  }

  /// `Algo deu errado!`
  String get textError {
    return Intl.message(
      'Algo deu errado!',
      name: 'textError',
      desc: '',
      args: [],
    );
  }

  /// `Tente novamente em alguns instantes.`
  String get textErrorTryAgain {
    return Intl.message(
      'Tente novamente em alguns instantes.',
      name: 'textErrorTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Não achamos nenhum local com esse nome.\nQue tal adicionar ele?`
  String get textErrorSearch {
    return Intl.message(
      'Não achamos nenhum local com esse nome.\nQue tal adicionar ele?',
      name: 'textErrorSearch',
      desc: '',
      args: [],
    );
  }

  /// `Nenhum lugar próximo encontrado, comece a avaliar seu bairro!`
  String get textErrorHome {
    return Intl.message(
      'Nenhum lugar próximo encontrado, comece a avaliar seu bairro!',
      name: 'textErrorHome',
      desc: '',
      args: [],
    );
  }

  /// `Você não fez nenhum review ainda, começe assim que puder!`
  String get textErrorProfile {
    return Intl.message(
      'Você não fez nenhum review ainda, começe assim que puder!',
      name: 'textErrorProfile',
      desc: '',
      args: [],
    );
  }

  /// `Algo de errado aconteceu, tente novamente em alguns instantes.`
  String get textErrorUnknown {
    return Intl.message(
      'Algo de errado aconteceu, tente novamente em alguns instantes.',
      name: 'textErrorUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Não foi possível deletar a review!`
  String get textErrorDeleteReview {
    return Intl.message(
      'Não foi possível deletar a review!',
      name: 'textErrorDeleteReview',
      desc: '',
      args: [],
    );
  }

  /// `Ocorreu um erro ao obter sua localização!`
  String get textErrorGetLocation {
    return Intl.message(
      'Ocorreu um erro ao obter sua localização!',
      name: 'textErrorGetLocation',
      desc: '',
      args: [],
    );
  }

  /// `Review deletada com sucesso!`
  String get textDefaultDeleteReviewMessage {
    return Intl.message(
      'Review deletada com sucesso!',
      name: 'textDefaultDeleteReviewMessage',
      desc: '',
      args: [],
    );
  }

  /// `Usuário Registrado`
  String get textSuccessRegistration {
    return Intl.message(
      'Usuário Registrado',
      name: 'textSuccessRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Adicionar Local`
  String get textDrawerAddLocation {
    return Intl.message(
      'Adicionar Local',
      name: 'textDrawerAddLocation',
      desc: '',
      args: [],
    );
  }

  /// `Minha Conta`
  String get textDrawerMyAccount {
    return Intl.message(
      'Minha Conta',
      name: 'textDrawerMyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sua review foi publicada!`
  String get textPublishedReview {
    return Intl.message(
      'Sua review foi publicada!',
      name: 'textPublishedReview',
      desc: '',
      args: [],
    );
  }

  /// `Usuário`
  String get textUsername {
    return Intl.message(
      'Usuário',
      name: 'textUsername',
      desc: '',
      args: [],
    );
  }

  /// `Senha`
  String get textPassword {
    return Intl.message(
      'Senha',
      name: 'textPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar senha`
  String get textPasswordConfirmation {
    return Intl.message(
      'Confirmar senha',
      name: 'textPasswordConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get textLogin {
    return Intl.message(
      'Login',
      name: 'textLogin',
      desc: '',
      args: [],
    );
  }

  /// `Cadastre-se`
  String get textSignUp {
    return Intl.message(
      'Cadastre-se',
      name: 'textSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Data de nascimento`
  String get textDateOfBirth {
    return Intl.message(
      'Data de nascimento',
      name: 'textDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Gênero`
  String get textGender {
    return Intl.message(
      'Gênero',
      name: 'textGender',
      desc: '',
      args: [],
    );
  }

  /// `Orientação Sexual`
  String get textSexualOrientation {
    return Intl.message(
      'Orientação Sexual',
      name: 'textSexualOrientation',
      desc: '',
      args: [],
    );
  }

  /// `Esqueci algum? Por favor`
  String get textForgotGender {
    return Intl.message(
      'Esqueci algum? Por favor',
      name: 'textForgotGender',
      desc: '',
      args: [],
    );
  }

  /// `me avise!`
  String get textforgotGenderSubtext {
    return Intl.message(
      'me avise!',
      name: 'textforgotGenderSubtext',
      desc: '',
      args: [],
    );
  }

  /// `Pular`
  String get textSkipForNow {
    return Intl.message(
      'Pular',
      name: 'textSkipForNow',
      desc: '',
      args: [],
    );
  }

  /// `Cadastrar`
  String get textRegister {
    return Intl.message(
      'Cadastrar',
      name: 'textRegister',
      desc: '',
      args: [],
    );
  }

  /// `Pronomes`
  String get textPronouns {
    return Intl.message(
      'Pronomes',
      name: 'textPronouns',
      desc: '',
      args: [],
    );
  }

  /// `Nome`
  String get textName {
    return Intl.message(
      'Nome',
      name: 'textName',
      desc: '',
      args: [],
    );
  }

  /// `Endereço de E-mail`
  String get textEmailAddress {
    return Intl.message(
      'Endereço de E-mail',
      name: 'textEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Pronto`
  String get textReady {
    return Intl.message(
      'Pronto',
      name: 'textReady',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get textCancel {
    return Intl.message(
      'Cancelar',
      name: 'textCancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar`
  String get textConfirm {
    return Intl.message(
      'Confirmar',
      name: 'textConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Avançar`
  String get textAdvance {
    return Intl.message(
      'Avançar',
      name: 'textAdvance',
      desc: '',
      args: [],
    );
  }

  /// `Carregando...`
  String get textLoading {
    return Intl.message(
      'Carregando...',
      name: 'textLoading',
      desc: '',
      args: [],
    );
  }

  /// `Finalizar`
  String get textFinish {
    return Intl.message(
      'Finalizar',
      name: 'textFinish',
      desc: '',
      args: [],
    );
  }

  /// `Lugares Próximos`
  String get textClosePlaces {
    return Intl.message(
      'Lugares Próximos',
      name: 'textClosePlaces',
      desc: '',
      args: [],
    );
  }

  /// `Melhores Avaliados`
  String get textBestRates {
    return Intl.message(
      'Melhores Avaliados',
      name: 'textBestRates',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get textSearch {
    return Intl.message(
      'Search',
      name: 'textSearch',
      desc: '',
      args: [],
    );
  }

  /// `Configurações`
  String get textConfiguration {
    return Intl.message(
      'Configurações',
      name: 'textConfiguration',
      desc: '',
      args: [],
    );
  }

  /// `Privacidade`
  String get textPrivacy {
    return Intl.message(
      'Privacidade',
      name: 'textPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Termos de Uso`
  String get textTermsOfUse {
    return Intl.message(
      'Termos de Uso',
      name: 'textTermsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Sobre`
  String get textAbout {
    return Intl.message(
      'Sobre',
      name: 'textAbout',
      desc: '',
      args: [],
    );
  }

  /// `Contato`
  String get textContact {
    return Intl.message(
      'Contato',
      name: 'textContact',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get textOk {
    return Intl.message(
      'Ok',
      name: 'textOk',
      desc: '',
      args: [],
    );
  }

  /// `Avaliações`
  String get textReviews {
    return Intl.message(
      'Avaliações',
      name: 'textReviews',
      desc: '',
      args: [],
    );
  }

  /// `Suas Avaliações`
  String get textYourReviews {
    return Intl.message(
      'Suas Avaliações',
      name: 'textYourReviews',
      desc: '',
      args: [],
    );
  }

  /// `Irritado`
  String get textAngry {
    return Intl.message(
      'Irritado',
      name: 'textAngry',
      desc: '',
      args: [],
    );
  }

  /// `Chateado`
  String get textUpset {
    return Intl.message(
      'Chateado',
      name: 'textUpset',
      desc: '',
      args: [],
    );
  }

  /// `Neutro`
  String get textNeutral {
    return Intl.message(
      'Neutro',
      name: 'textNeutral',
      desc: '',
      args: [],
    );
  }

  /// `Contente`
  String get textHappy {
    return Intl.message(
      'Contente',
      name: 'textHappy',
      desc: '',
      args: [],
    );
  }

  /// `Alegre`
  String get textExcited {
    return Intl.message(
      'Alegre',
      name: 'textExcited',
      desc: '',
      args: [],
    );
  }

  /// `Ver mais`
  String get textSeeMore {
    return Intl.message(
      'Ver mais',
      name: 'textSeeMore',
      desc: '',
      args: [],
    );
  }

  /// `Ver menos`
  String get textSeeLess {
    return Intl.message(
      'Ver menos',
      name: 'textSeeLess',
      desc: '',
      args: [],
    );
  }

  /// `Remover`
  String get textDelete {
    return Intl.message(
      'Remover',
      name: 'textDelete',
      desc: '',
      args: [],
    );
  }

  /// `Compartilhar`
  String get textShare {
    return Intl.message(
      'Compartilhar',
      name: 'textShare',
      desc: '',
      args: [],
    );
  }

  /// `Informações Pessoais`
  String get textPersonalInformation {
    return Intl.message(
      'Informações Pessoais',
      name: 'textPersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Editar Perfil`
  String get textEditProfile {
    return Intl.message(
      'Editar Perfil',
      name: 'textEditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Sair`
  String get textLogout {
    return Intl.message(
      'Sair',
      name: 'textLogout',
      desc: '',
      args: [],
    );
  }

  /// `Desativar Conta`
  String get textDisableAccount {
    return Intl.message(
      'Desativar Conta',
      name: 'textDisableAccount',
      desc: '',
      args: [],
    );
  }

  /// `Excluir Conta`
  String get textDeleteAccount {
    return Intl.message(
      'Excluir Conta',
      name: 'textDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Alterar E-mail`
  String get textChangeEmail {
    return Intl.message(
      'Alterar E-mail',
      name: 'textChangeEmail',
      desc: '',
      args: [],
    );
  }

  /// `Alterar Senha`
  String get textChangePassword {
    return Intl.message(
      'Alterar Senha',
      name: 'textChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Informações da Conta`
  String get textAccountInformation {
    return Intl.message(
      'Informações da Conta',
      name: 'textAccountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Estrutura`
  String get textStructure {
    return Intl.message(
      'Estrutura',
      name: 'textStructure',
      desc: '',
      args: [],
    );
  }

  /// `Segurança`
  String get textSecurity {
    return Intl.message(
      'Segurança',
      name: 'textSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Atendimento`
  String get textService {
    return Intl.message(
      'Atendimento',
      name: 'textService',
      desc: '',
      args: [],
    );
  }

  /// `LGBTfobia`
  String get textLGBTFobia {
    return Intl.message(
      'LGBTfobia',
      name: 'textLGBTFobia',
      desc: '',
      args: [],
    );
  }

  /// `Escreva aqui...`
  String get textWriteHere {
    return Intl.message(
      'Escreva aqui...',
      name: 'textWriteHere',
      desc: '',
      args: [],
    );
  }

  /// `Enviar`
  String get textSend {
    return Intl.message(
      'Enviar',
      name: 'textSend',
      desc: '',
      args: [],
    );
  }

  /// `Voltar ao local`
  String get textBackToLocation {
    return Intl.message(
      'Voltar ao local',
      name: 'textBackToLocation',
      desc: '',
      args: [],
    );
  }

  /// `Review Completa!`
  String get textReviewCompleted {
    return Intl.message(
      'Review Completa!',
      name: 'textReviewCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Continuar`
  String get textContinue {
    return Intl.message(
      'Continuar',
      name: 'textContinue',
      desc: '',
      args: [],
    );
  }

  /// `Funcionalidade disponível em breve`
  String get textFeatureAvailableSoon {
    return Intl.message(
      'Funcionalidade disponível em breve',
      name: 'textFeatureAvailableSoon',
      desc: '',
      args: [],
    );
  }

  /// `Agora escolha um nome para todos verem, seja criativo!`
  String get textDontBeAfraidToBeCreative {
    return Intl.message(
      'Agora escolha um nome para todos verem, seja criativo!',
      name: 'textDontBeAfraidToBeCreative',
      desc: '',
      args: [],
    );
  }

  /// `Como prefere que as pessoas se refiram a você?`
  String get textHowDoYouPreferWeReferToYou {
    return Intl.message(
      'Como prefere que as pessoas se refiram a você?',
      name: 'textHowDoYouPreferWeReferToYou',
      desc: '',
      args: [],
    );
  }

  /// `Sua segurança é muito importante para nós.`
  String get textWeCareAboutYourSafety {
    return Intl.message(
      'Sua segurança é muito importante para nós.',
      name: 'textWeCareAboutYourSafety',
      desc: '',
      args: [],
    );
  }

  /// `- Sua senha deve ter mais de 8 caracteres`
  String get textAtLeast8Characteres {
    return Intl.message(
      '- Sua senha deve ter mais de 8 caracteres',
      name: 'textAtLeast8Characteres',
      desc: '',
      args: [],
    );
  }

  /// `- letras e números`
  String get textLettersAndNumbers {
    return Intl.message(
      '- letras e números',
      name: 'textLettersAndNumbers',
      desc: '',
      args: [],
    );
  }

  /// `Eu li e aceito os `
  String get textIReadAndAcceptThe {
    return Intl.message(
      'Eu li e aceito os ',
      name: 'textIReadAndAcceptThe',
      desc: '',
      args: [],
    );
  }

  /// `termos e condições`
  String get textTermsAndConditions {
    return Intl.message(
      'termos e condições',
      name: 'textTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Olá!,`
  String get textWelcome {
    return Intl.message(
      'Olá!,',
      name: 'textWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Será um prazer te conhecer.`
  String get textMeetingYouWillBeAPleasure {
    return Intl.message(
      'Será um prazer te conhecer.',
      name: 'textMeetingYouWillBeAPleasure',
      desc: '',
      args: [],
    );
  }

  /// `Nos diga seu nome!\nEssa informação aparecerá apenas para você.`
  String get textSayYourNameThisInfoIsPrivate {
    return Intl.message(
      'Nos diga seu nome!\nEssa informação aparecerá apenas para você.',
      name: 'textSayYourNameThisInfoIsPrivate',
      desc: '',
      args: [],
    );
  }

  /// `Nos diga seu e-mail, ele será associado a sua conta`
  String get textTellUsTheEmailAssociatedWithYourAccount {
    return Intl.message(
      'Nos diga seu e-mail, ele será associado a sua conta',
      name: 'textTellUsTheEmailAssociatedWithYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Uma representação sua aqui dentro!`
  String get textYourRepresentationHereInside {
    return Intl.message(
      'Uma representação sua aqui dentro!',
      name: 'textYourRepresentationHereInside',
      desc: '',
      args: [],
    );
  }

  /// `Digite o nome de um local para buscar.`
  String get textTypeTheNameOfAPlaceToSearch {
    return Intl.message(
      'Digite o nome de um local para buscar.',
      name: 'textTypeTheNameOfAPlaceToSearch',
      desc: '',
      args: [],
    );
  }

  /// `Sua segurança é muito importante para nós.\n - Sua senha deve ter mais de 8 caracteres\n - letras e números`
  String get textPasswordSpecifications {
    return Intl.message(
      'Sua segurança é muito importante para nós.\n - Sua senha deve ter mais de 8 caracteres\n - letras e números',
      name: 'textPasswordSpecifications',
      desc: '',
      args: [],
    );
  }

  /// `Selecione uma foto antes de salvar.`
  String get textSelectAPicture {
    return Intl.message(
      'Selecione uma foto antes de salvar.',
      name: 'textSelectAPicture',
      desc: '',
      args: [],
    );
  }

  /// `Cadastro realizado com sucesso!`
  String get textRegisterSuccess {
    return Intl.message(
      'Cadastro realizado com sucesso!',
      name: 'textRegisterSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Você será redirecionado para a página de login.`
  String get textRegisterSuccessMessage {
    return Intl.message(
      'Você será redirecionado para a página de login.',
      name: 'textRegisterSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Como você se sentiu nesse local?`
  String get textHowDoYouFeelAboutThisPlace {
    return Intl.message(
      'Como você se sentiu nesse local?',
      name: 'textHowDoYouFeelAboutThisPlace',
      desc: '',
      args: [],
    );
  }

  /// `Escolha uma classificação para este local!`
  String get textChooseAClassification {
    return Intl.message(
      'Escolha uma classificação para este local!',
      name: 'textChooseAClassification',
      desc: '',
      args: [],
    );
  }

  /// `Seguro para pessoas LGBTQIA+`
  String get textSafeForLGBT {
    return Intl.message(
      'Seguro para pessoas LGBTQIA+',
      name: 'textSafeForLGBT',
      desc: '',
      args: [],
    );
  }

  /// `Não recomendo este lugar`
  String get textDontRecomendThisPlace {
    return Intl.message(
      'Não recomendo este lugar',
      name: 'textDontRecomendThisPlace',
      desc: '',
      args: [],
    );
  }

  /// `Alguns problemas aconteceram`
  String get textSomeProblemsHappend {
    return Intl.message(
      'Alguns problemas aconteceram',
      name: 'textSomeProblemsHappend',
      desc: '',
      args: [],
    );
  }

  /// `Escolha uma classificação para esse lugar levando em conta as qualidades listadas!`
  String get textChooseAClassificationForThisPlace {
    return Intl.message(
      'Escolha uma classificação para esse lugar levando em conta as qualidades listadas!',
      name: 'textChooseAClassificationForThisPlace',
      desc: '',
      args: [],
    );
  }

  /// `Você pode nos dar mais detalhes?`
  String get textCanYouGiveMoreDetails {
    return Intl.message(
      'Você pode nos dar mais detalhes?',
      name: 'textCanYouGiveMoreDetails',
      desc: '',
      args: [],
    );
  }

  /// `Texto copiado!`
  String get textShareUserReview {
    return Intl.message(
      'Texto copiado!',
      name: 'textShareUserReview',
      desc: '',
      args: [],
    );
  }

  /// `Não encontrou o local que estava procurando?`
  String get textDontFoundThePlace {
    return Intl.message(
      'Não encontrou o local que estava procurando?',
      name: 'textDontFoundThePlace',
      desc: '',
      args: [],
    );
  }

  /// `Crie ele aqui.`
  String get textCreateHere {
    return Intl.message(
      'Crie ele aqui.',
      name: 'textCreateHere',
      desc: '',
      args: [],
    );
  }

  /// `Usuário deletado com sucesso`
  String get textDeleteUser {
    return Intl.message(
      'Usuário deletado com sucesso',
      name: 'textDeleteUser',
      desc: '',
      args: [],
    );
  }

  /// `Exemplo: Ela/Dela, Elu/Delu, Ela/Elu`
  String get textExamplePronouns {
    return Intl.message(
      'Exemplo: Ela/Dela, Elu/Delu, Ela/Elu',
      name: 'textExamplePronouns',
      desc: '',
      args: [],
    );
  }

  /// `Confirme sua senha`
  String get textConfirmPassword {
    return Intl.message(
      'Confirme sua senha',
      name: 'textConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Insira sua senha novamente`
  String get textReenterPassword1_0 {
    return Intl.message(
      'Insira sua senha novamente',
      name: 'textReenterPassword1_0',
      desc: '',
      args: [],
    );
  }

  /// `para continuar.`
  String get textReenterPassword1_1 {
    return Intl.message(
      'para continuar.',
      name: 'textReenterPassword1_1',
      desc: '',
      args: [],
    );
  }

  /// `Confirme sua senha atual`
  String get textConfirmCurrentPassword {
    return Intl.message(
      'Confirme sua senha atual',
      name: 'textConfirmCurrentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Não foi possível confirmar sua senha!`
  String get textErrorConfirmPassword {
    return Intl.message(
      'Não foi possível confirmar sua senha!',
      name: 'textErrorConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sucesso!`
  String get textSafeDialogTypeSucces {
    return Intl.message(
      'Sucesso!',
      name: 'textSafeDialogTypeSucces',
      desc: '',
      args: [],
    );
  }

  /// `Atenção!`
  String get textSafeDialogTypeAlert {
    return Intl.message(
      'Atenção!',
      name: 'textSafeDialogTypeAlert',
      desc: '',
      args: [],
    );
  }

  /// `Erro!`
  String get textSafeDialogTypeError {
    return Intl.message(
      'Erro!',
      name: 'textSafeDialogTypeError',
      desc: '',
      args: [],
    );
  }

  /// `Foco em`
  String get textOnBoarding1_0 {
    return Intl.message(
      'Foco em',
      name: 'textOnBoarding1_0',
      desc: '',
      args: [],
    );
  }

  /// `segurança`
  String get textOnBoarding1_1 {
    return Intl.message(
      'segurança',
      name: 'textOnBoarding1_1',
      desc: '',
      args: [],
    );
  }

  /// `e`
  String get textOnBoarding1_2 {
    return Intl.message(
      'e',
      name: 'textOnBoarding1_2',
      desc: '',
      args: [],
    );
  }

  /// `comunidade`
  String get textOnBoarding1_3 {
    return Intl.message(
      'comunidade',
      name: 'textOnBoarding1_3',
      desc: '',
      args: [],
    );
  }

  /// `Saiba onde frequentar com`
  String get textOnBoarding2_0 {
    return Intl.message(
      'Saiba onde frequentar com',
      name: 'textOnBoarding2_0',
      desc: '',
      args: [],
    );
  }

  /// `segurança`
  String get textOnBoarding2_1 {
    return Intl.message(
      'segurança',
      name: 'textOnBoarding2_1',
      desc: '',
      args: [],
    );
  }

  /// `Descreva suas`
  String get textOnBoarding3_0 {
    return Intl.message(
      'Descreva suas',
      name: 'textOnBoarding3_0',
      desc: '',
      args: [],
    );
  }

  /// `experiências`
  String get textOnBoarding3_1 {
    return Intl.message(
      'experiências',
      name: 'textOnBoarding3_1',
      desc: '',
      args: [],
    );
  }

  /// `e avalie locais`
  String get textOnBoarding3_2 {
    return Intl.message(
      'e avalie locais',
      name: 'textOnBoarding3_2',
      desc: '',
      args: [],
    );
  }

  /// `Configurações`
  String get textAddLocaleTitle {
    return Intl.message(
      'Configurações',
      name: 'textAddLocaleTitle',
      desc: '',
      args: [],
    );
  }

  /// `Adicionar Local`
  String get textAddLocaleSubTitle {
    return Intl.message(
      'Adicionar Local',
      name: 'textAddLocaleSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nome do local`
  String get textAddLocaleNameTextFieldTitle {
    return Intl.message(
      'Nome do local',
      name: 'textAddLocaleNameTextFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `CEP`
  String get textAddLocaleCepFieldTitle {
    return Intl.message(
      'CEP',
      name: 'textAddLocaleCepFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Endereço`
  String get textAddLocaleAddressFieldTitle {
    return Intl.message(
      'Endereço',
      name: 'textAddLocaleAddressFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tipo de local`
  String get textAddTypeLocaleFieldTitle {
    return Intl.message(
      'Tipo de local',
      name: 'textAddTypeLocaleFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Adicionar Foto (opcional)`
  String get textAddLocalePhotoFieldTitle {
    return Intl.message(
      'Adicionar Foto (opcional)',
      name: 'textAddLocalePhotoFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `ADICIONAR LOCAL`
  String get textAddLocaleConfirm {
    return Intl.message(
      'ADICIONAR LOCAL',
      name: 'textAddLocaleConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Local adicionado com sucesso!`
  String get textAddLocaleSuccess {
    return Intl.message(
      'Local adicionado com sucesso!',
      name: 'textAddLocaleSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Bar`
  String get textAddLocaleTypePub {
    return Intl.message(
      'Bar',
      name: 'textAddLocaleTypePub',
      desc: '',
      args: [],
    );
  }

  /// `Restaurante`
  String get textAddLocaleTypeRestaurant {
    return Intl.message(
      'Restaurante',
      name: 'textAddLocaleTypeRestaurant',
      desc: '',
      args: [],
    );
  }

  /// `Local público`
  String get textAddLocaleTypePublicLocation {
    return Intl.message(
      'Local público',
      name: 'textAddLocaleTypePublicLocation',
      desc: '',
      args: [],
    );
  }

  /// `Casa noturna`
  String get textAddLocaleTypeNightClub {
    return Intl.message(
      'Casa noturna',
      name: 'textAddLocaleTypeNightClub',
      desc: '',
      args: [],
    );
  }

  /// `Ex: Bar santa maria`
  String get textAddLocaleExample {
    return Intl.message(
      'Ex: Bar santa maria',
      name: 'textAddLocaleExample',
      desc: '',
      args: [],
    );
  }

  /// `Ex: 04553434`
  String get textAddLocaleCepExample {
    return Intl.message(
      'Ex: 04553434',
      name: 'textAddLocaleCepExample',
      desc: '',
      args: [],
    );
  }

  /// `Ex: Rua Clodomiro`
  String get textAddLocaleAddress {
    return Intl.message(
      'Ex: Rua Clodomiro',
      name: 'textAddLocaleAddress',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
