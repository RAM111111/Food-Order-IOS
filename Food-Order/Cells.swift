//
//  Cells.swift
//  collwithtbl
//
//  Created by R on 02/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit

class Cell1: UITableViewCell {
    
    static let id = "Cell1"
    
    let img = UIImageView.Myimg()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupimg()

    }
    
    func setupimg(){
        
        contentView.addSubview(img)
        img.topAnchor.constraint(equalTo:contentView.topAnchor, constant:10).isActive = true
        img.bottomAnchor.constraint(equalTo:contentView.bottomAnchor, constant:-10).isActive = true
        img.trailingAnchor.constraint(equalTo:contentView.trailingAnchor, constant:-10).isActive = true
        img.leadingAnchor.constraint(equalTo:contentView.leadingAnchor, constant:10).isActive = true
    }

    
     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
}

class Cell2: UITableViewCell {
    
    static let id = "Cell2"
    
    let vi = UIView.MyView()

    let img1 = UIImageView.Myimg()
    let img2 = UIImageView.Myimg()
    let img3 = UIImageView.Myimg()
    
    let lbl1 = UILabel.Mylbl()
    let lbl2 = UILabel.Mylbl()
    let lbl3 = UILabel.Mylbl()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupview()

    }
    
    func setupview(){

        contentView.addSubview(vi)

        vi.topAnchor.constraint(equalTo:contentView.topAnchor, constant:10).isActive = true
        vi.bottomAnchor.constraint(equalTo:contentView.bottomAnchor, constant:-10).isActive = true
        vi.trailingAnchor.constraint(equalTo:contentView.trailingAnchor, constant:-10).isActive = true
        vi.leadingAnchor.constraint(equalTo:contentView.leadingAnchor, constant:10).isActive = true

        setupimg()
        setuplbl()

    }

    func setupimg() {
        
        vi.addSubview(img1)
        vi.addSubview(img2)
        vi.addSubview(img3)

        img1.topAnchor.constraint(equalTo:vi.topAnchor).isActive = true
        img1.bottomAnchor.constraint(equalTo:vi.bottomAnchor,constant: -22).isActive = true
        img1.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        img1.widthAnchor.constraint(equalToConstant: 120).isActive = true
        img1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        img2.centerYAnchor.constraint(equalTo:vi.centerYAnchor).isActive = true
        img2.centerXAnchor.constraint(equalTo:vi.centerXAnchor).isActive = true
        img2.topAnchor.constraint(equalTo:vi.topAnchor).isActive = true
        img2.bottomAnchor.constraint(equalTo:vi.bottomAnchor,constant: -22).isActive = true
        img2.widthAnchor.constraint(equalToConstant: 120).isActive = true
        img2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        img3.topAnchor.constraint(equalTo:vi.topAnchor).isActive = true
        img3.bottomAnchor.constraint(equalTo:vi.bottomAnchor,constant: -22).isActive = true
        img3.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        img3.widthAnchor.constraint(equalToConstant: 120).isActive = true
        img3.heightAnchor.constraint(equalToConstant: 100).isActive = true

    }

    func setuplbl() {
        
        vi.addSubview(lbl1)
        vi.addSubview(lbl2)
        vi.addSubview(lbl3)

        lbl1.topAnchor.constraint(equalTo:img1.bottomAnchor).isActive = true
        lbl1.bottomAnchor.constraint(equalTo:vi.bottomAnchor).isActive = true
        lbl1.heightAnchor.constraint(equalToConstant: 10).isActive = true
        lbl1.trailingAnchor.constraint(equalTo: img1.trailingAnchor).isActive = true
        lbl1.leadingAnchor.constraint(equalTo: img1.leadingAnchor).isActive = true
        
        lbl2.topAnchor.constraint(equalTo:img2.bottomAnchor).isActive = true
        lbl2.bottomAnchor.constraint(equalTo:vi.bottomAnchor).isActive = true
        lbl2.heightAnchor.constraint(equalToConstant: 10).isActive = true
        lbl2.trailingAnchor.constraint(equalTo: img2.trailingAnchor).isActive = true
        lbl2.leadingAnchor.constraint(equalTo: img2.leadingAnchor).isActive = true
        
        lbl3.topAnchor.constraint(equalTo:img3.bottomAnchor).isActive = true
        lbl3.bottomAnchor.constraint(equalTo:vi.bottomAnchor).isActive = true
        lbl3.heightAnchor.constraint(equalToConstant: 10).isActive = true
        lbl3.trailingAnchor.constraint(equalTo: img3.trailingAnchor).isActive = true
        lbl3.leadingAnchor.constraint(equalTo: img3.leadingAnchor).isActive = true

    }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
}

class Cell3:UITableViewCell{
    
    static let id = "Cell3"

    let vi = UIView.MyView()
    let vi1 = UIView.MyView()
    let vi2 = UIView.MyView()
    let vi3 = UIView.MyView()

    
    let img1 = UIImageView.Myimg()
    let img2 = UIImageView.Myimg()
    let img3 = UIImageView.Myimg()
    let img4 = UIImageView.Myimg()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupview()
    }
    
    func setupview(){
        
        contentView.addSubview(vi)
        vi.topAnchor.constraint(equalTo:contentView.topAnchor, constant:10).isActive = true
        vi.bottomAnchor.constraint(equalTo:contentView.bottomAnchor, constant:-10).isActive = true
        vi.trailingAnchor.constraint(equalTo:contentView.trailingAnchor, constant:-10).isActive = true
        vi.leadingAnchor.constraint(equalTo:contentView.leadingAnchor, constant:10).isActive = true
        
        vi.addSubview(vi1)
        vi1.centerYAnchor.constraint(equalTo:vi.centerYAnchor).isActive = true
        vi1.centerXAnchor.constraint(equalTo:vi.centerXAnchor, constant:-10).isActive = true
        vi1.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        vi1.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        
        vi.addSubview(vi2)
        vi2.topAnchor.constraint(equalTo:vi.topAnchor).isActive = true
        vi2.bottomAnchor.constraint(equalTo:vi1.topAnchor, constant:-10).isActive = true
        vi2.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        vi2.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        
        vi.addSubview(vi3)
        vi3.topAnchor.constraint(equalTo:vi1.bottomAnchor, constant:10).isActive = true
        vi3.bottomAnchor.constraint(equalTo:vi.bottomAnchor).isActive = true
        vi3.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        vi3.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        
        setupimg()
    }
    
    func setupimg(){
        vi2.addSubview(img1)
        img1.topAnchor.constraint(equalTo:vi.topAnchor).isActive = true
        img1.bottomAnchor.constraint(equalTo:vi1.topAnchor,constant: -10).isActive = true
        img1.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        img1.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        img1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        vi1.addSubview(img2)
        img2.topAnchor.constraint(equalTo:vi1.topAnchor).isActive = true
        img2.bottomAnchor.constraint(equalTo:vi1.bottomAnchor).isActive = true
        img2.trailingAnchor.constraint(equalTo:vi1.trailingAnchor).isActive = true
        img2.widthAnchor.constraint(equalToConstant: 192).isActive = true

        vi1.addSubview(img3)
        img3.topAnchor.constraint(equalTo:vi1.topAnchor).isActive = true
        img3.bottomAnchor.constraint(equalTo:vi1.bottomAnchor).isActive = true
        img3.leadingAnchor.constraint(equalTo:vi1.leadingAnchor).isActive = true
        img3.widthAnchor.constraint(equalToConstant:192).isActive = true
        
        vi3.addSubview(img4)
        img4.topAnchor.constraint(equalTo:vi1.bottomAnchor,constant: 10).isActive = true
        img4.bottomAnchor.constraint(equalTo:vi.bottomAnchor).isActive = true
        img4.trailingAnchor.constraint(equalTo:vi.trailingAnchor).isActive = true
        img4.leadingAnchor.constraint(equalTo:vi.leadingAnchor).isActive = true
        img4.heightAnchor.constraint(equalToConstant: 100).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}









   

