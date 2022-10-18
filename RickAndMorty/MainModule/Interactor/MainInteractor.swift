//
//  MainInteractor.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import UIKit

final class MainInteractor: MainInteractorInputProtocol {
    
    var output: MainOutputProtocol?
    var cellData: CellData?
    var detailInformation: DetailInformation?
    var response: SearchResponse?
    
    func fetchData(completion: @escaping (Result<SearchResponse?, Error>) -> Void) {
        let nerworkCharacterManager = APINetworkService()
        let urlString = "https://rickandmortyapi.com/api/character"
        nerworkCharacterManager.fetchRMCharacters(urlString: urlString) { [weak self] (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let searchResponse):
                    self?.response = searchResponse
                    completion(.success(self?.response))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
}
