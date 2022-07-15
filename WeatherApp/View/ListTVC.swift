//
//  ListTVC.swift
//  WeatherApp
//
//  Created by Ilya Dombrovsky on 15.07.22.
//

import UIKit

class ListTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchWeather()

    }
    
    func fetchWeather() {
        let urlString = "https://api.weather.yandex.ru/v2/forecast?lat=53.900645&lon=27.560120"
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        request.addValue("fe8ee570-ccdd-467c-a1fa-8e04ea6e99b0", forHTTPHeaderField: "X-Yandex-API-Key")
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            print(String(data: data, encoding: .utf8)!)
        }
        task.resume()
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
