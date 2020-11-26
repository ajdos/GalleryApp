//
//  HomeDataProvider.swift
//  GalleryApp
//
//  Created by Admin on 26.11.2020.
//

import UIKit

protocol HomeDataProviderInput {
    func createViewModel(data: [ImageModel]) -> HomeViewModel
}

final class HomeDataProvider: HomeDataProviderInput {
    
    // MARK: - Typealiases
    
    typealias HomeCellConfigurator = CollectionCellConfigurator<HomeCell, HomeCell.Model>
    
    
    // MARK: - HomeProviderInput
    
    func createViewModel(data: [ImageModel]) -> HomeViewModel {
        
        var rows: [HomeViewModel.Row] = []
        
        data.forEach { rows.append(.home(configurator: HomeCellConfigurator(item: $0.downloadUrl,
                                                                            size: CGSize(width: 375,
                                                                                         height: 250))))}
        
        return HomeViewModel(rows: rows)
    }
}

