//
//  ViewController.swift
//  filmes-populares
//
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
        // Do any additional setup after loading the view.
        
        filmesTableView.dataSource = self
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
        
        /*
         Primeiro, obtemos a célula selecionada usando o método cellForRow(at:).
         Se a célula não puder ser obtida, saímos do método usando return.
         */
        guard let cell = tableView.cellForRow(at: indexPath) else {return}
        
        /*Verificamos se a célula já está marcada (ou seja, se ela já foi selecionada anteriormente) verificando o valor da propriedade accessoryType da célula.
         Se ela não estiver marcada, marcamos a célula adicionando um checkmark usando accessoryType = .checkmark.
         */
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
            
            /*Em seguida, adicionamos o filme selecionado ao array filmeSelecionados.
             Para fazer isso, obtemos o índice da linha selecionada usando indexPath.row e usamos esse índice para obter o item correspondente no array filmes.*/
            let linhaTabela = indexPath.row
            filmeSelecionado.append(filmes[linhaTabela])
            
        } else {
            /*Se a célula já estiver marcada, removemos a marcação (checkmark) usando accessoryType = .none.*/
            cell.accessoryType = .none
            
            /*Em seguida, removemos o filme selecionado do array filmeSelecionado.
             Para fazer isso, obtemos o filme correspondente no array filmes e usamos firstIndex(of:) para obter o índice do item no array filmeSelecionado.
             Em seguida, removemos o item do array filmeSelecionado usando remove(at:).*/
            let filme = filmes[indexPath.row]
            
            if let posicao = filmeSelecionado.firstIndex(of: filme) {
                filmeSelecionado.remove(at: posicao)
            }
        }
    }
}

