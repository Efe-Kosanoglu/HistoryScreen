//
//  MainHistoryPageViewController.swift
//  History
//
//  Created by Efe Kosanoglu on 26.08.2023.
//

import UIKit

class MainHistoryPageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Your Title"
        let cellNib = UINib(nibName: TableViewCell.identifier, bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: TableViewCell.identifier)
    }
}
extension MainHistoryPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier) as! TableViewCell
        return cell
    }
}
