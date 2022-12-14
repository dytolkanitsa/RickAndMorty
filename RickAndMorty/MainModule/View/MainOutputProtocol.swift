//
//  MainOutputProtocol.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation

// MARK: - View Output (Presenter -> View)
/// Протокол отвечает за передачу необходимой информации Main view для отображения в отдельной ячейке, создание и передачу в роутер экземпляра структуры с информацией о персонаже при нажатии на ячейку
protocol MainOutputProtocol: AnyObject {
    
    func viewDidLoad()
    /// Отвечает за логику нажатия на отдельную ячеку, создает экземпляр структуры с информацией об выбранном персонаже
    /// - Parameter indexPath: индекс ячейки, на которую нажали
    func tableCellTapped(_ indexPath: IndexPath)
}
