//
//  MovieTableViewCell.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 14/02/24.
//

import UIKit
import Kingfisher

class MovieTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let identifier = "MovieTableViewCell"
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        return stack
    }()
    
    private lazy var moviePosterImageView: UIImageView = {
        let image = UIImageView(image: UIImage.aOrigem)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 12
        return image
    }()
    
    private lazy var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.numberOfLines = 0
        label.text = "A Origem"
        return label
    }()
    
    private lazy var movieReleaseDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.text = "Lançamento 14/02/2000"
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cofigureUI()
        addConstraints()
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        moviePosterImageView.image = nil
        movieTitleLabel.text = nil
        movieReleaseDateLabel.text = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Helpers
    
    private func cofigureUI() {
        addSubview(moviePosterImageView)
        addSubview(stackView)
 
        for view in [movieTitleLabel, movieReleaseDateLabel] {
            stackView.addArrangedSubview(view)
        }
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            moviePosterImageView.widthAnchor.constraint(equalToConstant: 80),
            moviePosterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            moviePosterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            moviePosterImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            stackView.leadingAnchor.constraint(equalTo: moviePosterImageView.trailingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    func cofigureCell(cell: Movie) {
        let url = URL(string: cell.image)
        moviePosterImageView.kf.setImage(with: url)
        movieTitleLabel.text = cell.title
        movieReleaseDateLabel.text = "Lançamento: \(cell.releaseDate)"
    }
}
