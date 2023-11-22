//
//  ProductsViewController.swift
//  GSATechWorldTask
//
//  Created by saurabh wattamwar on 22/11/23.
//

import UIKit

class ProductsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  

    @IBOutlet weak var productTableView: UITableView!
    
   
    var products = [ProductModel]()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productTableView.dataSource = self
        productTableView.delegate = self
     
        
        addProductsDataInArray()
        
    }
    
    func addProductsDataInArray(){
        let p1 = ProductModel.init(productImage: "tshirt.fill" , productName: "Van Huesen", productSubtitle: "Women tshirt", productPrice: 1000)
        products.append(p1)
        
        let p2 = ProductModel.init(productImage: "tshirt" , productName: "Van Huesen", productSubtitle: "Women tshirt", productPrice: 1000)
        products.append(p2)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let productsCell =  productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        var temp = products[indexPath.row]
        productsCell.nameOfProduct.text = temp.productName
        productsCell.subTitle.text = temp.productSubtitle
        productsCell.productImageView.image = UIImage(systemName: temp.productImage)
        productsCell.price.text = "(temp.productPrice)"
        productsCell.addProductToCartBtn.tag = indexPath.row
        productsCell.addProductToCartBtn.addTarget(self, action: #selector(addProductToCart), for: .touchUpInside)
        
        return productsCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    @objc func addProductToCart(sender : UIButton){
        let product = products[sender.tag]
        let cartModel = CartModel(image: product.productImage, name: product.productName, price: product.productPrice)
        CartViewController.cartItems.append(cartModel)
        print("btn clicked")
        
    }
    
}
