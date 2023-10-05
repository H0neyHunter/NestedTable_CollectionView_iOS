//
//  ScrollViewTable_CollectionViewNestedDynamic.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 4.10.2023.
//

import UIKit

class ScrollViewTable_CollectionViewNestedDynamic: UIViewController {
    @IBOutlet weak var backBtn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initFonk()
    }
    private func initFonk(){
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
