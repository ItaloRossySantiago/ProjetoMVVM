//
//  StoryCardViewModel.swift
//  ProjetoMVVM
//
//  Created by Italo Rossy on 25/01/23.
//

import UIKit

class StoryCardViewModel {
    private var listStory: [Stories]
    
    init(listStory:[Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
                    
    func loudCurrentStory(indexPath:IndexPath) -> Stories {
        listStory[indexPath.row]
    }
    
}
