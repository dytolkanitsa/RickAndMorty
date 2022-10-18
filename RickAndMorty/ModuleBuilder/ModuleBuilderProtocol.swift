//
//  ModuleBuilderProtocol.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation
import UIKit

/// Создание контроллеров
protocol ModuleBuilderProtocol: AnyObject {
    /// Создание главного ViewController
    /// - Returns: MainController
    static func createMainModule() -> UIViewController
    /// Создание ViewController с детальной информацией о персонаже
    /// - Parameter character: детальная информация об персонаже
    /// - Returns: DetailController
    static func createDetailModule(character: DetailInformation?) -> UIViewController
    /// Создание ViewController с информацией о разработике
    /// - Returns: InformationController
    static func createInformationModule() -> UIViewController
    ///  Создание  TabBar контроллера
    /// - Returns: TabBarController
    static func createTabBar() -> UITabBarController
}
