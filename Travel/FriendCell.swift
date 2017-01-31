//
//  FriendCell.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import RxSwift

class FriendCell: UICollectionViewCell {
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var genderView: UIImageView!
    @IBOutlet weak var statusView: UIView!
    
    var disposeBag = DisposeBag()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarView.image = nil
        genderView.image = nil
        
        disposeBag = DisposeBag()
    }
}
