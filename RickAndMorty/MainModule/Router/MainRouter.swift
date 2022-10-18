//
//  MainRouter.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation
import UIKit

final class MainRouter: MainRouterInputProtocol {
    
    weak var viewController: UIViewController?

    init(_ controller: UIViewController){
        viewController = controller
    }
    
    func showCharacterDetail(on view: MainInputProtocol?, with detailInformation: DetailInformation?) {
        let detailView = ModuleBuilder.createDetailModule(character: detailInformation)
        viewController?.navigationController?.pushViewController(detailView, animated: true)
    }
}
