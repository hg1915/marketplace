//
//  CategoryDetailsVC.swift
//  HyeMarket
//
//  Created by GGTECH LLC on 2/7/22.
//


import UIKit

class CategoryDetailsVC: UIViewController {
    
  
    
    let tableView = UITableView()
    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTableView()
        print(category?.name)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
     //   title = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
    
        let infoButton = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(infoTapped))
           self.navigationItem.rightBarButtonItem  = infoButton
       
    }
    
    @objc func infoTapped(){
//        if favorites.isEmpty {
//            presentVaroAlert(title: "✅", message: "Favorites will show up here. Go find some favs!", buttonTitle: "Ok")
//        }else {
//        }
//        presentVaroAlert(title: "✅", message: "Swipe left to delete from favorites", buttonTitle: "Ok")
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.rowHeight = 80
        tableView.delegate = self
        tableView.dataSource = self
        tableView.removeExcessCells()
        tableView.register(CategoryDetailCell.self, forCellReuseIdentifier: CategoryDetailCell.reuseID)
    }
    
}


extension CategoryDetailsVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryDetailCell.reuseID) as! CategoryDetailCell
      //  let favorite = favorites[indexPath.row]
        cell.movieTitleLabel.text = "item1item1"
        cell.priceLabel.text = "$4,000"
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let favorite = favorites[indexPath.row]
//        let destVC = FavoritesDetailVC()
//        destVC.set(title: favorite.title, imagePath: favorite.posterPath)
//        navigationController?.pushViewController(destVC, animated: true)
//    }
    
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        guard editingStyle == .delete else { return }
//
//        PersistenceManager.updateWith(favorite: favorites[indexPath.row], actionType: .remove) { [weak self] error in
//            guard let self = self else { return }
//            guard let error = error else {
//                self.favorites.remove(at: indexPath.row)
//                tableView.deleteRows(at: [indexPath], with: .left)
//                return
//            }
//
//            DispatchQueue.main.async {
//                print(error.localizedDescription)
//
//            }
//        }
//    }
  
}

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    

    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
