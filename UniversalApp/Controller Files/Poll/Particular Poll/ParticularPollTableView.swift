//
//  ParticularPollTableView.swift
//  UniversalApp
//
//  Created by Admin on 5/16/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ParticularPollTableView: UITableView {

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

extension ParticularPollTableView : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "particularPollCell", for: indexPath) as! ParticularPollCell
        

        
        
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        cell.yesProgressView.transform = transform
        cell.noProgressView.transform = transform
        return cell
    }
}

class ParticularPollCell: UITableViewCell {
    @IBOutlet weak var progressView : UIView!
    @IBOutlet weak var yesProgressView : UIProgressView!
    @IBOutlet weak var noProgressView : UIProgressView!
}



