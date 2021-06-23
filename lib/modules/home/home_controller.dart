class HomeController {
  var _currentPage = 0;
  get currentPage => _currentPage;

  void setPage(int index) {
    _currentPage = index;
  }
}
