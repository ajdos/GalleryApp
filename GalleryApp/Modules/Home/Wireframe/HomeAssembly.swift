//
//  HomeAssembly.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit

final class HomeAssembly: Assembly {
    
    static func assembleModule() -> UIViewController {
        
        let view = HomeViewController()
        let router = HomeRouter(transition: view)
        
        let dataProvider = HomeDataProvider()
        let presenter = HomePresenter(dataProvider: dataProvider)
        
        let homeService = HomeServiceImp()
        let interactor = HomeInteractor(homeService: homeService)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        return view
    }
}
