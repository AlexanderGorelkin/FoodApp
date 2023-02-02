//
//  DishPortraitCollectionViewCell.swift
//  FoodApp
//
//  Created by Александр Горелкин on 03.02.2023.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    
    
    
    
    @IBOutlet weak var titileLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    static let identifier = String(describing: DishPortraitCollectionViewCell.self)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setup(_ dish: Dish) {
        titileLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
        
        
    }

}
