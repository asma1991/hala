//
//  DetailsViewController.swift
//  hala
//
//  Created by asma saleh on 24/05/2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var user: UserData!

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var abbressLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLbel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var CountryStackView: UIStackView!
    

    @IBOutlet weak var AddressStackView: UIStackView!
    @IBOutlet weak var PhoneStackView: UIStackView!
    @IBOutlet weak var EducationStackView: UIStackView!
    @IBOutlet weak var BirthDateStackView: UIStackView!
  
    @IBOutlet weak var EmailStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues()
        
        if emailLabel.text == ""{
          EmailStackView.isHidden = true }else{
              EmailStackView.isHidden = false
        }
      
       if educationLabel.text == ""{
          EducationStackView.isHidden = true } else {
              EducationStackView.isHidden = false
        }
     
      if birthDateLabel.text == ""{
          BirthDateStackView.isHidden = true } else {
              BirthDateStackView.isHidden = false
         }
      
      if countryLabel.text == ""{
          CountryStackView.isHidden = true } else {
              CountryStackView.isHidden = false
         }
      
      if phoneLbel.text == ""{
          PhoneStackView.isHidden = true } else {
              PhoneStackView.isHidden = false
         }
     
      if abbressLabel.text == ""{
          AddressStackView.isHidden = true } else {
              AddressStackView.isHidden = false
         }
        
        photoImage.layer.cornerRadius = photoImage.frame.height / 2
        
        
        // Do any additional setup after loading the view.
    }
  
    private func setValues() {
        fullNameLabel.text = user.fullName
        roleLabel.text = user.job.role ?? ""
        emailLabel.text = user.contact.email ?? ""
        
         
        
        
      //  let url = URL(string:"https://picsum.photos/id/1/200/200")
               let url = URL(string:user.avatar ?? "")
        photoImage.kf.indicatorType = .activity
        photoImage.kf.setImage(with: url)
        
       
        
        companyLabel.text = user.job.company ?? ""
        abbressLabel.text = user.contact.address ?? ""
        phoneLbel.text = user.contact.phone_number ?? ""
        educationLabel.text = user.education ?? ""
        birthDateLabel.text = user.birth_day ?? ""
        countryLabel.text = user.country ?? ""
        
        
    }
    


}
