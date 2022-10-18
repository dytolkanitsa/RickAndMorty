//
//  TabBarPresenter.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import UIKit

final class TabBarPresenter: TabBarOutputProtocol {
    
    weak var controller: TabBarInputProtocol?
    
    init(controller: TabBarInputProtocol) {
        self.controller = controller
    }
}
