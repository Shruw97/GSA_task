//
//  CartViewController.swift
//  GSATechWorldTask
//
//  Created by saurabh wattamwar on 22/11/23.
//

import UIKit

class CartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

  
    @IBOutlet weak var cartTableView: UITableView!
    
    
   static var cartItems = [CartModel]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cartTableView.dataSource = self
        cartTableView.delegate = self
        
//       addItemInArray()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cartTableView.reloadData()
    }
    
//    func addItemInArray(){
//        let i1 = CartModel(image: "tshirt.fill", name: "Van Huesen", price: 1000)
//        CartViewController.cartItems.append(i1)
//    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        CartViewController.cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartcell = cartTableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
        var temp = CartViewController.cartItems[indexPath.row]
        cartcell.productImage.image = UIImage(systemName: temp.image)
        cartcell.productName.text = temp.name
        cartcell.productPrice.text = "\(temp.price)"
        
        return cartcell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
   

}
