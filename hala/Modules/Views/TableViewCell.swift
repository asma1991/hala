//
//  TableViewCell.swift
//  hala
//
//  Created by asma saleh on 24/05/2022.
//

import UIKit
import Kingfisher

class TableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imagUser: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imagUser.layer.cornerRadius = imagUser.frame.height / 2
        
        containerView.layer.cornerRadius = 8
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.1
        containerView.layer.shadowRadius = 5
        containerView.layer.masksToBounds = false
        containerView.layer.shadowOffset = CGSize.zero

        // Initialization codeimageFromUrl(urlString: String)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
    func setupCell( user: UserData) {
        let fullName = user.fullName
        nameLabel.text = fullName
        roleLabel.text  =  user.job.role!
        companyLabel.text = user.job.company!
       
  
       // let url = URL(string:"https://picsum.photos/id/1/200/200")
        let url = URL(string:user.avatar ?? "")
        imagUser.kf.indicatorType = .activity
        imagUser.kf.setImage(with: url)
       
  
        }
     
        
    }
    



