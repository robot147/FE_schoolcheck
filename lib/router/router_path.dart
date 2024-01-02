enum RouterPath {
  //최상위
  splash('/', '/'),
  login('/login', 'login'),
  home('/home', 'home'),

  //home 하위
  memberPage('member_page/:memberId', 'member_page'),
  ;

  const RouterPath(this.path, this.name);
  final String path;
  final String name;
}
