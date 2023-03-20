//
//  AddProductViewController.swift
//  Youtube MVVM Products
//
//  Created by Gaurav Bhatt on 15/01/23.
//

import UIKit

class AddProductViewController: UIViewController {

    @IBOutlet weak var tbl_CartList: UITableView!
    var lbltitle = ""
    var image = ""
    var category = ""
    var price = ""
    var rate = ""
    
    var productList: Product!
    override func viewDidLoad() {
        super.viewDidLoad()
        tbl_CartList.register(UINib(nibName: "AddCartCell", bundle: nil), forCellReuseIdentifier: "AddCartCell")
        addProduct()
    }

    func addProduct() {
        guard let url = URL(string: "https://dummyjson.com/products/add") else { return }

        let parameters = AddProduct(title: "Gaurav Bhatt")

        var request = URLRequest(url: url)
        request.httpMethod = "POST"

        
        request.httpBody = try? JSONEncoder().encode(parameters)

        request.allHTTPHeaderFields = [
            "Content-Type": "application/json"
        ]

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data else { return }
            do {
                let productResponse = try JSONDecoder().decode(AddProduct.self, from: data)
                print(productResponse)
            }catch {
                print(error)
            }
        }.resume()
    }


}

extension AddProductViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AddCartCell") as? AddCartCell else {
            return UITableViewCell()
        }
        cell.img_Product.setImage(with: image)
        cell.lbl_Title.text = lbltitle
        cell.lbl_Description.text = category
        cell.lbl_Price.text = price
        cell.lbl_Rating.text = rate
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}
