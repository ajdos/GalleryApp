//
//  HomePresenter.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import Foundation

protocol HomeViewOutput {
    func viewIsReady()
}

protocol HomeInteractorOutput: class {
    
}

final class HomePresenter {
    
    weak var view: HomeViewInput?
    var interactor: HomeInteractorInput?
    var router: HomeRouterInput?
}

extension HomePresenter: HomeViewOutput {
    
    func viewIsReady() {
        
    }

}

extension HomePresenter: HomeInteractorOutput {
    
}
