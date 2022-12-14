//
//  InformationPresenter.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import UIKit

final class InformationPresenter: InformationOutputProtocol {
    
    weak var view: InformationInputProtocol?
    
    init(view: InformationInputProtocol) {
        self.view = view
    }
    
    func viewDidLoad() {
        self.view?.showLabelText()
    }
    
    func showImageIndex(_ indexPath: IndexPath, _ numberOfCell: Int) {
        view?.showNumberOfCell(index: indexPath.row, numberOfCells: numberOfCell)
    }
}
