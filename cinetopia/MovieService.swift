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
    func getMovies(completion: @escaping(Result<[Movie], MovieError>) -> Void) {
        let urlString = "https://my-json-server.typicode.com/alura-cursos/movie-api/movies"
        
        var movies: [Movie] = []
        
        guard let url = URL(string: urlString) else { return completion(.failure(.invalidURL)) }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data, response != nil, error == nil else { return completion(.failure(.failedToFetchMovies)) }
            
            do {
                let decoder = JSONDecoder()
                movies = try decoder.decode([Movie].self, from: data)
                completion(.success(movies))
            } catch {
                completion(.failure(.failedToDecodeMovies))
            }
        }
        
        task.resume()
    }
}
