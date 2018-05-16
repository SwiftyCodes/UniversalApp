//
//  PollTableView.swift
//  UniversalApp
//
//  Created by Admin on 5/16/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class PollTableView: UITableView {

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.dataSource=self
        
    }

}
extension PollTableView : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pollCell", for: indexPath) as! PollCell
        
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        cell.progressView.transform = transform
     
        return cell
    }
}

class PollCell: UITableViewCell {
    
    @IBOutlet weak var progressView : UIProgressView!
    
}


