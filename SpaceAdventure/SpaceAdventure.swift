//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Oliver on 2/6/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

// defines the space adventure class
class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    
    init(planetarySystem: PlanetarySystem){
        self.planetarySystem = planetarySystem
        
    }
    
    // function starts the space adventure
    func start(){
        displayintroduction()
        greetadventurer()
        if (!planetarySystem.planets.isEmpty) {
            print("lets go on an adventure")
            determinedestination()
        }
    }
    // function dislays the introduction to the user
    private func displayintroduction() {
        print("welcome to the \(planetarySystem.name)")
        print("there are \(planetarySystem.planets.count) planets to explore.")
    }
    
    // function gets input from the user
    private func responsetoprompt(prompt: String) -> String {
        print(prompt)
        return getln()
    }
    // function greets the user
    private func greetadventurer() {
        let name = responsetoprompt(prompt:"whats is your name")
        print("nice to meet you, \(name). My name is hamburger.")    }
    // function gets the decision where the user wants to go
    private func determinedestination(){
        var decision = ""
        
        while !(decision == "Y" || decision == "N") {
            decision = responsetoprompt(prompt: "shall i randomly choose a planet to go to? Y/N ")
            if decision == "Y" {
                if let planet = planetarySystem.randomPlanet {
                    visit(planetName: planet.name)
                } else {
                    print("sorry, but there are no planets to visit in this system.")
                }
            } else if decision == "N" {
                let planetName = responsetoprompt(prompt: "ok name the planet you would like to visit")
                visit(planetName: planetName)
            } else {
                print("sorry id did not get that")
            }
        }
    }
    // function takes user on adventure to planet 
    private func visit(planetName: String) {
        print("Traveling to \(planetName)...")
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Arived at \(planet.name). \(planet.description)")
            }
        }
        
    }
    
    
    
    
}
