//
//  FAQViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-19.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController {
    
    @IBOutlet weak var backBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var settingsBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    let faqBrain = FAQBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        backBarButtonItem.tintColor = .white
        settingsBarButtonItem.tintColor = .white
        settingsBarButtonItem.setTitleTextAttributes([ NSAttributedString.Key.font: UIFont(name: "Courier", size: 20)!], for: UIControl.State.normal)
        
        let nib = UINib(nibName: "FAQTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "FAQTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = .darkGray
        
//MARK:- TableView Footer
        
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 30))
        footer.backgroundColor = .darkGray
        
        tableView.tableFooterView = footer
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

//MARK:- UITableViewDelegate

extension FAQViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        // Make it so row cannot be selected.
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//MARK:- UITableViewDataSource

extension FAQViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .darkGray
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
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
