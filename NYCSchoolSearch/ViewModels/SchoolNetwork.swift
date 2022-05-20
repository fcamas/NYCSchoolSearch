//
//  SchoolNetwork.swift
//  NYCSchoolSearch
//
//  Created by Life on 5/18/22.
//

import Foundation
import UIKit

class SchoolNetwork{
    
    
    func fetchData() {
        if let url = URL(string: "google.com"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode([SchoolModel].self, from: safeData)
                            
                            DispatchQueue.main.async {
                                results.forEach{result in
                                    print("data")
                                }
                            }
                        } catch{
                            print(error)
                        }
                    }
                   
                }
               
            }
            task.resume()
        }
        
    }
    
}
