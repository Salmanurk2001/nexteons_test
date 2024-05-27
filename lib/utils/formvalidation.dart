class Errorvalidation {
  emailAdress(value) {
    if (value != null && value.isEmpty) {
      return ('Enter the details ');
    }
  }

  password(value) {
    if (value != null && value.isEmpty) {
      return ('Enter the details ');
    }
  }
}
