//
//  CatsImages.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import Foundation
import UIKit

struct CatsImages {
    var catsImage: UIImage
    
    static func fetchCats() -> [CatsImages] {
        
        let firstImage = CatsImages(catsImage: UIImage(named: "cat3") ?? UIImage())
        let secondImage = CatsImages(catsImage: UIImage(named: "cat2") ?? UIImage())
        let thirdImage = CatsImages(catsImage: UIImage(named: "cat1") ?? UIImage())
        
        return [firstImage, secondImage, thirdImage]
    }
}
