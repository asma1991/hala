//
//  DataLoader.swift
//  hala
//
//  Created by asma saleh on 24/05/2022.
//

import Foundation

public class DataLoader {
   @Published var userData = [UserData]()
    
    init(){
        load()
       
    }
    
    func load(){
        
        if let fileLocation = Bundle.main.url(forResource: "contacts", withExtension: "json") {
            do {
                
                let data = try Data (contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let jsonFromJson = try jsonDecoder.decode([UserData].self, from: data)
                self.userData = jsonFromJson
                
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
       
}
