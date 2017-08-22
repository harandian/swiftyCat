//
//  DetailViewController.swift
//  SwiftyCats
//
//  Created by Hirad on 2017-08-21.
//  Copyright © 2017 Hirad. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {

    var photoToShow: UIImage!
    
    @IBOutlet weak var photoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoView.image = photoToShow
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
