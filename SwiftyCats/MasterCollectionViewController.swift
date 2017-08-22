//
//  MasterCollectionViewController.swift
//  SwiftyCats
//
//  Created by Hirad on 2017-08-21.
//  Copyright © 2017 Hirad. All rights reserved.
//

import UIKit
import Foundation

private let reuseIdentifier = "Cell"

//let data: Data 
//let json = try

var photoArray: [UIImage] = [
                            UIImage (named: "Rick1")!,
                            UIImage (named: "Rick2")!,
                            UIImage (named: "Rick3")!,
                            UIImage (named: "Rick4")!,
                            UIImage (named: "Rick5")!
                            ]

var urlString = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=35b5e91cdc6448e9f25a41cf4faec017&tags=&has_geo=&lat=51.5074&lon=0.1278&extras=url_m%2C+geo&format=json&nojsoncallback=1&auth_token=72157685482991843-2a3c1919a3bc0700&api_sig=84c8bc5f4b3e83b844ee50c4135cefa0"

var url = URL(string: urlString)!

//var mySession:URLSession ses



class MasterCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (url)

        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "detail" {
            if let detailViewController = segue.destination as? DetailViewController {
                
                let indexPath = self.collectionView!.indexPathsForSelectedItems?[0]
                detailViewController.photoToShow = photoArray[(indexPath?.row)!]
            }
        }
        
        
    }
 

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photoArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MyCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! MyCollectionCell
        // Configure the cell
        
        cell.image.image = photoArray[indexPath.row]
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
