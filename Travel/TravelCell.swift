//
//  TravelCell.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import RxSwift

class TravelCell: UITableViewCell {
    @IBOutlet weak var destinationLbl: UILabel!
    @IBOutlet weak var publishTimeLbl: UILabel!
    @IBOutlet weak var travelDateLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var avatarView : UIImageView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var genderView : UIImageView!
    @IBOutlet weak var publishPlaceLbl:UILabel!
    
    var disposeBag = DisposeBag()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        destinationLbl.text = nil
        publishTimeLbl.text = nil
        travelDateLbl.text = nil
        descriptionLbl.text = nil
        avatarView.image = nil
        userNameLbl.text = nil
        genderView.image = nil
        publishPlaceLbl.text = nil
        disposeBag = DisposeBag()
    }
}
