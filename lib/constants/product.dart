class Product {
  String image;
  String title;
  int price;
  String brand;
  String description;
  int id;

  Product({this.image = '', this.title = '', this.price = 0, this.brand = '', this.description = '', this.id = 0,});

  static List<Product> products = [
    Product(id: 1, description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', brand: 'Aruma Style', image: 'product_1', title: 'Mangalarga marrón', price: 25,),
    Product(id: 2, description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', brand: 'Shein', image: 'product_2', title: 'Mangalarga roja', price: 25,),
    Product(id: 3, description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', brand: 'Shein', image: 'product_3', title: 'Vestido de verano', price: 25,),
    Product(id: 4, description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', brand: 'Baseman', image: 'product_4', title: 'Polo entero celeste', price: 25,),
    Product(id: 5, description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', brand: 'Lacoste', image: 'product_5', title: 'Polo entero blanco', price: 25,),
  ];
}
