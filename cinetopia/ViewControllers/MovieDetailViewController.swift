//
//  MovieDetailViewController.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 20/02/24.
//

import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
    private lazy var movieTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textAlignment = .center
        return title
    }()
    
    private lazy var movieImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 16
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        return image
    }()
    
    private lazy var movieDescription: UILabel = {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.numberOfLines = 0
        return description
    }()
    
    let movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark
        
        configureUI()
        addConstraints()
    }
    
    // MARK: - Helpers
    
    private func configureUI() {
        view.backgroundColor = .background
        
        let url = URL(string: movie.image)
        
        movieTitle.text = movie.title
        movieImageView.kf.setImage(with: url)
        movieDescription.text = movie.synopsis
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(movieTitle)
        contentView.addSubview(movieImageView)
        contentView.addSubview(movieDescription)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            movieTitle.topAnchor.constraint(equalTo: contentView.topAnchor),
            movieTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            movieTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            movieImageView.topAnchor.constraint(equalTo: movieTitle.bottomAnchor, constant: 20),
            movieImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            movieImageView.widthAnchor.constraint(equalToConstant: 150),
            movieImageView.heightAnchor.constraint(equalToConstant: 250),
            
            movieDescription.topAnchor.constraint(equalTo: movieImageView.bottomAnchor, constant: 20),
            movieDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            movieDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            movieDescription.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ])
    }
}
