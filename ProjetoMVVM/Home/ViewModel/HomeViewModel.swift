//
//  HomeViewModel.swift
//  ProjetoMVVM
//
//  Created by Italo Rossy on 24/01/23.
//

import UIKit

class HomeViewModel {
    
    private var story = [
        Stories(image: "img1", userName: "Add Story"),
        Stories(image: "img2", userName: "Otavio"),
        Stories(image: "img3", userName: "Luisa"),
        Stories(image: "img4", userName: "Luciana"),
        Stories(image: "img5", userName: "Pedro"),
        Stories(image: "img6", userName: "Isabelly"),
        Stories(image: "img7", userName: "Bino")
    ]
    
    public var getListStory: [Stories]{
        story
    }
    
    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
          return  CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120 , height: frame.height)
        }
            
    }
    
}
