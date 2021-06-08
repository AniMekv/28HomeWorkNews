//
//  NewsCell.swift
//  AniMekvabidze28
//
//  Created by Mac User on 6/8/21.
//

import UIKit
import Kingfisher

class NewsCell: UITableViewCell {
    
    @IBOutlet weak var imgNews: UIImageView!
    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with item: NewsViewModel) {
        imgNews.kf.setImage(with: item.pictureUrl)
        labelAuthor.text = item.author
        labelDescription.text = item.description
        labelDate.text = item.publishDate
    }
    
}
