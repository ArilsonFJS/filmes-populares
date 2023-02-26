//
//  Filme.swift
//  filmes-populares
//
//  Created by Arilson Silva on 26/02/23.
//

import UIKit

class Filme {
    
    let titulo: String
    let sinopse: String
    let dataLancamento: String
    let urlImagem: String
    let classficacaoUsuarios: Double
    
    init(titulo: String, sinopse: String, dataLancamento: String, urlImagem: String, classficacaoUsuarios: Double) {
        
        self.titulo = titulo
        self.sinopse = sinopse
        self.dataLancamento = dataLancamento
        self.urlImagem = urlImagem
        self.classficacaoUsuarios = classficacaoUsuarios
    }
}
