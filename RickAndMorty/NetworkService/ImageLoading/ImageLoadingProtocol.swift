//
//  ImageLoadingProtocol.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation
import UIKit

/// Отвечает за загрузку изображения по переданному url - адресу
protocol ImageLoadingProtocol {
    /// Загружает изображение из сети
    /// - Parameters:
    ///   - url: url адрес
    ///   - completion: UIImage - изображение, Error - ошибка
    func loadImage(from url: URL, completion: @escaping (Result<UIImage, Error>) -> Void)
}
