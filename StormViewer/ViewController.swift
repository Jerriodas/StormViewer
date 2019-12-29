//
//  ViewController.swift
//  StormViewer
//
//  Created by Jerry Gordillo on 29/12/19.
//  Copyright © 2019 JerriodasCorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
                }
            }
        }
    }


}

