//
//  DetailViewController.swift
//  Project1
//
//  Created by Iskandar Herputra Wahidiyat on 29/06/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    var imageNumber: Int?
    var totalImage: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //title = selectedImage
        if let imageNumber = imageNumber, let totalImage = totalImage {
            title = "Picture \(imageNumber) of \(totalImage)"
        }
        
        navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.hidesBarsOnTap = false
    }

}
