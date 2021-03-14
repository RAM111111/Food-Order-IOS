//
//  VC.swift
//  Food-Order
//
//  Created by R on 15/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit


class VC: UIViewController {
    
    let title1  = Data.title

    
    let tbl:UITableView = {
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.register(VCCell.self, forCellReuseIdentifier:VCCell.id )
        return tbl
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        


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
        view.backgroundColor = .lightGray
        navigationItem.title = "الطلبات"
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor :UIColor.darkGray]
        let search = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.edit, target: self, action: Selector(("Search")))
        navigationItem.leftBarButtonItem = search
        navigationItem.leftBarButtonItem?.tintColor = .cyan
    }


}


extension VC:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return title1.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return title1[section].count
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 0{
            let vi :UIView = {
                let vi = UIView(frame: CGRect(origin: .zero, size: CGSize(width: view.bounds.width, height: 100)))
                vi.backgroundColor = .lightGray
                vi.alpha = 0.1
                return vi
                
            }()
            return vi
        }
        let vi :UIView = {
            let vi = UIView(frame: CGRect(origin: .zero, size: CGSize(width: view.bounds.width, height: 500)))
            vi.backgroundColor = .lightGray
            vi.alpha = 0.1
            return vi
            
        }()
        return vi
        

    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbl.dequeueReusableCell(withIdentifier: VCCell.id) as! VCCell
        cell.lbl.text = title1[indexPath.section][indexPath.row]
        cell.img.image = UIImage(named: "left-arrow")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
