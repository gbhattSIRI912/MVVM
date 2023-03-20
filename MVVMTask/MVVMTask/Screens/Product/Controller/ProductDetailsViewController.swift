//
//  ProductDetailsViewController.swift
//  MVVMTask
//
//  Created by Gaurav Bhatt on 17/03/23.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    @IBOutlet weak var img_Product: UIImageView!
    @IBOutlet weak var lbl_Title: UILabel!
    @IBOutlet weak var lbl_Category: UILabel!
    @IBOutlet weak var btn_Rating: UIButton!
    @IBOutlet weak var lbl_Description: UILabel!
    @IBOutlet weak var btn_AddCart: UIButton!
    @IBOutlet weak var btn_Buy: UIButton!
    @IBOutlet weak var lbl_Price: UILabel!
    
    private var viewModel = ProductViewModel()

    var dish: Product!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dish)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        img_Product.setImage(with: dish.image)//UIImage(named: imgProduct)
        lbl_Title.text = dish.title
        lbl_Category.text = dish.category
        btn_Rating.titleLabel?.text = "\(dish.rating.rate)"
        lbl_Description.text = dish.description
        lbl_Price.text = "$\(dish.price)"
    }

   
    @IBAction func btn_CartTapped(_ sender: Any) {
        let product = AddProduct(title: "iPhone")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddProductViewController") as? AddProductViewController
        
        viewModel.addProduct(parameters: product)
        vc?.lbltitle = dish.title
        vc?.category = dish.category
        vc?.image = dish.image
        vc?.price = "\(dish.price)"
        vc?.rate = "\(dish.rating.rate)"
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    
    
    @IBAction func btn_BuyTapped(_ sender: Any) {
    }
    
}
