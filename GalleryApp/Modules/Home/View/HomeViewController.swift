//
//  ViewController.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit
import NeatLayout

protocol HomeViewInput: class {
    func update(viewModel: HomeViewModel)
}

final class HomeViewController: UIViewController {

    // MARK: - Properties

    var presenter: HomeViewOutput?
    
    private var viewModel: HomeViewModel?
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 8, right: 5)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.layer.cornerRadius = 6
        cv.clipsToBounds = true
        cv.backgroundColor = .white
        cv.showsVerticalScrollIndicator = false
        return cv
    }()
    
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupSubviews()
        presenter?.viewIsReady()
    }

    
    // MARK: - Draw

    private func setupSubviews() {
        view.backgroundColor = .green

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(cellTypes: [HomeCell.self])
        view.addSubview(collectionView)
        collectionView.autoPinEdgesToSuperviewEdges()
    }

    private func setupNavigationBar() {
        navigationItem.title = "Галлерея"
        navigationController?.navigationBar.barTintColor = .green
    }
}


// MARK: - UICollectionViewDelegate
extension HomeViewController: UICollectionViewDelegate {
    
}


// MARK: - UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.rows.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let row = viewModel?.rows[indexPath.row] else {
            assertionFailure("Failed to init cell in \(className)")
            return UICollectionViewCell()
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: row.reuseId, for: indexPath)
        row.configurator.configure(cell: cell)
        return cell
    }
    
}


// MARK: - UICollectionViewDelegateFlowLayout
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: InterfaceUtils.screenWidth - 20, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}


// MARK: - HomeViewInput
extension HomeViewController: HomeViewInput {
    
    func update(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        collectionView.reloadData()
    }

}
