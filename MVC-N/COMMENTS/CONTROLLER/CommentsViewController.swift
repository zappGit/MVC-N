//
//  ViewController.swift
//  MVC-N
//
//  Created by Артем Хребтов on 22.06.2021.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var comments = [Comment]()
    override func viewDidLoad() {
        super.viewDidLoad()
        CommentNetwork.getComment { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    
    }
}
extension CommentsViewController: UITableViewDelegate {
    
}
extension CommentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.configure(with: comment)
        return cell
    }
    
    
}
