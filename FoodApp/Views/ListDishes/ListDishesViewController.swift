//
//  ListDishesViewController.swift
//  FoodApp
//
//  Created by Александр Горелкин on 16.02.2023.
//

import UIKit

class ListDishesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var category: DishCategory!
    
    var dishes: [Dish] = [
        .init(id: "id1", name: "name", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "name", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "name", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "name", description: "hello", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id2", name: "name", description: "hello", image: "https://picsum.photos/100/200", calories: 123)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        title = category.name
        registerCells()
    }

    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
    
}
extension ListDishesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contoller = DishDetailViewController.instantiate()
        contoller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(contoller, animated: true)
    }
    
}
