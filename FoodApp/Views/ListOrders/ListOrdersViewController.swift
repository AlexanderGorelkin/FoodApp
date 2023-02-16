//
//  ListOrdersViewController.swift
//  FoodApp
//
//  Created by Александр Горелкин on 16.02.2023.
//

import UIKit

class ListOrdersViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id", name: "heloo wrold", dish: .init(id: "id1", name: "hello", description: "hello", image: "https://picsum.photos/100/200", calories: 123))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCells()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    

}
extension ListOrdersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(orders[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contoller = DishDetailViewController.instantiate()
        contoller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(contoller, animated: true)
    }
    
    
}
