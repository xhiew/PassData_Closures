//
//  ViewController.swift
//  PassData_Closures
//
//  Created by ADMIN on 21/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewRV: UIImageView!
    @IBOutlet weak var labelRV: UILabel!
    @IBOutlet weak var txtFieldRV: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelRV.text = "Root View Controller"
    }

    @IBAction func btnNavTapped(_ sender: UIButton) {
        
        let subView = storyboard?.instantiateViewController(withIdentifier: "SubViewController") as! SubViewController
        subView.txtLabel = txtFieldRV.text ?? "nil"
        subView.image = imageViewRV.image
        subView.text = { newValue in
            self.labelRV.text = newValue
        }
        //navigationController?.pushViewController(subView, animated: true)
        present(subView, animated: true, completion: nil)
    }
    
}

