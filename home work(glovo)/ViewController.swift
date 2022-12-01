//
//  ViewController.swift
//  home work(glovo)
//
//  Created by Керемет  on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var goods: [TableView] = [
    TableView(name: "Oasis", profileImage: "oasisImage", fistProduct: "1 x Запеченный донер - курица", secondProduct: "1 x Запеченный донер - говядина", totalPrice: "560,00 KGS"),
    TableView(name: "Domino pizza", profileImage: "dominoImage", fistProduct: "1 x Пицца 4 сыра", secondProduct: "2 x Пицца Азиатская", totalPrice: "960,00 KGS"),
    TableView(name: "KFC", profileImage: "kfcImage", fistProduct: "1 x 8 острых крыльев", secondProduct: "1 x 3 острыx ножек", totalPrice: "1250,00 KGS"),
    TableView(name: "Okiniiri", profileImage: "okiniiriImage", fistProduct: "1 x Сет Люкс (56 шт., 1450 гр.)", secondProduct: "2 x Паста Карбонара (270 гр.)", totalPrice: "3569,00 KGS")
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "chat_cell")
        
        
    


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goods.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "chat_cell", for: indexPath) as! PostCellTableViewCell
        
        
        cell.ImageView.image = UIImage(named: goods[indexPath.row].profileImage)
        cell.nameLabel.text = goods[indexPath.row].name
        cell.FirstProductLabel.text = goods[indexPath.row].fistProduct
        cell.SecondProductLabel.text = goods[indexPath.row].secondProduct
        cell.totalPrice.text = goods[indexPath.row].totalPrice
        
        return cell
    }
}

    extension ViewController:UITableViewDelegate{
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 132
        }
    }
}
