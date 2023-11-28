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
        fileManager.manage()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fileManager.pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pictureCell = tableView.dequeueReusableCell(withIdentifier: pictureIdentifier, for: indexPath)
        var content = pictureCell.defaultContentConfiguration()
        content.text = fileManager.pictures[indexPath.row]
        pictureCell.contentConfiguration = content
        return pictureCell
    }
}
