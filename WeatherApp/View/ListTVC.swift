//
//  ListTVC.swift
//  WeatherApp
//
//  Created by Ilya Dombrovsky on 15.07.22.
//

import UIKit

class ListTVC: UITableViewController {
    
    let netwokWeatherManager =  NetworkWeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        netwokWeatherManager.fetchWeather() 
    }
    
  

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        

        return cell
    }


    
}
