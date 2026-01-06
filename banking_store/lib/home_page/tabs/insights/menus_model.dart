class MenuModel {
  final String title;

  final List<SubMenuModel> subMenus;

  const MenuModel({
    required this.title,
    required this.subMenus,
  });

  static MenuModel goals = MenuModel(
    title: 'Goal',
    subMenus: [
      SubMenuModel(
        subtitle: 'Name',
        hint: 'Palm Springs',
      ),
      SubMenuModel(subtitle: 'Icon'),
      SubMenuModel(
        subtitle: 'Amount',
        hint: '\$2,837',
      ),
    ],
  );

  static MenuModel utilities = MenuModel(
    title: 'Utilities',
    subMenus: [
      SubMenuModel(subtitle: 'Add funds'),
      SubMenuModel(subtitle: 'Withdraw funds'),
    ],
  );
}

class SubMenuModel {
  final String subtitle;
  final String? hint;

  const SubMenuModel({
    required this.subtitle,
    this.hint,
  });
}
