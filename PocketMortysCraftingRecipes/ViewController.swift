//
//  ViewController.swift
//  PocketMortysCraftingRecipes
//
//  Created by Zac Holland on 11/26/17.
//  Copyright © 2017 Appdojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        findRecipe(item: "Morty Manipulator Chip")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let items = [
        "Morty Manipulator Chip",
        "Serum",
        "Great Serum",
        "Sensational Serum",
        "Pure Serum",
        "Halzinger",
        "Pure Halzinger",
        "Poison Cure",
        "Paralyze Cure",
        "Pure Curum",
        "Plutonic Rock",
        "Pure Plutonic Rock",
        "Mr. Meeseeks Box",
        "Courier Flap",
        "Attack Mega Seed",
        "Defense Mega Seed",
        "Speed Mega Seed",
        "Level Up Mega Seed",
        "Blips and Chitz Coupon",
        "Battery",
        "Supercharged Battery",
        "Microverse Battery",
        "Fleeb",
        "Purified Fleeb",
        "Bacteria Cell",
        "Mutant Bacteria Cell",
        "Circuit Board",
        "Motherboard",
        "Dark Matter Ball",
        "Tin Can",
        "Cable",
        "Turbulent Juice Tube",
        "Dog Collar",
        "Love Potion",
        "Robot",
        "Butter Robot",
        "Time Crystal",
        "Time Stabilizing Collar",
        "Gwendolyn Doll",
        "Interdimensional Cable Box",
        "Interdimensional Goggles",
        "IQ Enhancing Goggles",
        "Roy VR Headset"]
    
    var recipes: [String: [String]] =
        ["Morty Manipulator Chip" : ["Supercharged Battery", "Circuit Board", "Tin Can"]]
    
    func findRecipe(item: String) {
        switch recipes.index(forKey: item) {
        case nil:
            print("No recipe!")
        default:
            let recipe = recipes[item]
            print(recipe)
            resultImg.image = UIImage(named: item)
        }
        
    }


}

