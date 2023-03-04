//
//  ViewController.swift
//  filmes-populares
// contato@7daysofcode.io 
//  Created by Arilson Silva on 26/02/23.
//

import UIKit

class ViewController: UIViewController {

    private lazy var titleView : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Filmes Populares"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24.0, weight: .bold)
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let cell = tableView.cellForRow(at: indexPath) else {return}
        
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
            
            let linhaTabela = indexPath.row
            filmeSelecionado.append(filmes[linhaTabela])
            
        } else {
            cell.accessoryType = .none
            let filme = filmes[indexPath.row]
            
            if let posicao = filmeSelecionado.firstIndex(of: filme) {
                filmeSelecionado.remove(at: posicao)
            }
        }
    }*/
}
