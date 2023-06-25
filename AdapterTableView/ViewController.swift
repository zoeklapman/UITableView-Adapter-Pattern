//
//  ViewController.swift
//  AdapterTableView
//
//  Created by Zoë Klapman on 6/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    private var tableAdapter: TableAdapter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableAdapter = TableAdapter(table: table, with: TableModel())
    }
}

