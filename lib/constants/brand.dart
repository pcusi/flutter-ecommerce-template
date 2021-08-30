class BrandCategory {
  String name;

  BrandCategory({this.name = ''});

  static List<BrandCategory> brands = [
    BrandCategory(name: 'Para ti'),
    BrandCategory(name: 'Nuevo'),
    BrandCategory(name: 'Categorías'),
    BrandCategory(name: 'Tendencias'),
    BrandCategory(name: 'Ingresos')
  ];
}
