//
//  ViewController.swift
//  RevenueCatDemo
//
//  Created by Shilpa Joy on 2025-02-15.
//

import UIKit
import RevenueCat
import RevenueCatUI

class RecipeViewController: UIViewController {

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var saveRecipeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImageView.layer.cornerRadius = 5
        saveRecipeButton.layer.cornerRadius = 10
        navigationItem.title = "Recipes"
       
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
   
    @IBAction func saveRecipe(_ sender: Any) {
        let controller = PaywallViewController()
            controller.delegate = self
            present(controller, animated: true, completion: nil)
    }
}

extension RecipeViewController: PaywallViewControllerDelegate {

    func paywallViewController(_ controller: PaywallViewController,
                               didFinishPurchasingWith customerInfo: CustomerInfo) {
    }
}

