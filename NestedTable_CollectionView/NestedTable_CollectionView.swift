//
//  NestedTable_CollectionView.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 4.10.2023.
//

import UIKit

class NestedTable_CollectionView: UIViewController {
    
    
    
    
    
    @IBOutlet weak var backBtn: UIImageView!
    
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initFonk()
        getData()
    }
    private func initFonk(){
        tb.delegate = self
        tb.dataSource = self
        
        tb.estimatedRowHeight = 150
        tb.rowHeight = UITableView.automaticDimension
        
        backBtn.isUserInteractionEnabled = true
        let gBack = UITapGestureRecognizer(target: self, action: #selector(backFonk))
        backBtn.addGestureRecognizer(gBack)
    }
    @objc func backFonk(){
        self.dismiss(animated: true)
    }
    struct listNested {
        let id : Int
        let imageName : String
        let imageDrawable : String
    }
    var listNestedArray = [listNested]()
    
    struct list {
        let header : String
        let listNested : [listNested]
    }
    var listArray = [list]()
    private func getData(){
        for i in 0 ... 200 {
            listNestedArray.append(listNested(id: i, imageName: "Mockup \(i)", imageDrawable: "image"))
        }
        for i in 0 ... 40 {
            listArray.append(list(header: "Header \(i)", listNested: listNestedArray))
        }
        tb.reloadData()
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension NestedTable_CollectionView : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! firstCell
        
        let item = listArray[indexPath.row]
        cell.header.text = item.header
        cell.listNestedArray = item.listNested
        
        let layout = cell.cv.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: (tb.frame.size.width - 80) / 3, height: (tb.frame.size.width - 80) / 3)
        
        return cell
    }
}
