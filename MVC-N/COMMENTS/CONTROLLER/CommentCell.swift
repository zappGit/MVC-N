//
//  CommentCell.swift
//  MVC-N
//
//  Created by Артем Хребтов on 22.06.2021.
//

import UIKit
class CommentCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure (with comment: Comment){
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
