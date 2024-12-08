//
//  ViewController.swift
//  ios-learn
//
//  Created by İsmail Faruk Kocademir on 2.12.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeImage(_ sender: Any) {
        imageView.image = UIImage(named: "2")
    }
    
}

