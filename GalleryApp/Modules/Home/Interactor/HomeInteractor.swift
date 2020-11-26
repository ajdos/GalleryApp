//
//  HomeInteractor.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import Foundation

protocol HomeInteractorInput {
    func getImages(pagination: [String: Any]?)
}

final class HomeInteractor {
   
    // MARK: - Dependency

    weak var presenter: HomeInteractorOutput?
    private let homeService: HomeService
    
    
    // MARK: - Init

    init(homeService: HomeService) {
        self.homeService = homeService
    }
    
}


// MARK: - HomeInteractorInput
extension HomeInteractor: HomeInteractorInput {
    
    func getImages(pagination: [String: Any]?) {
        homeService.getImages(pagination: pagination, ifSuccess: { [unowned self] (result) in
            
            self.presenter?.imagesLoaded(data: result)
        }, ifFailure: {
            
            self.presenter?.errorLoaded()
        })
    }
}
