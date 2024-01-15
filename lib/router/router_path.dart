enum RouterPath {
  //최상위
  splash('/', '/'),
  login('/login', 'login'),
  home('/home', 'home'),
  newHome('/newHome', 'newHome'),

  //home 하위
  memberPage('member_page/:memberId', 'member_page'),

  //login 하위
  signUpPage('sign_up_page', 'sign_up');

  const RouterPath(this.path, this.name);
  final String path;
  final String name;
}
