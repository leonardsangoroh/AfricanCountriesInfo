//
//  DetailViewController.swift
//  AfricanCountriesInfo
//
//  Created by Lee Sangoroh on 15/02/2024.
//

import UIKit

class DetailViewController: UIViewController {
    
    var nameLabel: UILabel!
    var capitalCityLabel: UILabel!
    var sizeLabel: UILabel!
    var populationLabel: UILabel!
    var currencyLabel: UILabel!
    var officialLanguageLabel: UILabel!
    
    var name = ""
    var capitalCity = ""
    var size = ""
    var population: Int = 0
    var currency = ""
    var officialLanguage = ""
    
    override func loadView() {
        view = UIView()
        
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        nameLabel.text = name
        view.addSubview(nameLabel)
        
        capitalCityLabel = UILabel()
        capitalCityLabel.translatesAutoresizingMaskIntoConstraints = false
        capitalCityLabel.textAlignment = .center
        capitalCityLabel.text = capitalCity
        view.addSubview(capitalCityLabel)
        
        sizeLabel = UILabel()
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.textAlignment = .center
        sizeLabel.text = size
        view.addSubview(sizeLabel)
        
        populationLabel = UILabel()
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.textAlignment = .center
        populationLabel.text = "\(population)"
        view.addSubview(populationLabel)
        
        currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.textAlignment = .center
        currencyLabel.text = "\(currency)"
        view.addSubview(currencyLabel)
        
        officialLanguageLabel = UILabel()
        officialLanguageLabel.translatesAutoresizingMaskIntoConstraints = false
        officialLanguageLabel.textAlignment = .center
        officialLanguageLabel.text = "\(officialLanguage)"
        view.addSubview(officialLanguageLabel)
        
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            capitalCityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
            capitalCityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sizeLabel.topAnchor.constraint(equalTo: capitalCityLabel.bottomAnchor, constant: 30),
            sizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            populationLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 30),
            populationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currencyLabel.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 30),
            currencyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            officialLanguageLabel.topAnchor.constraint(equalTo: currencyLabel.bottomAnchor, constant: 30),
            officialLanguageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
    }
}
