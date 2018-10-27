//
//  ViewController.swift
//  DiseaseScale
//
//  Created by WaterFlower124 on 8/12/18.
//  Copyright © 2018 WaterFlower125. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var disease = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pakinsonbutton_Clicke(_ sender: Any) {
        disease = "UPDRS(motor)";
        performSegue(withIdentifier: "seguetoexam", sender: self);
    }
    
    @IBAction func spasbutton_Click(_ sender: Any) {
        disease = "Twister";
        performSegue(withIdentifier: "seguetoexam", sender: self);
    }
    
    @IBAction func ataxiabutton_Click(_ sender: Any) {
        disease = "SARA(ataxia)";
        performSegue(withIdentifier: "seguetoexam", sender: self);
    }
    
    @IBAction func huntingtonbutton_Click(_ sender: Any) {
        disease = "UHDRS";
        performSegue(withIdentifier: "seguetoexam", sender: self);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! PakinsonViewController;
        vc.disease = disease;
    }
}

