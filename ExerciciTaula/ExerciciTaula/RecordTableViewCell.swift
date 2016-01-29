//
//  RecordTableViewCell.swift
//  ExerciciTaula
//
//  Created by Marc Juberó on 28/01/16.
//  Copyright © 2016 HELM S.C.P. All rights reserved.
//

import UIKit

class RecordTableViewCell: UITableViewCell {

    @IBOutlet weak var recordImageView: UIImageView!
    @IBOutlet weak var recordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
