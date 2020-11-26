//
//  ViewController.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit
import NeatLayout

protocol HomeViewInput: class {
    
}

final class HomeViewController: UIViewController {

    var presenter: HomeViewOutput?
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 8, right: 5)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.layer.cornerRadius = 6
        cv.clipsToBounds = true
        cv.backgroundColor = .gray
        cv.showsVerticalScrollIndicator = false
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        presenter?.viewIsReady()
    }

    private func setupSubviews() {
        view.backgroundColor = .green

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(cellTypes: [HomeCell.self])
        view.addSubview(collectionView)
        collectionView.autoPinEdgesToSuperviewEdges()
    }

}


extension HomeViewController: UICollectionViewDelegate {
    
}

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
}

extension HomeViewController: HomeViewInput {
    
}
