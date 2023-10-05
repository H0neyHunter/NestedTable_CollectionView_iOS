//
//  NestedTable_CollectionView.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 4.10.2023.
//

import UIKit

class NestedTable_CollectionView: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! firstCell
        
        cell.width = view.frame.size.width
        
        return cell
    }
    
    @IBOutlet weak var backBtn: UIImageView!
    
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initFonk()
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
