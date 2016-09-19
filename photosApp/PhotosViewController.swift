//
//  PhotosViewController.swift
//  photosApp
//
//  Created by Victor Lee on 20/9/16.
//  Copyright © 2016 VictorLee. All rights reserved.
//

import UIKit


class PhotosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    //MARK: Properties
    
    var photos = Photo.downloadAllPhotos()
    
    struct Storyboard {
        static let photoCell = "PhotoCell"
        static let defaultRowHeight : CGFloat = 250.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.rowHeight = Storyboard.defaultRowHeight
        
        
        
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension PhotosViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: Storyboard.photoCell)! as! PhotoTableViewCell
        
        let photo = self.photos[indexPath.row]
        
        cell.photo = photo
        
        return cell
    
    }
}
