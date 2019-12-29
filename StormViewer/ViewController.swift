//
//  ViewController.swift
//  StormViewer
//
//  Created by Jerry Gordillo on 29/12/19.
//  Copyright © 2019 JerriodasCorp. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileManager = FileManager.default
        let paths = Bundle.main.resourcePath
        
        guard let path = paths else { return }
        let items = try? fileManager.contentsOfDirectory(atPath: path)
        
        if let items = items {
            for item in items {
                if item.hasPrefix("nssl") {
                    //Load picture
                    pictures.append(item)
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}

