/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

// this program is a word adventure that lets the user explore two solar systems


import Foundation

// function gets input from the user
private func responsetoprompt(prompt: String) -> String {
    print(prompt)
    return getln()
}

// a dictionary of all the planets in the first solar system
let planetData = ["mercury": "A very hot planet, closest to the sun",
                  "venus": "Second planet from the sun, Poisonus atmosphere",
                  "earth": "third planet from the sun. Home sweet home",
                  "mars": "The red planet. Matt Damon was stuck there",
                  "jupiter": "The largest planet in the solar system. A gas giant",
                  "saturn": "The planet with the rings",
                  "uranus": "insert joke here. who named... nice brian, nice...",
                  "neptune": "A very cold planet, furthest from the sun"]

// a dictionary of all the planets in the second solar system
let planetData2 = ["python": "An old planet who is simple and can be used in many different ways", "swift": "A new planet, who is used to satisfy the queen apple"]

// name of the first solar system
let systemName = "Solar System"

// defines what a planet is in the first solar system
var planets = planetData.map { name, description in
    Planet(name: name, description: description)
}

// name of second solar system
let systemName2 = "New Solar System"

// defines what a planet is in the first solar system
let planets2 = planetData2.map { name, description in
    Planet(name: name, description: description)
}


// lets the user choose what solar system they sould like to visit
let system = responsetoprompt(prompt: "what system would you like to visit? (solar system/new solar system")
if system == "solar system" {
    let solarSystem = PlanetarySystem(name: systemName, planets: planets  )
    let adventure = SpaceAdventure(planetarySystem: solarSystem)
    adventure.start()
} else if system == "new solar system" {
    let solarSystem = PlanetarySystem(name: systemName2, planets: planets2  )
    let adventure = SpaceAdventure(planetarySystem: solarSystem)
    adventure.start()
} else { print("sorry there are no solar systems with that name")}
    


