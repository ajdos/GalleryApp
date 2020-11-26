//
//  HomeService.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import Foundation
import Alamofire

protocol HomeService {
    func getImages(pagination: [String: Any]?, ifSuccess: @escaping ([ImageModel]) -> (), ifFailure: @escaping () -> ())
}

final class HomeServiceImp: HomeService {
    
    func getImages(pagination: [String: Any]?, ifSuccess: @escaping ([ImageModel]) -> (), ifFailure: @escaping () -> () ) {
    let urlString = "https://picsum.photos/v2/list"
        AF.request(urlString, method: .get, parameters: pagination).response(completionHandler:
            { (response) in
            switch response.result {
           
                case .success:
                    if let data = response.data {
                        do {
                            let result = try JSONDecoder().decode([ImageModel].self, from: data)
                            ifSuccess(result)
                        } catch {
                            ifFailure()
                        }
                    } else {
                        ifFailure()
                    }
                case .failure:
                    ifFailure()
                    print("ERROR")
                }
        })
    }

}
