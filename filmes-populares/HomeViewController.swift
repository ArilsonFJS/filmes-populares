//
//  ViewController.swift
//  filmes-populares
// contato@7daysofcode.io 
//  Created by Arilson Silva on 26/02/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let filmes: [Filme] = [
            Filme(id:1,title: "Os Vingadores Ultimato", overview: "", release_date: "", poster_path: "", vote_average: 9.0),
            Filme(id:2,title: "John Wick", overview: "", release_date: "", poster_path: "", vote_average: 8.0),
            Filme(id:3,title: "Titanic", overview: "", release_date: "", poster_path: "", vote_average: 7.0)
        ]
    
    private lazy var titleView : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Filmes Populares"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24.0, weight: .bold)
        
        return label
    }()
    
    private lazy var tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.separatorColor = .none
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackground()
        setLayout()
        
    }
    
    
    private func setLayout(){
        view.addSubview(titleView)
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 32.0),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])

    }
}



extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = filmes[indexPath.row].title
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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

