//
//  DetailViewController.swift
//  memeApp
//
//  Created by SH MAC on 2017. 1. 28..
//  Copyright © 2017년 승희. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    var memes : Meme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = memes?.memedImage
    }
    
}
