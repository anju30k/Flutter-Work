class ModelClass {
  String? productname;
  String? img;
  String? price;
  bool isfavourite;
  int? counter = 0;
 

  ModelClass(
      { this.productname,
      this.img,
      this.price,
      this.counter,
      this.isfavourite=false,
      });
}
