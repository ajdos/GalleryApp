//
//  ViewController.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit

protocol HomeViewInput: class {
    
}

final class HomeViewController: UIViewController {

    var presenter: HomeViewOutput?
    
    private var collectionView = UICollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewIsReady()
        setupSubviews()
    }

    private func setupSubviews() {
        view.backgroundColor = .green

    }

}

extension HomeViewController: HomeViewInput {
    
}
