//
//  MainHistoryPageViewController.swift
//  History
//
//  Created by Efe Kosanoglu on 26.08.2023.
//

import UIKit

class MainHistoryPageViewController: UIViewController {
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var tableView: UITableView!
    
    var data = [DummyData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "bg2")!
        
        let dummyImages: [DummyDataImages] = [
            DummyDataImages(order: 1, image: image),
        ]
        
        data.append(DummyData(date: "29.08.2023", time: "12:34", images: dummyImages))
        
        tableView.register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
        navBar.barTintColor = UIColor.clear
        navBar.setBackgroundImage(UIImage(), for: .default)
    }
}

extension MainHistoryPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.populate(data: data[indexPath.row])
        return cell
    }
}
