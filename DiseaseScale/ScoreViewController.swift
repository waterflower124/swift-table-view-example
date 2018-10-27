//
//  ScoreViewController.swift
//  DiseaseScale
//
//  Created by WaterFlower124 on 8/13/18.
//  Copyright © 2018 WaterFlower125. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var diseasename_Label: UILabel!
    @IBOutlet weak var totalscore_Label: UILabel!
    
    
    var score_items = [Double]();
    var disease_name = "";
    var items_array = [String]();
    var scoreOptions_array = [String]();
    
    
    var selectedCell: ScoreTableViewCell? = nil
    var selectedCellRow = -1
    var expandedCells  = NSMutableArray()
    
    var totalscore = 0.0;
    var ratingString = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(scoreOptions_array);
        
        for i in (0..<score_items.count) {
            totalscore += score_items[i];
        }
        totalscore_Label.text = String(format: "%.1f", totalscore);
        diseasename_Label.text = disease_name;
        
        ratingString = disease_name + " Rating Score\n\n";
        ratingString += "Total Score: " + String(format: "%.1f", totalscore) + "\n\n";
        for i in (0..<score_items.count) {
            ratingString += items_array[i] + ": " + String(format: "%.1f", score_items[i]) + "\n";
            ratingString += scoreOptions_array[i] + "\n\n";
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @IBAction func copybutton_Click(_ sender: Any) {
        
        let pasteboard = UIPasteboard.general;
        pasteboard.string = ratingString;
        createAlert(title: "Notice", message: "Rating Score is copied to clipboard");
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items_array.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "score_cell", for: indexPath) as! ScoreTableViewCell;
        cell.itemname_Label?.text = items_array[indexPath.row];
        cell.itemscore_Label?.text = String(format: "%.1f", score_items[indexPath.row]);
        
        return cell;
    }
    
    @IBAction func sharebutton_Click(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: [ratingString], applicationActivities: nil);
        activityVC.popoverPresentationController?.sourceView = self.view;
        
        self.present(activityVC, animated: true, completion: nil);
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = tableView.cellForRow(at: indexPath) as? ScoreTableViewCell
        selectedCellRow = indexPath.row
        if self.expandedCells.contains(indexPath) {
            [self.expandedCells .remove(indexPath)]
        }
        else{
            [self.expandedCells .add(indexPath)]
        }
        
        tableView.beginUpdates()
        tableView.endUpdates()
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        if selectedCell != nil && selectedCellRow == indexPath.row {
            if self.expandedCells.contains(indexPath) {
                
                let tempTextView = selectedCell!.itemscoreDesc_Label
                var frame: CGRect
                tempTextView?.text = scoreOptions_array[indexPath.row]
                frame = tempTextView!.frame
                frame.size.height = tempTextView!.intrinsicContentSize.height+15
                tempTextView!.frame = frame
                return 75 + frame.size.height
            }else{
                return 50
            }
        }else{
            return 50
        }
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message:message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
}
