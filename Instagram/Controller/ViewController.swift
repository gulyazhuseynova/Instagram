//
//  ViewController.swift
//  Instagram
//
//  Created by Gulyaz Huseynova on 01.08.22.
//

import UIKit

import SDWebImage

class ViewController: UIViewController{
    
    var instagramManager = InstagramManager()
    var user1: [Users] = []
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        table.dataSource = self
        collection.dataSource = self
        
        collection.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        table.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
        super.viewDidLoad()
        self.view.addSubview(viewLoc(XCoordinate: 0, YCoordinate: 773))
        self.view.addSubview(buttonLoc(imageName: K.Images.camera, XCoordinate: 20, YCoordinate: 44))
        self.view.addSubview(buttonLoc(imageName: K.Images.dmButton, XCoordinate: 351, YCoordinate: 44))
        self.view.addSubview(buttonLoc(imageName: K.Images.home, XCoordinate: 20, YCoordinate: 788))
        self.view.addSubview(buttonLoc(imageName: K.Images.magnificer, XCoordinate: 103, YCoordinate: 788))
        self.view.addSubview(buttonLoc(imageName: K.Images.plus, XCoordinate: 186, YCoordinate: 788))
        self.view.addSubview(buttonLoc(imageName: K.Images.heart, XCoordinate: 268, YCoordinate: 788))
        self.view.addSubview(buttonLoc(imageName: K.Images.person, XCoordinate: 351, YCoordinate: 788))
        self.view.addSubview(labelLoc(labelText: K.Labels.instagram, labelFont: K.Labels.BillaBong, XCoordinate: 132, YCoordinate: 44))
        
        
        let anonymousFunction = { (fetchedUserList : [Users]) in
            DispatchQueue.main.async {
                self.user1 = fetchedUserList
                self.table.reloadData()
                self.collection.reloadData()
            }
        }
        
        
        instagramManager.fetchInstagram(onCompletion: anonymousFunction)
    }
    
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = user1[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
        
        cell.nameLabel.text = user.username
        cell.captionLabel.text = "@\(user.username): \(user.caption)"
        cell.postImage.sd_setImage(with: user.image, placeholderImage: UIImage(named: "placeholder.png"))
        cell.profilPhoto.sd_setImage(with: user.profilPhoto, placeholderImage: UIImage(named: "placeholder.png"))
        return cell
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return user1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let user = user1[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.storyImage.sd_setImage(with: user.profilPhoto, placeholderImage: UIImage(named: "placeholder.png"))
        cell.storyLabel.text = user.username
        return cell
    }
    
    
}
