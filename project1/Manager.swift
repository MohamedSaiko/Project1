//
//  Manager.swift
//  project1
//
//  Created by Mohamed Sayed on 28.11.23.
//

import Foundation

struct Manager {
    var pictures = [String]()
    
    mutating func manage() {
        let fm = FileManager.default
        let wrappedpath = Bundle.main.resourcePath
        guard let path = wrappedpath else {
            return
        }
        
        let wrappeditems = try? fm.contentsOfDirectory(atPath: path)
        guard let items = wrappeditems else {
            return
        }
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
}
