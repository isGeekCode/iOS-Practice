//
//  DetailViewController.swift
//  tableView
//
//  Created by 방현석 on 5/15/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movieData: Movie?
    let detailView = DetailView()
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        detailView.mainImageView.image = movieData?.movieImage
        detailView.movieNameLabel.text = movieData?.movieName
        detailView.descriptionLabel.text = movieData?.movieDescription
    }
}
