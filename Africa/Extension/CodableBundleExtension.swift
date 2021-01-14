//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import Foundation


extension Bundle
{
    func decode<T:Codable>(_ file: String)->T
    {
        // Locate the Json file
        guard let url = self.url(forResource: file, withExtension: nil)else{fatalError("Failed to fetch \(file) from Bundle")}
        
        // Create a property
        //checks weather the data is corrupt of not
        guard let data = try?Data(contentsOf: url) else {fatalError("Failed to load \(file) from Bundle")}
        
        // Create a JSON decoder
        let decoder = JSONDecoder()
       
        // Create a property for the decoded data
        guard let loaded = try?decoder.decode(T.self, from: data)else{fatalError("Failed to decode\(file) from Bundle")}
        //Return ready to use data
        return loaded
        
    }
}
