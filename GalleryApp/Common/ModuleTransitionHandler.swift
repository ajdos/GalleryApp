//
//  ModuleTransitionHandler.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit

protocol ModuleTransitionHandler: AnyObject {
    func push<ModuleType: Assembly>(with model: TransitionModel, openModuleType: ModuleType.Type)
    func push<ModuleType: Assembly>(moduleType: ModuleType.Type)
}

extension UIViewController: ModuleTransitionHandler {
    
    func push<ModuleType: Assembly>(with model: TransitionModel, openModuleType: ModuleType.Type) {
        let view = ModuleType.assembleModule(with: model)
        navigationController?.pushViewController(view, animated: true)
    }
    
    func push<ModuleType: Assembly>(moduleType: ModuleType.Type) {
        let view = ModuleType.assembleModule()
        navigationController?.pushViewController(view, animated: true)
    }
    
}

