//
//  BookCoverCell.swift
//  StoryVaultAI
//
//  Created by DM on 3/4/25.
//

import UIKit

class BookCoverCell: UICollectionViewCell {
    @IBOutlet weak var coverImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 10
        contentView.clipsToBounds = true
    }

    func configure(with story: Story) {
        coverImageView.image = UIImage(named: story.imageName)
        coverImageView.contentMode = .scaleAspectFit // Ensures the image scales correctly
    }
}
