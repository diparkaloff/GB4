//
//  ResultatsTableViewController.swift
//  GameProject
//
//  Created by Дмитрий Паркалов on 3.08.22.
//

import UIKit

class ResultatsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Game.shared.records.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let records = Game.shared.records[indexPath.row]
        
        cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.textLabel?.textColor = .black
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = "Выиграно денег: \(records.totalPrize)\nКоличество правильных ответов: \(records.correctQuestionsCount)"

        return cell
    }
}
