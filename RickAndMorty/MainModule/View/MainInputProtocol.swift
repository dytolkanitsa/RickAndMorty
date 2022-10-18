//
//  MainInputProtocol.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation

// MARK: - View Input (View -> Presenter)
/// Протокол отвечает результат  успешного и неудачного выполнения парсинга API , отображение нового вью
protocol MainInputProtocol: AnyObject {
    
    /// Передает во вью массив CellData
    /// - Parameter cellData: массив CellData
    func display(cellData: [CellData])
    /// Перезагрузка табличных данных
    func reloadTable()
    /// Отображает ошибку в случае неудачного парсинга API
    /// - Parameter error: ошибка
    func showError(_ error: Error)
}
