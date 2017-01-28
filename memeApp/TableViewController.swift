//
//  TableViewController.swift
//  memeApp
//
//  Created by SH MAC on 2017. 1. 27..
//  Copyright © 2017년 승희. All rights reserved.
//


import Foundation
import UIKit

class TableViewController: UITableViewController{
    
    
    var memes: [Meme]!
    
  
    
    
   override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell")!
        let meme = memes[(indexPath as NSIndexPath).row]
        

        // Set the name and image
        cell.textLabel?.text = meme.topText
        cell.imageView?.image = meme.originalImage
        cell.detailTextLabel?.text = meme.bottomText

        return cell
    }
    
    //detail view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = storyboard!.instantiateViewController(withIdentifier: "DetailView") as! DetailViewController
        
        detailController.memes = memes[indexPath.row]
        
        navigationController!.pushViewController(detailController, animated: true)
    }

  
    
}
