//
//  Planet.swift
//  SpaceAdventure
//
//  Created by Oliver on 2/7/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

// defines the class for a planet
class Planet{
    
    let name: String
    let description : String
    // says the planet has a name and description
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
