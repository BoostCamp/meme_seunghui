//
//  UICollectionViewController.swift
//  memeApp
//
//  Created by SH MAC on 2017. 1. 28..
//  Copyright © 2017년 승희. All rights reserved.
//

import Foundation
import UIKit



class CollectionViewController: UICollectionViewController{
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    
     var memes: [Meme]!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    
  
    override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        
        collectionView?.reloadData()
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
       
        let meme = self.memes[(indexPath as NSIndexPath).row]
      
        
        
        // Set the name and image
        cell.imageView?.image = meme.originalImage
        cell.topTextField.text = meme.topText
        cell.BtmTextField.text = meme.bottomText
        
    
        
        
        return cell
      
    }
    
    //detail view
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailController = storyboard!.instantiateViewController(withIdentifier: "DetailView") as! DetailViewController
        
        detailController.memes = memes[indexPath.row]
        
        navigationController!.pushViewController(detailController, animated: true)
    }
    
    
    

    
    
}
