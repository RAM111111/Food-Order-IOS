//
//  VCCell.swift
//  Food-Order
//
//  Created by R on 15/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit



class VCCell: UITableViewCell {
    
    static let id = "VCCell"
    
    let vi = UIView.MyView()

    
    let lbl = UILabel.Mylbl()
    
    
    let img = UIImageView.Myimg()
    
        

    


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupvi()
        setuplbl()
        setupimg()

    }
    
    func setupvi(){
        contentView.addSubview(vi)
        vi.topAnchor.constraint(equalTo:contentView.topAnchor, constant:10).isActive = true
        vi.bottomAnchor.constraint(equalTo:contentView.bottomAnchor, constant:-10).isActive = true
        vi.trailingAnchor.constraint(equalTo:contentView.trailingAnchor, constant:-10).isActive = true
        vi.leadingAnchor.constraint(equalTo:contentView.leadingAnchor, constant:10).isActive = true
        
    }
    
    func setuplbl(){
        lbl.textAlignment = .right
        lbl.textColor = .darkGray
        vi.addSubview(lbl)
        lbl.topAnchor.constraint(equalTo:vi.topAnchor).isActive = true
        lbl.bottomAnchor.constraint(equalTo:vi.bottomAnchor).isActive = true
        lbl.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        lbl.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setupimg(){
        img.alpha = 0.1
        vi.addSubview(img)
        img.centerYAnchor.constraint(equalTo:vi.centerYAnchor).isActive = true
        img.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        img.widthAnchor.constraint(equalToConstant: 16).isActive = true
        img.heightAnchor.constraint(equalToConstant: 16).isActive = true
    }

    
     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
}


