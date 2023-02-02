//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Александр Горелкин on 02.02.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    @IBOutlet weak var shefsCollectionView: UICollectionView!
    
    
    
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "asdadad", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "dsfsgsfg", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "werwerw", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "xcvxcvxv", image: "https://picsum.photos/100/200"),
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "hello", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "hello", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "hello", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "hello", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "hello", description: "hello", image: "https://picsum.photos/100/200", calories: 123)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        popularCollectionView.delegate = self
        popularCollectionView.dataSource = self
        shefsCollectionView.delegate = self
        shefsCollectionView.dataSource = self
        
        registerCells()
        
    }
    
    private func registerCells() {
        
        
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        shefsCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
        
    }
    
    
    
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case shefsCollectionView:
            return populars.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(populars[indexPath.row])
            return cell
        case shefsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(populars[indexPath.row])
            return cell
            
            
        default:
            return UICollectionViewCell()
        }
        
    }
    
    
    
    
}
