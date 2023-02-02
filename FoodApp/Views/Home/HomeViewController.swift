//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Александр Горелкин on 02.02.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "asdadad", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "dsfsgsfg", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "werwerw", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "xcvxcvxv", image: "https://picsum.photos/100/200"),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        registerCells()

    }
    
    private func registerCells() {
        
        
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
    }
    


}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        
        cell.setup(categories[indexPath.row])
        
        return cell
    }
    
    
    
    
}
