//
//  LatestCollectionCellViewModel.swift
//  Unsplah_Clone
//
//  Created by JungpyoHong on 5/10/21.
//

import UIKit

protocol LatestCollectionCellViewModelProtocol {
    var imageView: String { get }
    var title: String { get }
    var author: String { get }
    var htmlLink: String { get }
}

class LatestCollectionCellViewModel: LatestCollectionCellViewModelProtocol {
    let latestPhoto: LatestPhoto
    
    init(latestPhoto: LatestPhoto) {
        self.latestPhoto = latestPhoto
    }
    
    var imageView: String {
        latestPhoto.urls.thumb ?? ""
    }
    
    var title: String {
        latestPhoto.description?.capitalized ?? " "
    }
    
    var author: String {
        latestPhoto.user.name ?? ""
    }
    var htmlLink: String {
        latestPhoto.links.html
    }
}
