//
//  generic.swift
//  collwithtbl
//
//  Created by R on 06/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import Foundation
import UIKit



extension UIImageView {
    class func Myimg() -> UIImageView {
            let img = UIImageView()
            img.layer.cornerRadius = 3
            img.clipsToBounds = true
            img.contentMode = .scaleAspectFill
            img.translatesAutoresizingMaskIntoConstraints = false
            return img
        
    }
}

extension UIView {
    class func MyView() -> UIView{
       
            let img = UIView()
            img.layer.cornerRadius = 7
            img.clipsToBounds = true
            img.translatesAutoresizingMaskIntoConstraints = false
            return img
    }
}

extension UILabel {
    class func Mylbl() -> UILabel {
        
           let lbl = UILabel()
            lbl.textColor  = .lightGray
            lbl.translatesAutoresizingMaskIntoConstraints = false
            lbl.textAlignment = .center
            lbl.layer.cornerRadius = 3
            return lbl
      
    }
}


extension UICollectionView {
    class func MyCol() -> UICollectionView{
   
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.itemSize = CGSize(width: 400, height: 140)
            layout.minimumLineSpacing = 5
            layout.minimumInteritemSpacing = 5
            
            let col = UICollectionView(frame:.zero, collectionViewLayout: layout)
            col.translatesAutoresizingMaskIntoConstraints = false
            col.register(colcll.self, forCellWithReuseIdentifier: colcll.id)
            col.isScrollEnabled = true
            col.isPagingEnabled = true
            col.showsHorizontalScrollIndicator = false
            col.showsVerticalScrollIndicator = false
            col.backgroundColor = .white
            return col
      
    }
}


extension String {

    static func fontAwesomeString(name: String) -> String {

        switch name {
        case "fa-close":
           return "\u{f00d}"
        case "fa-angle-left":
            return"\u{f104}"
        default:
            return"\u{f556}"
        }
     }
}
