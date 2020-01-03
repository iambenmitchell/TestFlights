//
//  Fetcher.swift
//  TestFlights
//
//  Created by Ben Mitchell on 02/01/2020.
//  Copyright © 2020 Ben Mitchell. All rights reserved.
//
import Foundation
public class AppFetcher: ObservableObject {

    @Published var apps = [App]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://jsonurl.tld")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([App].self, from: d)
                    DispatchQueue.main.async {
                        self.apps = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
         
    }
}
