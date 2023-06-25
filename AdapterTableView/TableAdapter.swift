//
//  TableAdapter.swift
//  AdapterTableView
//
//  Created by Zoë Klapman on 6/24/23.
//

import Foundation
import UIKit

class TableAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    let table: UITableView
    let model: TableModel
    
    init(table: UITableView, with model: TableModel) {
        self.table = table
        self.model = model
        super.init()
        
        self.table.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier)

        self.table.dataSource = self
        self.table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        cell.cellLabel.text = String(describing: model.data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row \(indexPath.item + 1)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
