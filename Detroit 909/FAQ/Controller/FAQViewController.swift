//
//  FAQViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-19.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var tableView: UITableView!
    
    let faqBrain = FAQBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationUI()
        
        let nib = UINib(nibName: "FAQTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "FAQTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
        
//MARK: - TableView Footer
        
//        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 30))
//        footer.backgroundColor = .darkGray
//
//        tableView.tableFooterView = footer
    }
    
    func navigationUI() {
        // Set Title UI
        navigationItem.title = "FAQ"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "AvenirNext-DemiBold", size: 14)!]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.gray
        
        // Set BarButtonItem UI
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "AvenirNext-Medium", size: 15)!], for: .normal)
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        coordinator?.goBack()
    }
    
}

//MARK: - UITableViewDelegate

extension FAQViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        // Make it so row cannot be selected.
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//MARK: - UITableViewDataSource

extension FAQViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return faqBrain.faq.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FAQTableViewCell", for: indexPath) as! FAQTableViewCell
        
        cell.questionLabel.text = faqBrain.faq[indexPath.section].question
        cell.answerLabel.text = faqBrain.faq[indexPath.section].answer
        cell.questionLabel.textColor = .white
        cell.answerLabel.textColor = .white
        cell.backgroundColor = .black
        return cell
    }
    
    
}
