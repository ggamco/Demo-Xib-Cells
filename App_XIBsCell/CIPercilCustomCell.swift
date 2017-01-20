//
//  CIPercilCustomCell.swift
//  App_XIBsCell
//
//  Created by cice on 20/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class CIPercilCustomCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var myFondoPerfil: UIImageView!
    @IBOutlet weak var myImagenPerfil: UIImageView!
    @IBOutlet weak var myUsuarioLabel: UILabel!
    @IBOutlet weak var myNombreLabel: UILabel!
    @IBOutlet weak var myBiografiaLabel: UILabel!
    @IBOutlet weak var myNumeroPublicaciones: UILabel!
    @IBOutlet weak var myNumeroSeguidores: UILabel!
    @IBOutlet weak var myNumeroSeguidos: UILabel!
    @IBOutlet weak var myBotonEmail: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
