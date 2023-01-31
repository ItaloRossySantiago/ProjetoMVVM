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
    
    private var posts = [
        Posts(profileImage: "img2", userName: "Jack", postImage: "post1"),
        Posts(profileImage: "img4", userName: "Samuel", postImage: "pos2"),
        Posts(profileImage: "img3", userName: "Carolina", postImage: "post3"),
        Posts(profileImage: "img6", userName: "Bino", postImage: "post4"),
    ]
    
    public var getListPost: [Posts]{
        posts
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
