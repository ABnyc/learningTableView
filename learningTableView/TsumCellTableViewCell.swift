//
//  TsumCellTableViewCell.swift
//  learningTableView
//
//  Created by Arpita Bhatia on 7/20/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import UIKit

class TsumCellTableViewCell: UITableViewCell {

    @IBOutlet weak var dwarfName: UILabel!
    @IBOutlet weak var dwarfFace: UIImageView!
    
    override func layoutSubviews() {
        dwarfFace.layer.cornerRadius = dwarfFace.bounds.size.width/2
        dwarfFace.clipsToBounds = true
    
    
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
