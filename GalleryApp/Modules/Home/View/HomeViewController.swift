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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }


}

extension HomeViewController: HomeViewInput {
    
}
