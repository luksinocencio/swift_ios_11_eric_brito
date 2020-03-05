//
//  WorldCupTableViewCell.swift
//  CampeosDaCopa
//
//  Created by Lucas Inocencio on 27/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbYear: UILabel!
    
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbWinerScore: UILabel!
    
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    
    @IBOutlet weak var lbCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func prepare(with cup: WorldCup) {
        lbYear.text = "\(cup.year)"
        ivWinner.image = UIImage(named: cup.winner)
        ivVice.image = UIImage(named: cup.vice)
        lbWinner.text = cup.winner
        lbVice.text = cup.vice
        lbCountry.text = cup.country
        lbWinerScore.text = cup.winnerScore
        lbViceScore.text = cup.viceScore
    }

}
