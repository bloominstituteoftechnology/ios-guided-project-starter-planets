//
//  PlanetController.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation
//handles the data for the model
class PlanetController {
    var planets: [Planet]  {
        var temp = [
            Planet(name: "Mercury", imageName: "mercury"),
            Planet(name: "Venus", imageName: "venus"),
            Planet(name: "Earth", imageName: "earth"),
            Planet(name: "Mars", imageName: "mars"),
            Planet(name: "Jupiter", imageName: "jupiter"),
            Planet(name: "Saturn", imageName: "saturn"),
            Planet(name: "Uranus", imageName: "uranus"),
            Planet(name: "Neptune", imageName: "neptune"),
        ]
        
        let shouldShowPluto = UserDefaults.standard.bool(forKey: String.shouldShowPlutoKey)
        if shouldShowPluto {
            temp.append(Planet(name: "Pluto", imageName: "pluto"))
        }
        return temp
    }
}
