//
//  GenshinTableViewCell.swift
//  Wonders
//
//  Created by Yerlan Tleubayev on 12.07.2023.
//

import UIKit
import SDWebImage


class GenshinTableViewCell: UITableViewCell {
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    @IBOutlet weak var characterElementLabel: UILabel!
    
    @IBOutlet weak var characterRegionLabel: UILabel!
    
    @IBOutlet weak var characterWeaponLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData (genshin: GenshinCharacters) {
        characterNameLabel.text = genshin.name
        characterRegionLabel.text = genshin.region
        characterElementLabel.text = genshin.element
        characterWeaponLabel.text = genshin.weapon
        characterImageView.sd_setImage(with: URL(string: genshin.image), completed: nil)
    }
}
