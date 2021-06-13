//
//  LoadingTableViewCell.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import UIKit

class LoadingTableViewCell: UITableViewCell {
    
     static var reuseIdentifier = String(describing: LoadingTableViewCell.self)

    @IBOutlet var loadingIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
        
        self.loadingIndicator.startAnimating()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
