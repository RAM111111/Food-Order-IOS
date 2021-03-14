//
//  VC2.swift
//  Food-Order
//
//  Created by R on 15/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit


class VC2: UIViewController {
    
    let tbl:UITableView = {
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.register(UITableViewCell.self, forCellReuseIdentifier: "Cell1id")
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
        view.backgroundColor = .white
        navigationItem.title = "الرسائل"
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor :UIColor.darkGray]
        navigationItem.leftBarButtonItem?.tintColor = .cyan
    }
    


}

extension VC2:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let ttbl = tableView.bounds.size
//        func rt(title:String ) -> UIView{
//            let hv = UIView()
//        hv.backgroundColor = .white
//    let lbl = UILabel()
//        lbl.font = UIFont.boldSystemFont(ofSize: 18)
//        lbl.textColor = UIColor.black
//        lbl.text = title
//        lbl.sizeToFit()
//        hv.addSubview(lbl)
//            return hv
//        }
//
//        switch section {
//        case 0:
//            return rt(title: "")
//        case 1:
//            return rt(title: "عروض")
//        case 2:
//            return rt(title: "دائما في خدمتك")
//        case 3:
//            return rt(title: "المتاجر")
//
//        default:
//            return rt(title: "النقل")
//        }
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tbl.dequeueReusableCell(withIdentifier: "Cell1id")!
        cell.textLabel?.text =  "foo1"
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 50
    }
}
