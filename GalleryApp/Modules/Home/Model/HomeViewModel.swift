//
//  HomeViewModel.swift
//  GalleryApp
//
//  Created by Admin on 26.11.2020.
//

import UIKit.UIView

struct HomeViewModel {
    
    let rows: [Row]
    
    enum Row {
        
        case home(configurator: CollectionCellConfiguratorProtocol)
        
        var configurator: CollectionCellConfiguratorProtocol {
            
            switch self {
                
            case let .home(configurator):
                
                return configurator
            }
        }
        
        var reuseId: String {
            return type(of: configurator).reuseId
        }
    }
}
