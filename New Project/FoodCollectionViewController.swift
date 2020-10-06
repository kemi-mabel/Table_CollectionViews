//
//  FoodCollectionViewController.swift
//  New Project
//
//  Created by USER on 03/10/2020.
//

import UIKit

private let reuseIdentifier = "Cell"

class FoodCollectionViewController: UICollectionViewController {
    
//    var coffeeShopNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
//
//    var coffeeShopImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
    
    var coffeeShops:[CoffeeShop] = [
        CoffeeShop(name: "Iya Alamala Joint", image: "iyalamala.jpg", location: "Lagos, Nigeria", type: "Restaurant"),
        CoffeeShop(name: "Homei", image: "homei.jpg", location: "Tokyo, Japan", type: "coffee shop"),
        CoffeeShop(name: "Teakha", image: "teakha.jpg", location: "Delhi, India", type: "Tea shop"),
        CoffeeShop(name: "Cafe Loisl", image: "cafeloisl.jpg", location: "Paris", type: "Austrian / Causual Drink"),
        CoffeeShop(name: "Petite Oyster", image: "petiteoyster.jpg", location: "Sydney", type:  "French"),
        CoffeeShop(name:  "For Kee Restaurant", image: "forkeerestaurant.jpg", location: "Stockholm", type: "Bakery"),
        CoffeeShop(name: "Po's Atelier", image: "posatelier.jpg", location: "Dublin", type: "Bakery"),
        CoffeeShop(name: "Bourke Street Bakery", image: "bourkestreetbakery.jpg", location: "Brussel", type: "Chocolate"),
        CoffeeShop(name: "Haigh's Chocolate", image: "haighschocolate.jpg", location: "New York", type: "American / Seafood"),
        CoffeeShop(name: "Palomino Espresso", image: "palominoespresso.jpg", location: "London", type: "British"),
        CoffeeShop(name: "Upstate", image: "upstate.jpg", location: "Shanghai", type: "Chinese"),
        CoffeeShop(name: "Traif", image: "traif.jpg", location: "California", type: "American"),
        CoffeeShop(name: "Graham Avenue Meats", image: "grahamavenuemeats.jpg", location: "Dallas", type: "Spanish"),
        CoffeeShop(name: "Waffle & Wolf", image: "wafflewolf.jpg", location: "Toronto", type: "Thai"),
        CoffeeShop(name: "Five Leaves", image: "fiveleaves.jpg", location: "Kinsasha", type: "African"),
        CoffeeShop(name: "Cafe Lore", image: "cafelore.jpg", location: "Cape town", type: "British"),
        CoffeeShop(name: "Confessional", image: "confessional.jpg", location: "Milan", type: "Italian"),
        CoffeeShop(name: "Barrafina", image: "barrafina.jpg", location: "Barcelona", type: "Spanish"),
        CoffeeShop(name: "Donostia", image: "donostia.jpg", location: "Hanoi", type: "Vietnamese"),
        CoffeeShop(name: "Royal Oak", image: "royaloak.jpg", location: "Brisbane", type: "COriental"),
        CoffeeShop(name: "CASK Pub and Kitchen", image:  "caskpubkitchen.jpg", location: "Tokyo", type: "Japanese")
    ]

    
    @IBOutlet weak var collectionview: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
     
    */
    
    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return coffeeShops.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FoodCollectionViewCell

        // Configure the cell
       
        cell.CoffeeShopNames.text = coffeeShops[indexPath.item].name
        cell.coffeeShopImage.image = UIImage(named: coffeeShops[indexPath.item].image)
        
//        cell.CoffeeShopNames.text = coffeeShopNames[indexPath.item]
//        cell.coffeeShopImage.image = UIImage(named: coffeeShopImages[indexPath.item])
//        cell.imageView?.layer.cornerRadius = 40
//        cell.imageView?.clipsToBounds = true
    
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//                We created an instance of class CoffeeShop in DetailViewController,
//                we need something to hold CoffeeShop Data because  that is
//                what we are sending in Prepare for segue
//        if let destination2 = segue.destination as? Detail12ViewController{
//
//        destination2.shops = coffeeShops[(collectionview.indexPathsForSelectedItems)]
//         collectionview.deselectRow(at: collectionview.indexPathForSelectedRow!, animated: true)
                
        if let destination = segue.destination as? Detail12ViewController,
                   let index = collectionview.indexPathsForSelectedItems?.first {
                destination.shopes = coffeeShops[index.row]
        }

//         let destination = [segue, Detail12ViewController()] {
//        destination.shops = coffeeShops[(collectionview.indexPathsForSelectedItems?.first)]
//            collectionview.deselectItem(at: collectionview.indexPathsForSelectedItems, animated: true)
//        }
//
//    }

        
            
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

    

    }
