//
//  MovieService.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 26/03/24.
//

import Foundation

struct MovieService {
    func getMovies(completion: @escaping([Movie]?) -> Void) {
        let urlString = "https://my-json-server.typicode.com/alura-cursos/movie-api/movies"
        
        var movies: [Movie] = []
        
        guard let url = URL(string: urlString) else { return completion(nil) }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data, response != nil, error == nil else { return completion(nil) }
            
            do {
                let decoder = JSONDecoder()
                movies = try decoder.decode([Movie].self, from: data)
                completion(movies)
            } catch {
                print("Failed to decode movies: \(error)")
            }
        }
        
        task.resume()
    }
}
