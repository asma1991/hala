//
//  UserData.swift
//  hala
//
//  Created by asma saleh on 24/05/2022.
//

import Foundation


struct UserData: Codable {
    
    var id: Int
    var first_name : String
    var last_name : String

    var education: String?
    var gender: String?
    var avatar: String?
    var birth_day: String?
    var bio: String?
    var country: String?
    var city: String?
    
    var contact: Contact
    var job : Job
    
    var fullName: String {
        "\(first_name)  \(last_name)"
    }


}


struct Contact: Codable {
    var phone_number : String?
    var address: String?
    var email: String?
   }

    struct Job: Codable {
     var role : String?
     var company: String?

   }
