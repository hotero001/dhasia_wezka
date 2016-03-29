//
//  IconTableViewCell.swift
//  
//

import UIKit

class IconTableViewCell: UITableViewCell {

  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var favoriteImageView: UIImageView!
    
  @IBOutlet weak var dateLabel: UILabel!
  //add an IBOutlet for the date label
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
