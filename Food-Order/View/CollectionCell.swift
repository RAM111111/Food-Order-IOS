//
//  CollectionCell.swift
//  collwithtbl
//
//  Created by R on 08/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit


class tblcolcell:UITableViewCell{
    
    static let id = "tblcolcell"
    let imgarr = Data.imges
    
    let col = UICollectionView.MyCol()
    
    let pc :UIPageControl = {
        let pc = UIPageControl(frame: .zero)
        pc.currentPage = 0
        pc.numberOfPages = 5
        pc.currentPageIndicatorTintColor = .cyan
        pc.pageIndicatorTintColor = .white
        pc.translatesAutoresizingMaskIntoConstraints = false
        return pc
    }()
    
    var timer = Timer()
    var counter = 0
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.chngimg), userInfo: nil, repeats: true)
            
        }
        

         addSubview(col)
         stupcol()
         setuppc()

        
    }
    @objc func chngimg(){
        if counter < imgarr.count{
            let index = IndexPath.init(item: counter, section: 0)
            col.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pc.currentPage = counter
            counter += 1
        }else{
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            col.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pc.currentPage = counter
            counter = 1

            
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        func stupcol(){
            col.delegate = self
            col.dataSource = self
            NSLayoutConstraint.activate([
                col.topAnchor.constraint(equalTo: topAnchor),
                col.bottomAnchor.constraint(equalTo: bottomAnchor),
                col.leadingAnchor.constraint(equalTo:leadingAnchor, constant: 10),
                col.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                col.widthAnchor.constraint(equalToConstant: bounds.width),
                col.heightAnchor.constraint(equalToConstant: 150)
                 ])
        }
        func setuppc(){
           addSubview(pc)
            
            NSLayoutConstraint.activate([
                pc.bottomAnchor.constraint(equalTo: col.bottomAnchor),
                pc.leadingAnchor.constraint(equalTo:col.leadingAnchor, constant: 10),
                pc.trailingAnchor.constraint(equalTo: col.trailingAnchor, constant: -10),
                pc.widthAnchor.constraint(equalToConstant: bounds.width),
                pc.heightAnchor.constraint(equalToConstant: 50)
                 ])
        }
    }

extension tblcolcell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgarr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = col.dequeueReusableCell(withReuseIdentifier: colcll.id, for: indexPath)as!colcll
        cell.img.image = UIImage(named: imgarr[indexPath.row])
        return cell
    }

}

class colcll:UICollectionViewCell{
    
    static let id = "colcll"
    let img = UIImageView.Myimg()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        img.backgroundColor = .cyan
        addSubview(img)
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo:topAnchor),
            img.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            img.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            img.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
