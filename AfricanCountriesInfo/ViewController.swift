//
//  ViewController.swift
//  AfricanCountriesInfo
//
//  Created by Lee Sangoroh on 14/02/2024.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = [Country]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set title
        title = "Know Africa"
        
        // Set title to Large
        navigationController?.navigationBar.prefersLargeTitles = true
        
        readJSONFile("countries")
        print(countries.count)
    }
    
    func readJSONFile(_ filename: String) {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            fatalError("Could not find countries.json")
        }
        guard let dataCountries = try? Data(contentsOf: url) else {
            fatalError("Could not convert data")
        }
        
        let decoder = JSONDecoder()
        if let jsonCountries = try? decoder.decode(Countries.self, from: dataCountries) {
            countries = jsonCountries.countries
            
            for country in countries {
                print(country.capitalCity)
            }
        }

    }
    
    // number of rows that should appear in the table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    // appearance of each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // make cells reusable
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        
        let country = countries[indexPath.row]
        cell.textLabel?.text = country.name
        
        cell.textLabel?.textColor = .red
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // create instance of DetailViewController
        let vc = DetailViewController()
        vc.name = countries[indexPath.row].name
        vc.capitalCity = countries[indexPath.row].capitalCity
        vc.size = countries[indexPath.row].size
        vc.population = countries[indexPath.row].population
        vc.currency = countries[indexPath.row].currency
        vc.officialLanguage = countries[indexPath.row].officialLanguage
        navigationController?.pushViewController(vc, animated: true)
    }


}
