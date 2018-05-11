//
//  FeedTableCell.swift
//  UniversalApp
//
//  Created by Admin on 5/11/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class FeedTableView: UITableView {

    
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

extension FeedTableView : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath) as! feedCell
        
        cell.userName.text = "Anurag"
        
        DispatchQueue.main.async {
            cell.feedView.dropShadow(color: .lightGray, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        }
        
        cell.views.text = "120"
        
        return cell
    }
    
}

class feedCell: UITableViewCell {
    
    @IBOutlet weak var feedView : UIView!
    @IBOutlet weak var userImage : UIImageView!
    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var views : UILabel!
    @IBOutlet weak var descriptionText : UILabel!
    @IBOutlet weak var mainImage : UIImageView!
    
}

