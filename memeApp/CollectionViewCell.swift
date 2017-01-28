//
//  CollectionViewCell.swift
//  memeApp
//
//  Created by SH MAC on 2017. 1. 28..
//  Copyright © 2017년 승희. All rights reserved.
//

import Foundation
import UIKit
class CollectionViewCell: UICollectionViewCell{
  
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var BtmTextField: UITextField!
    
    
    let memeTextAttributes:[String:Any] = [
        NSStrokeColorAttributeName: UIColor.black,
        NSForegroundColorAttributeName: UIColor.white,
        NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 20)!,
        NSStrokeWidthAttributeName: -3.5] //양수면 투명하게 나오고 음수면 색나옴
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        topTextField.defaultTextAttributes = memeTextAttributes
        BtmTextField.defaultTextAttributes = memeTextAttributes
        
        topTextField.textAlignment = .center
        BtmTextField.textAlignment = .center
        
        
        
    }
    
    

}
