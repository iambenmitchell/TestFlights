//
//  Model.swift
//  TestFlights
//
//  Created by Ben Mitchell on 02/01/2020.
//  Copyright © 2020 Ben Mitchell. All rights reserved.
//

struct App: Codable, Identifiable {
    public var id: Int
    public var name: String
    public var url: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case name = "name"
           case url = "url"
        }
}
