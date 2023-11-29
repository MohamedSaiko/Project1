//
//  ViewController.swift
//  project1
//
//  Created by Mohamed Sayed on 28.11.23.
//

import UIKit

class ViewController: UITableViewController {
    var fileManager = Manager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photos"
        navigationController?.navigationBar.prefersLargeTitles = true
        fileManager.manage()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fileManager.pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pictureCell = tableView.dequeueReusableCell(withIdentifier: pictureIdentifier, for: indexPath)
        var content = pictureCell.defaultContentConfiguration()
        content.text = fileManager.pictures.sorted()[indexPath.row]
        pictureCell.contentConfiguration = content
        return pictureCell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailViewController = storyboard?.instantiateViewController(withIdentifier: detailViewControllerIdentifier) as? DetailViewController {
            detailViewController.selectedImage = fileManager.pictures.sorted()[indexPath.row]
            detailViewController.pictureIndex = indexPath.row + 1
            detailViewController.picturesCount = fileManager.pictures.count
            navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}
