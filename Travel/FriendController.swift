//
//  FriendController.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

class FriendController: ViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var filterBtn: UIButton!
    
    let model = FriendModel()
    
    @IBAction func showFilterContents() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "只看女生", style: .default) { [weak self] action in
            self?.getFemaleData()
        }
        
        let action2 = UIAlertAction(title: "只看男生", style: .default) { [weak self] action in
            self?.getMaleData()
        }
        
        let action3 = UIAlertAction(title: "旅途中", style: .default) { action in
            
        }
        
        let action4 = UIAlertAction(title: "正在募集", style: .default) { action in
            print("募集中の旅を検索する.")
        }
        
        let action5 = UIAlertAction(title: "全国", style: .default) { action in
            print("地域によってフィルタリングを行う.")
        }
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        alertController.addAction(action4)
        alertController.addAction(action5)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCollectionView()
        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func getData() {
        model.getFriendInfos { msg in
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            collectionView.reloadData()
        }
    }
    
    private func getFemaleData() {
        model.getFemaleUsers { msg in
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            collectionView.reloadData()
        }
    }
    
    private func getMaleData() {
        model.getMaleUsers { msg in
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            collectionView.reloadData()
        }
    }
}

extension FriendController : UICollectionViewDelegate {
    
}

extension FriendController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (screenWidth - 4 * 4) / 3
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(4, 4, 0, 4)
    }
}

extension FriendController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.friendInfos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendCell", for: indexPath) as! FriendCell
        let info = model.friendInfos[indexPath.row]
        cell.avatarView.kf.setImage(with: URL(string: info.avatarUrl))
        cell.genderView.image = UIImage(named: info.gender)
        cell.statusView.backgroundColor = UIColor.init(white: 0, alpha: 0.8)
        cell.statusView.isHidden = !info.isTravelling
        return cell
    }
}
