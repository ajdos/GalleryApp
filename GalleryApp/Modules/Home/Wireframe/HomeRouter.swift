//
//  HomeRouter.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import Foundation

protocol HomeRouterInput {
    
}

final class HomeRouter {
    
    weak var transition: ModuleTransitionHandler?
    
    init(transition: ModuleTransitionHandler) {
        self.transition = transition
    }
    
}

extension HomeRouter: HomeRouterInput {
    
}
