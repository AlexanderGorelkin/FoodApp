//
//  DishDetailViewController.swift
//  FoodApp
//
//  Created by Александр Горелкин on 03.02.2023.
//

import UIKit

class DishDetailViewController: UIViewController {

    
    @IBOutlet weak var dishDetailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var dish: Dish!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
    }
    
    
    private func populateView() {
        dishDetailImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formattedCalories
        
    }

    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
    }
}
