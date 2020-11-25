//
//  HomeInteractor.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import Foundation

protocol HomeInteractorInput {
    
}

final class HomeInteractor {
   
    weak var presenter: HomeInteractorOutput?
}

extension HomeInteractor: HomeInteractorInput {
    
}
