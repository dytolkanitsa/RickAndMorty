//
//  MainController.swift
//  RickAndMorty
//
//  Created by Толканица Дарья Юрьевна on 18.10.2022.
//

import UIKit

final class MainController: UIViewController {
    
    var output: MainOutputProtocol?
    var cellData: [CellData] = []
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorColor = appColors.sprout
        tableView.register(MainCustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = appColors.black
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        setup()
        output?.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = appColors.fountainBlue
        appearance.titleTextAttributes = [.foregroundColor: appColors.black]
        
        let tabBarController = navigationController?.tabBarController
        tabBarController?.tabBar.barTintColor = appColors.fountainBlue
        tabBarController?.tabBar.backgroundColor = appColors.fountainBlue

        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        navigationItem.compactAppearance = appearance
    }
        
    private func setup() {
        setupTableViewConstraints()
    }
    
    private func setupTableViewConstraints(){
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension MainController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainCustomTableViewCell else {
            return UITableViewCell()
        }
        let characterData = cellData[indexPath.row]
        cell.set(character: characterData)
        cell.selectionStyle = .none
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output?.tableCellTapped(indexPath)
    }
}

extension MainController: MainInputProtocol {
    
    func display(cellData: [CellData]) {
        self.cellData = cellData
    }
    
    func reloadTable() {
        tableView.reloadData()
    }
    
    func showError(_ error: Error) {
        let alert = UIAlertController(title: "Network error", message: "Please reload page", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction!) in print("OK button was pressed")}))
        self.present(alert, animated: true, completion: nil)
    }
}
