//
//  scroll view.swift
//  Gesture
//
//  Created by agile on 3/17/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class scroll_view: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrplayer = [
        ["name" : "Dhoni", "image" : "dhoni", "score" : "1000", "mathes" : "250"],
        ["name" : "sachin", "image" : "sachin", "score" : "1000", "mathes" : "250"],
        ["name" : "Sehwag", "image" : "Sehwag", "score" : "1000", "mathes" : "250"],
        ["name" : "kohli", "image" : "kohli", "score" : "1000", "mathes" : "250"],
        ["name" : "dhavan", "image" : "dhavan", "score" : "1000", "mathes" : "250"],
        ["name" : "murli", "image" : "murli", "score" : "1000", "mathes" : "250"],
        ["name" : "raina", "image" : "raina", "score" : "1000", "mathes" : "250"],
        ["name" : "yuvraj", "image" : "yuvraj", "score" : "1000", "mathes" : "250"],
        ["name" : "Jadeja", "image" : "jadeja", "score" : "1000", "mathes" : "250"],
        ["name" : "rohit", "image" : "rohit", "score" : "1000", "mathes" : "250"]]
    
    var selectedindex: [Int] = []
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrplayer.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:PlayerCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlayerCollectionViewCell", for: indexPath) as! PlayerCollectionViewCell
        cell.objName.text = arrplayer[indexPath.row]["name"]
        cell.objImage.image = UIImage(named:arrplayer[indexPath.row]["image"]!)
        cell.objScore.text = arrplayer[indexPath.row]["score"]
        cell.objMatches.text = arrplayer[indexPath.row]["mathes"]
        
        if selectedindex.contains(indexPath.row) {
            cell.objselectview.isHidden = false
        }
        else{
            cell.objselectview.isHidden = true
        }
            
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        if self.selectedindex.contains(indexPath.row) {
            self.selectedindex=self.selectedindex.filter(){ $0 != indexPath.row}
           // self.selectedindex.remove(at: self.selectedindex.index(of: indexPath.row)!)
        }else{
            self.selectedindex.append(indexPath.row)
        }
        collectionView.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
