//
//  ViewController.swift
//  NestedTable_CollectionView
//
//  Created by Ümit Örs on 4.10.2023.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nestedBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let dest = sb.instantiateViewController(identifier: "nested") as? NestedTable_CollectionView {
            dest.modalPresentationStyle = .fullScreen
            self.present(dest, animated: false)
        }
    }
    
    @IBAction func scrollNestedBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let dest = sb.instantiateViewController(identifier: "scrollnested") as? ScrollViewTable_CollectionViewNestedDynamic {
            dest.modalPresentationStyle = .fullScreen
            self.present(dest, animated: false)
        }
    }
    
}

