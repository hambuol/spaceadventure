//
//  PlanetarySystem.swift
//  SpaceAdventure
//
//  Created by Oliver on 2/7/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

//defines the class for the planetarty system
class PlanetarySystem {
    
    let name: String
    let planets: [Planet]
    //take the name of the planets in the planetary system 
    init(name: String, planets: [Planet]){
        self.name = name
        self.planets = planets 
    }
    var randomPlanet: Planet? {
        if planets.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }
}
