//
//  ViewController.swift
//  New Project
//
//  Created by USER on 28/09/2020.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var coffeeShopNames = ["Iya Alamala Joint", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    var coffeeShopImages = ["iyalamala.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
     
    var coffeeShopLocation = ["Lagos, Nigeria", "Tokyo, Japan","Delhi, India","Shanghai, China","Mumbai, India","São Paulo, Brazil","Beijing, China","Mexico City, Mexico","Osaka, Japan","Lagos, Nigeria", "Tokyo, Japan","Delhi, India","Shanghai, China","Mumbai, India","São Paulo, Brazil","Beijing, China","Mexico City, Mexico","Osaka, Japan","Lagos, Nigeria", "Tokyo, Japan","Delhi, India","Shanghai, China","Mumbai, India","São Paulo, Brazil"]

    var coffeeShopType = ["Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries","Restaurant", "coffee shop", "tea shop", "pastries"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeeShopNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        
        let ourCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)         as! FoodTableViewCell
        
        ourCell.cofeeShopName.text = coffeeShopNames[indexPath.row]
        ourCell.coffeeShopLocation.text = coffeeShopLocation[indexPath.row]
        ourCell.coffeeShopType.text = coffeeShopType[indexPath.row]
        ourCell.imageView?.image = UIImage(named: coffeeShopImages[indexPath.row])
        
        ourCell.imageView?.layer.cornerRadius = 40
        ourCell.imageView?.clipsToBounds = true
        return ourCell
    }
    

}

