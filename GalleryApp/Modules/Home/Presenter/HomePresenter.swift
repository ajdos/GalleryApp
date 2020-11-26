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
    func imagesLoaded(data: [ImageModel])
    func errorLoaded()
}

final class HomePresenter {
    
    weak var view: HomeViewInput?
    var interactor: HomeInteractorInput?
    var router: HomeRouterInput?
    
    private var cacheModel: [ImageModel]?
    private var pagination: [String: Any] = [:]
}

extension HomePresenter: HomeViewOutput {
    
    func viewIsReady() {
        interactor?.getImages(pagination: pagination)
    }

}

extension HomePresenter: HomeInteractorOutput {
    
    func imagesLoaded(data: [ImageModel]) {
        print(data)
    }
    
    func errorLoaded() {
        
    }
    
}
