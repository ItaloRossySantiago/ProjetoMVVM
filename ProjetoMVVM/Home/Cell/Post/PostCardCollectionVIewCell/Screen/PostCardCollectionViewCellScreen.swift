//
//  PostCardCollectionViewCellScreen.swift
//  ProjetoMVVM
//
//  Created by Italo Rossy on 30/01/23.
//

import UIKit

class PostCardCollectionViewCellScreen: UIView {

    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsVerticalScrollIndicator = false
        //TO DO: REGISTER
        
        cv.backgroundColor = .clear
        return cv
    }()
    
    
    public func configProtocolsCollectionView(delegate:UICollectionViewDelegate, dataSource:UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.pin(to: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
