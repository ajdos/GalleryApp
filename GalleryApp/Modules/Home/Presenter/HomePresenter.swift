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
    
    // MARK: - Dependency

    weak var view: HomeViewInput?
    var interactor: HomeInteractorInput?
    var router: HomeRouterInput?
    private let dataProvider: HomeDataProviderInput
    
    
    // MARK: - Properties

    private var cacheModel: [ImageModel]?
    private var pagination: [String: Any] = [:]
    
    
    // MARK: - Init

    init(dataProvider: HomeDataProviderInput) {
        self.dataProvider = dataProvider
    }
    
}


// MARK: - HomeViewOutput
extension HomePresenter: HomeViewOutput {
    
    func viewIsReady() {
        interactor?.getImages(pagination: pagination)
    }
    
}


// MARK: - HomeInteractorOutput
extension HomePresenter: HomeInteractorOutput {
    
    func imagesLoaded(data: [ImageModel]) {
        cacheModel = data
        let viewModel = dataProvider.createViewModel(data: data)
        view?.update(viewModel: viewModel)
    }
    
    func errorLoaded() {
        
    }
    
}
