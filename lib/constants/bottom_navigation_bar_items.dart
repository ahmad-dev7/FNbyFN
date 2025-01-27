Map<int, NavigationBarItem> kNavigationBarItems = {
  0: NavigationBarItem(
    iconPath: "assets/icons/home.svg",
  ),
  1: NavigationBarItem(
    iconPath: "assets/icons/search.svg",
  ),
  2: NavigationBarItem(
    iconPath: "assets/icons/favorite.svg",
  ),
  3: NavigationBarItem(
    iconPath: "assets/icons/profile.svg",
  ),
};

class NavigationBarItem {
  final String iconPath;
  final String label;

  NavigationBarItem({
    required this.iconPath,
    this.label = "",
  });
}
