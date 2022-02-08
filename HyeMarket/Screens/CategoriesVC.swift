//
//  CategoriesVC.swift
//  HyeMarket
//
//  Created by GGTECH LLC on 2/7/22.
//

import UIKit

class CategoriesVC: UIViewController {
    
    var collectionView: UICollectionView!
    var categoryArray: [Category] = []



    override func viewDidLoad() {
        super.viewDidLoad()
        downloadCategoriesFromFirebase { (allCategories) in
            print("completed download")
        }
//        createCategorySet()
        configureCollectionView()
        view.backgroundColor = . red 
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           
           loadCategories()
       }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createThreeColumnFlowLayout(in: view))
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .blue
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.reuseID)
    }
    
    //MARK: Download categories
        private func loadCategories() {
            
            downloadCategoriesFromFirebase { (allCategories) in

                self.categoryArray = allCategories
                self.collectionView.reloadData()
            }
        }


}

extension CategoriesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.reuseID, for: indexPath) as! CategoryCell

        let item = categoryArray[indexPath.row]
       // cell.usernameLabel.text = item.name
        cell.generateCell(item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let destVC = CategoryDetailsVC()
        let item = categoryArray[indexPath.row]
        destVC.category = item
        navigationController?.pushViewController(destVC, animated: true)
    }
    
    
    }






