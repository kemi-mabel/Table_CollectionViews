//
//  Detail12ViewController.swift
//  New Project
//
//  Created by USER on 06/10/2020.
//

import UIKit

class Detail12ViewController: UIViewController {
    
    
    @IBOutlet weak var coffeeImage: UIImageView!
    
    @IBOutlet weak var cofeeName: UILabel!
    
    @IBOutlet weak var coffeeType: UILabel!
    
    @IBOutlet weak var coffeeLocation: UILabel!
    
    //To hold our incoming data
    var shopes: CoffeeShop!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //When the view loads, we will make use of it here
        self.coffeeImage.image = UIImage(named: shopes.image)
        self.cofeeName.text = shopes.name
        self.coffeeType.text = shopes.type
        self.coffeeLocation.text = shopes.location

    }
    

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


