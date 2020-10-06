//
//  DetailviewController.swift
//  New Project
//
//  Created by USER on 05/10/2020.
//

import UIKit

class DetailviewController: UIViewController {

    @IBOutlet weak var coffeeShopImage: UIImageView!
    
    @IBOutlet weak var coffeeShopName: UILabel!

    @IBOutlet weak var coffeeShopType: UILabel!
    
    @IBOutlet weak var coffeeShopLocation: UILabel!
    
    //To hold our incoming data
    var shops: CoffeeShop!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //When the view loads, we will make use of it here
        self.coffeeShopImage.image = UIImage(named: shops.image)
        self.coffeeShopName.text = shops.name
        self.coffeeShopType.text = shops.type
        self.coffeeShopLocation.text = shops.location

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
