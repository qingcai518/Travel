//
//  FriendController.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import MJRefresh

class FriendController: ViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var filterBtn: UIButton!
    
    let model = FriendModel()
    var header : MJRefreshGifHeader!
    var footer : MJRefreshAutoNormalFooter!

    @IBAction func showFilterContents() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "只看女生", style: .default) { [weak self] action in
            self?.getFemaleData()
        }
        
        let action2 = UIAlertAction(title: "只看男生", style: .default) { [weak self] action in
            self?.getMaleData()
        }

        let action3 = UIAlertAction(title: "全国", style: .default) { action in
            print("地域によってフィルタリングを行う.")
        }
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRefresh()
        setCollectionView()
        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setRefresh() {
        // refresh用headerの設定.
        header = MJRefreshGifHeader(refreshingTarget: self, refreshingAction: #selector(getData))
        header.setImages(AppUtility.getIdleImages(), for: .idle)
        header.setImages(AppUtility.getPullingImages(), for: .pulling)
        header.setImages(AppUtility.getRefreshingImages(), for: .refreshing)
        self.collectionView.mj_header = header
        
        // refresh用footerの設定.
        footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(getMoreData))
        self.collectionView.mj_footer = footer
    }
    
    private func setCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func getData() {
        model.getFriendInfos { msg in
            header.endRefreshing()
            footer.isHidden = false
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            collectionView.reloadData()
        }
    }
    
    func getMoreData() {
        model.getMoreFriendInfos { (msg, isLatest) in
            footer.endRefreshing()
            footer.isHidden = isLatest
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
