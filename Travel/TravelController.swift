//
//  TravelController.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import MJRefresh

class TravelController: ViewController {
    @IBOutlet weak var tableView: UITableView!
    let model = TravelModel()
    
    var header : MJRefreshGifHeader!
    var footer : MJRefreshAutoNormalFooter!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRefresh()
        setTableView()
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
        self.tableView.mj_header = header
        
        // refresh用footerの設定.
        footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(getMoreData))
        self.tableView.mj_footer = footer
    }
    
    private func setTableView() {
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func getData() {
        model.getTravelInfos { msg in
            header.endRefreshing()
            footer.isHidden = false
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            tableView.reloadData()
        }
    }
    
    func getMoreData() {
        model.getMoreTravelInfos { (msg, isLastData) in
            footer.endRefreshing()
            footer.isHidden = isLastData
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            tableView.reloadData()
        }
    }
}

extension TravelController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 232
    }
}

extension TravelController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.travelInfos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelCell", for: indexPath) as! TravelCell
        let info = model.travelInfos[indexPath.row]
        
        cell.avatarView.kf.setImage(with: URL(string: info.avatarUrl))
        cell.userNameLbl.text = info.userName
        cell.destinationLbl.text = info.destination
        cell.descriptionLbl.text = info.departure + " " + info.description
        cell.genderView.image = info.gender == Female ? UIImage(named: "female") : UIImage(named: "male")
        cell.publishPlaceLbl.text = info.publishPlace
        cell.publishTimeLbl.text = info.publishTime
        cell.travelDateLbl.text = info.travelDate
        
        return cell
    }
}
