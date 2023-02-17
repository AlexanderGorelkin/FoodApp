//
//  DishDetailViewController.swift
//  FoodApp
//
//  Created by Александр Горелкин on 03.02.2023.
//

import UIKit
import ProgressHUD

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
        
        guard let name = textField.text?.trimmingCharacters(in: .whitespaces), !name.isEmpty else {
            ProgressHUD.showError("Мне нужно твое имя")
            return
        }
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Ваш заказ получен👨‍🍳")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
        
    }
}
