@Deprecated('Use SafeState with SafeStream instead.')
enum Status { loading, done, error, initial }

@Deprecated('Use SafeStream with SafeState instead.')
class SafeEvent<T> {
  Status status;
  T? data;
  String? message;

  SafeEvent.initial() : status = Status.initial;

  SafeEvent.load() : status = Status.loading;

  SafeEvent.done(this.data) : status = Status.done;

  @Deprecated('Use yourController.addError(yourErrorMessage);')
  SafeEvent.error(this.message) : status = Status.error;

  @override
  String toString() {
    return 'Status: $status \nMessage: $message \nData: $data';
  }
}
