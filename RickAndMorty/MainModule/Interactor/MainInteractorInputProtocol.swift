//
//  MainInteractorInputProtocol.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation

// MARK: - Interacor Input (Interactor -> Presenter)
/// Отвечает за парсинг и создание экземпляра структуры SearchResponse
protocol MainInteractorInputProtocol: AnyObject {

    ///  Парсинг и получение данных из API
    /// - Parameter completion: SearchResponse - результат парсинга, Error - ошибка в случае ее возникнования
    func fetchData(completion: @escaping (Result<SearchResponse?, Error>) -> Void)
}
