//
//  MovieService.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 26/03/24.
//

import Foundation

enum MovieError: Error {
    case invalidURL
    case failedToFetchMovies
    case failedToDecodeMovies
}

struct MovieService {
    func getMovies() async throws -> [Movie] {
        let urlString = "https://my-json-server.typicode.com/alura-cursos/movie-api/movies"
        
        guard let url = URL(string: urlString) else { 
            throw MovieError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw MovieError.failedToFetchMovies
        }
        
        do {
            let decoder = JSONDecoder()
            let movies = try decoder.decode([Movie].self, from: data)
            return movies
        } catch {
            throw MovieError.failedToDecodeMovies
        }
    }
}
 
