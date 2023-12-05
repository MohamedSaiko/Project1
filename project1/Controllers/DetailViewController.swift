//
//  DetailViewController.swift
//  project1
//
//  Created by Mohamed Sayed on 28.11.23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var pictureIndex = 0
    var picturesCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Picture \(pictureIndex) of \(picturesCount)"
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
