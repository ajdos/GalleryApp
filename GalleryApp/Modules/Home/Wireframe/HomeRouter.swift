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
    
    // MARK: - Properties

    weak var transition: ModuleTransitionHandler?
    
    
    // MARK: - Init

    init(transition: ModuleTransitionHandler) {
        self.transition = transition
    }
    
}


// MARK: - HomeRouterInput
extension HomeRouter: HomeRouterInput {
    
}
