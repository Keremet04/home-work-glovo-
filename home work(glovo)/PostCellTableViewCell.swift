//
//  PostCellTableViewCell.swift
//  home work(glovo)
//
//  Created by Керемет  on 1/12/22.
//

import UIKit

class PostCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var FirstProductLabel: UILabel!
    
    @IBOutlet weak var SecondProductLabel: UILabel!
    
    @IBOutlet weak var totalPrice: UILabel!
    
    @IBOutlet weak var button: UILabel!
    
    
override func layoutSubviews(){
    
    ImageView.layer.cornerRadius =   94 / 10
    button.layer.cornerRadius = 32 / 2
    
}
}
