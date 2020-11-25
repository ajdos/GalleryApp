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
        
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        return view
    }
}
