//
//  ViewController.swift
//  Simple.TableView_Demo
//
//  Created by Macintosh on 18/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoTableView: UITableView!
    
    var array1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH"]
    var array2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViews()
    }
    
    func initializeViews() {
        infoTableView.delegate = self
        infoTableView.dataSource = self
    }

}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = array1[indexPath.row]
        cell.detailTextLabel?.text = array2[indexPath.row]
        return cell
    }
}

