class MyModel {
  String? isCustomerActive;
  Products? products;
  String? moduleBlockwishlist;
  String? cacheEtag;

  MyModel(
      {this.isCustomerActive,
      this.products,
      this.moduleBlockwishlist,
      this.cacheEtag});

  MyModel.fromJson(Map<String, dynamic> json) {
    isCustomerActive = json['is_customer_active'];
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
    moduleBlockwishlist = json['module_blockwishlist'];
    cacheEtag = json['cache_etag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_customer_active'] = this.isCustomerActive;
    if (this.products != null) {
      data['products'] = this.products!.toJson();
    }
    data['module_blockwishlist'] = this.moduleBlockwishlist;
    data['cache_etag'] = this.cacheEtag;
    return data;
  }
}

class Products {
  Pagination? pagination;
  Allproducts? allproducts;

  Products({this.pagination, this.allproducts});

  Products.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    allproducts = json['allproducts'] != null
        ? new Allproducts.fromJson(json['allproducts'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.allproducts != null) {
      data['allproducts'] = this.allproducts!.toJson();
    }
    return data;
  }
}

class Pagination {
  String? totalproducts;
  String? perpage;
  String? showingproducts;

  Pagination({this.totalproducts, this.perpage, this.showingproducts});

  Pagination.fromJson(Map<String, dynamic> json) {
    totalproducts = json['totalproducts'];
    perpage = json['perpage'];
    showingproducts = json['showingproducts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalproducts'] = this.totalproducts;
    data['perpage'] = this.perpage;
    data['showingproducts'] = this.showingproducts;
    return data;
  }
}

class Allproducts {
  List<Product>? product;

  Allproducts({this.product});

  Allproducts.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = <Product>[];
      json['product'].forEach((v) {
        product!.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String? idProduct;
  String? name;
  String? price;
  String? quantity;
  String? showPrice;
  String? idProductAttribute;
  String? imageLink;
  String? reductionAmount;
  String? oldPrice;
  String? displayAddtocart;
  String? addedInWishlist;

  Product(
      {this.idProduct,
      this.name,
      this.price,
      this.quantity,
      this.showPrice,
      this.idProductAttribute,
      this.imageLink,
      this.reductionAmount,
      this.oldPrice,
      this.displayAddtocart,
      this.addedInWishlist});

  Product.fromJson(Map<String, dynamic> json) {
    idProduct = json['id_product'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    showPrice = json['show_price'];
    idProductAttribute = json['id_product_attribute'];
    imageLink = json['image_link'];
    reductionAmount = json['reduction_amount'];
    oldPrice = json['old_price'];
    displayAddtocart = json['display_addtocart'];
    addedInWishlist = json['added_in_wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_product'] = this.idProduct;
    data['name'] = this.name;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['show_price'] = this.showPrice;
    data['id_product_attribute'] = this.idProductAttribute;
    data['image_link'] = this.imageLink;
    data['reduction_amount'] = this.reductionAmount;
    data['old_price'] = this.oldPrice;
    data['display_addtocart'] = this.displayAddtocart;
    data['added_in_wishlist'] = this.addedInWishlist;
    return data;
  }
}
