//
//  ViewController.swift
//  CollectionView
//
//  Created by Henry Aguinaga on 2016-09-08.
//  Copyright © 2016 Henry Aguinaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var array: [String] = []
    var name: AnyObject? {
        get {
            return UserDefaults.standard.object(forKey: "name") as AnyObject?
        }
        set {
            UserDefaults.standard.set(newValue!, forKey: "name")
            
            UserDefaults.standard.synchronize()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        array = ["car1.jpg","car2.jpg","car3.png","car4.jpg","car5.png","car6.jpg","car1.jpg","car2.jpg","car3.png","car4.jpg","car5.png","car6.jpg","car1.jpg","car2.jpg","car3.png","car4.jpg","car5.png","car6.jpg","car1.jpg","car2.jpg","car3.png","car4.jpg","car5.png","car6.jpg"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: array[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        name = array[indexPath.row] as AnyObject?
    }


}

