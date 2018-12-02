//
//  TableViewController.swift
//  Example
//
//  Created by Shane Whitehead on 2/12/18.
//  Copyright © 2018 Kaizen Enteripises. All rights reserved.
//

import UIKit
import JABanner

class TableViewController: UITableViewController {
  
  @IBOutlet var endItem: UIBarButtonItem!
  @IBOutlet var beginItem: UIBarButtonItem!

  let bannerController: BannerController = BannerController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.rightBarButtonItems = [endItem, beginItem]
    
//    guard let refreshController = Bundle.main.loadNibNamed("AppleRefreshController", owner: self, options: nil)?[0] as? AppleRefreshController else {
//      fatalError("Could not load main view")
//    }
    
    bannerController.refreshController = AppleRefreshController()
    bannerController.install(on: tableView)
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 0
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 0
  }
  
  @IBAction func endRefreshing(_ sender: Any) {
    bannerController.endRefreshing()
  }
  
  @IBAction func beginRefreshing(_ sender: Any) {
    bannerController.beginRefreshing()
  }
}
