//
//  Filme.swift
//  filmes-populares
//
//  Created by Arilson Silva on 26/02/23.
//

import UIKit

class Filme: Equatable {
    
    let id: Int
    let title: String
    let overview: String
    let release_date:String
    let poster_path: String
    let vote_average: Double
    
    init(id: Int,title: String, overview: String, release_date: String, poster_path: String, vote_average: Double) {
        self.id = id
        self.title = title
        self.overview = overview
        self.release_date = release_date
        self.poster_path = poster_path
        self.vote_average = vote_average
    }
    
    static func == (lhs: Filme, rhs: Filme) -> Bool {
        
        return lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.overview == rhs.overview &&
        lhs.release_date == rhs.release_date &&
        lhs.poster_path == rhs.poster_path &&
        lhs.vote_average == rhs.vote_average
    }
}
