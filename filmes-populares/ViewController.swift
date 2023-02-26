//
//  ViewController.swift
//  filmes-populares
// contato@7daysofcode.io 
//  Created by Arilson Silva on 26/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var filmesTableView: UITableView!
    
    var filmeSelecionado: [Filme] = []
    
    let filmes: [Filme] = [
        Filme(id:1,title: "Os Vingadores Ultimato", overview: "", release_date: "", poster_path: "", vote_average: 9.0),
        Filme(id:2,title: "John Wick", overview: "", release_date: "", poster_path: "", vote_average: 8.0),
        Filme(id:3,title: "Titanic", overview: "", release_date: "", poster_path: "", vote_average: 7.0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let filme = filmes[indexPath.row]
        cell.textLabel?.text = filme.title
        
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
    }
}

