//
//  ViewController.swift
//  tableView
//
//  Created by 방현석 on 5/14/24.
//

import UIKit

class ViewController: UIViewController {
    
    var dataManager = DataManager()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 120
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "movieCell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNaviBar()
        dataManager.makeData()
        setupTableViewConstraints()
    }
    
    
    func setupNaviBar() {
        title = "영화목록"
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()  // 불투명으로
        appearance.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        let plusButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(plusAction))
        navigationItem.rightBarButtonItem = plusButton
    }

    @objc func plusAction() {
        dataManager.addMovieData()
        tableView.reloadData()
    }

    
    


    func setupTableViewConstraints() {
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}

// MARK: UITableView DataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.getMovieData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MyTableViewCell
        cell.selectionStyle = .none
        
        let movieArray = dataManager.getMovieData()
        let movieItem = movieArray[indexPath.row]

        cell.mainImageView.image = movieItem.movieImage
        cell.movieNameLabel.text = movieItem.movieName
        cell.descriptionLabel.text = movieItem.movieDescription
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let movieArray = dataManager.getMovieData()
        let movieItem = movieArray[indexPath.row]
        let detailVC = DetailViewController()
        detailVC.movieData = movieItem
        
        navigationController?.pushViewController(detailVC, animated: true)
//        present(detailVC, animated: true)
        
    }
    
}
