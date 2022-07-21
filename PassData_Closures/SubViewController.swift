//
//  SubViewController.swift
//  PassData_Closures
//
//  Created by ADMIN on 21/07/2022.
//

import UIKit

typealias textClo = (String?) -> Void

class SubViewController: UIViewController {

    @IBOutlet weak var labelSV: UILabel!
    @IBOutlet weak var imageViewSV: UIImageView!
    @IBOutlet weak var txtFieldSV: UITextField!
    
    var text: textClo? = nil
    
    var txtLabel:String?
    var image:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelSV.text = txtLabel
        if let exImage = image {
            imageViewSV.image = exImage
        }
    }

    @IBAction func btnBackTapped(_ sender: UIButton) {
        text?(txtFieldSV.text ?? "")
        dismiss(animated: true, completion: nil)
        
        //navigationController?.popViewController(animated: true)
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
