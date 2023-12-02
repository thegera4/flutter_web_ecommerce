const rootRoute = "/home";

const productsPageDisplayName = "Products";
const productsPageRoute = "/products";

const authenticationDisplayName = "Log In/Out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem({required this.name, required this.route});
}

List<MenuItem> sideMenuItems = [
  MenuItem(name: productsPageDisplayName, route: productsPageRoute),
  MenuItem(name: authenticationDisplayName, route: authenticationPageRoute),
];
