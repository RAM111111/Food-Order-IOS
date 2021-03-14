//
//  ViewController.swift
//  collwithtbl
//
//  Created by R on 02/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tbl:UITableView = {
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.register(Cell1.self, forCellReuseIdentifier: Cell1.id)
        tbl.register(Cell2.self, forCellReuseIdentifier: Cell2.id)
        tbl.register(Cell3.self, forCellReuseIdentifier: Cell3.id)
        tbl.register(tblcolcell.self, forCellReuseIdentifier: tblcolcell.id)
        return tbl
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setuptbl()
        setupnav()

    }
    
    func setuptbl(){
        view.addSubview(tbl)
        tbl.dataSource = self
        tbl.delegate = self
        tbl.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tbl.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tbl.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tbl.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    func setupnav(){
        navigationItem.title = "ماذا تريد أن تشتري؟"
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor :UIColor.darkGray]
        let search = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.search, target: self, action: Selector(("Search")))
        navigationItem.leftBarButtonItem = search
        navigationItem.leftBarButtonItem?.tintColor = .cyan
    }
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let ttbl = tableView.bounds.size
        func rt(title:String ) -> UIView{
            let hv = UIView()
        hv.backgroundColor = .white
    let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textColor = UIColor.black
        lbl.text = title
        lbl.sizeToFit()
        hv.addSubview(lbl)
            return hv
        }
        
        switch section {
        case 0:
            return rt(title: "")
        case 1:
            return rt(title: "عروض")
        case 2:
            return rt(title: "دائما في خدمتك")
        case 3:
            return rt(title: "المتاجر")
            
        default:
            return rt(title: "النقل")
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0{
            let cell4 = tbl.dequeueReusableCell(withIdentifier: tblcolcell.id) as! tblcolcell
            return cell4

        }else if indexPath.section == 1 && indexPath.row == 0{
        let cell2 = tbl.dequeueReusableCell(withIdentifier: Cell2.id) as! Cell2
            cell2.img1.image = UIImage(named: "foo1")
            cell2.img2.image = UIImage(named: "foo1")
            cell2.img3.image = UIImage(named: "foo1")
            cell2.lbl1.text = "عروض"
            cell2.lbl2.text = "عروض"
            cell2.lbl3.text = "عروض"
            return cell2
            
        }else if indexPath.section == 2 && indexPath.row == 0{
            let cell3 = tbl.dequeueReusableCell(withIdentifier: Cell3.id) as! Cell3
            cell3.img1.image = UIImage(named: "foo1")
            cell3.img2.image = UIImage(named: "foo1")
            cell3.img3.image = UIImage(named: "foo1")
            cell3.img4.image = UIImage(named: "foo1")
            return cell3
            
        }
        let cell = tbl.dequeueReusableCell(withIdentifier: Cell1.id) as! Cell1
            cell.img.image = UIImage(named: "foo1")
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2 && indexPath.row == 0 {
            return 340
        }
        return 150
    }
}













