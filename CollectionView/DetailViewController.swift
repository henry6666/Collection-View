//
//  DetailViewController.swift
//  CollectionView
//
//  Created by Henry Aguinaga on 2016-09-08.
//  Copyright © 2016 Henry Aguinaga. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name: AnyObject? {
        get {
            return UserDefaults.standard.object(forKey: "name") as AnyObject?
        }
    }
    
    
    @IBOutlet weak var detailView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailView.image = UIImage(named: name as! String)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
