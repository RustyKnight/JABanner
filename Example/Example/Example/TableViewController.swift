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
	
	var rowCount = 0
	var loading = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.rightBarButtonItems = [endItem, beginItem]
    
//    guard let refreshController = Bundle.main.loadNibNamed("AppleRefreshController", owner: self, options: nil)?[0] as? AppleRefreshController else {
//      fatalError("Could not load main view")
//    }
    
    bannerController.refreshController = AppleRefreshController()
    bannerController.install(on: tableView)
		bannerController.addRefreshBegunTrigger(source: self, target: #selector(performRefresh))
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return rowCount
  }
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "GetRidOfWarnings", for: indexPath)
		cell.textLabel?.text = "\(indexPath.row)"
		return cell
	}
  
  @IBAction func endRefreshing(_ sender: Any) {
		loading = false
    bannerController.endRefreshing()
  }
  
  @IBAction func beginRefreshing(_ sender: Any) {
		bannerController.beginRefreshing()
  }
	
	@objc func performRefresh() {
//		DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(5), execute: {
//			self.endRefreshing(self)
//		})
		rowCount = 0
		loading = true
		tableView.reloadData()
		DispatchQueue.global().async {
			while self.loading {
				Thread.sleep(forTimeInterval: 1.0)
				DispatchQueue.main.async {
					self.addRow()
				}
			}
		}
	}
	
	func addRow() {
		rowCount += 1
		tableView.reloadData()
	}
}
