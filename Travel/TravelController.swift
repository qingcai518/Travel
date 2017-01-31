//
//  TravelController.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

class TravelController: ViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let model = TravelModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setTableView() {
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func getData() {
        model.getTravelInfos { msg in
            if let errorMsg = msg {
                print("error = \(errorMsg)")
            }
            
            tableView.reloadData()
        }
    }
}

extension TravelController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 228
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
