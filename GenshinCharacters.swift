//
//  GenshinCharacters.swift
//  Wonders
//
//  Created by Yerlan Tleubayev on 12.07.2023.
//

import Foundation
import SwiftyJSON

struct GenshinCharacters{
    var name = ""
    var image = ""
    var element = ""
    var region = ""
    var weapon = ""
    
    init (json: JSON) {
        if let item = json["characterName"].string {
            name = item
        }
    if let item = json["characterImage"].string {
        image = item
    }
    if let item = json["characterElement"].string {
        element = item
    }
    if let item = json["characterRegion"].string {
        region = item
    }
    if let item = json["characterWeapon"].string {
        weapon = item
}
    }
    }
                      
