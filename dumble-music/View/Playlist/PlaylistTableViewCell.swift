//
//  PlaylistTableViewCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 16/09/2021.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var songAuthor: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
