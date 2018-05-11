//
//  UserTableView.swift
//  ImplemtationMVC
//
//  Created by Admin on 2/8/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class LeaderBoardTableView: UITableView {
    
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

extension LeaderBoardTableView : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaderBoardCell", for: indexPath) as! leaderBoardCell
        
        cell.serialNumber.text = String(indexPath.row)
        cell.name.text = "Anurag"
        
        DispatchQueue.main.async {
                cell.leaderBoardView.dropShadow(color: .lightGray, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        }
  
        cell.genderAndAge.text = "Male / 26"
        cell.score.text = "777"

        return cell
    }
    
}

class leaderBoardCell: UITableViewCell {
    
    @IBOutlet weak var leaderBoardView : UIView!
    @IBOutlet weak var serialNumber : UILabel!
    @IBOutlet weak var name : UILabel!
    @IBOutlet weak var genderAndAge : UILabel!
    @IBOutlet weak var score : UILabel!
    
}
