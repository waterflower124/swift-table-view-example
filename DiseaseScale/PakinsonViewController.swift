//
//  PakinsonViewController.swift
//  DiseaseScale
//
//  Created by WaterFlower124 on 8/12/18.
//  Copyright © 2018 WaterFlower125. All rights reserved.
//

import UIKit

class PakinsonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var next_button: UIButton!
    @IBOutlet weak var previous_button: UIButton!
    @IBOutlet weak var items_tableview: UITableView!
    @IBOutlet weak var item_label: UILabel!
    @IBOutlet weak var rightSideButton: UIButton!
    @IBOutlet weak var leftSideButton: UIButton!
    @IBOutlet weak var diseasename_Label: UILabel!
    
    var disease = "";

    
    var items_array = [String]();
    var itemsOption_array = [[String]]();
    var itemOptionDesc_array = [[String]]();
    var itemOptionsBothside_array = [Bool]();
    
    var currentItemOptions_array = [String]();
    var currentItemOptionsDesc_array = [String]();

    var scoreOptions_array = [String]();
    var scoreOption = "";
    var leftscoreOption = "";
    var rightscoreOption = "";

    var item_index = 0;
    
    var selectedCell: TableViewCell? = nil
    var selectedCellRow = -1
    var expandedCells  = NSMutableArray()
    
    var score_items = [Double]();
    var leftsideScore_array = [Double]();
    var rightsideScore_array = [Double]();
    var score = -1.0;
    var leftsideScore = -1;
    var rightsideScore = -1;
    var leftsideButtonClicked = false;
    var rightsideButtonClicked = false;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        previous_button.isEnabled = false;
        previous_button.setTitleColor(UIColor.lightGray, for: .normal);
        
        self.items_tableview.delegate = self;
        self.items_tableview.dataSource = self;
        
        if disease == "UPDRS(motor)" {
            items_array = Global.items_pakinson;
            itemsOption_array = Global.itemOptions_pakinson;
            itemOptionDesc_array = Global.itemOptionsDesc_pakinson;
            itemOptionsBothside_array = Global.itemOptionsBothside_pakinson;
        } else if disease == "Twister" {
            items_array = Global.items_excursion;
            itemsOption_array = Global.itemsOptions_excursion;
            itemOptionDesc_array = Global.itemOptionsDesc_excursion;
            itemOptionsBothside_array = Global.itemOptionsBothside_excursion;
        } else if disease == "SARA(ataxia)" {
            items_array = Global.items_ataxia;
            itemsOption_array = Global.itemOptions_ataxia;
            itemOptionDesc_array = Global.itemOptionsDesc_ataxia;
            itemOptionsBothside_array = Global.itemOptionsBothside_ataxia;
        } else if disease == "UHDRS" {
            items_array = Global.items_huntington;
            itemsOption_array = Global.itemOptions_huntington;
            itemOptionDesc_array = Global.itemOptionsDesc_huntington;
            itemOptionsBothside_array = Global.itemOptionsBothside_huntingtone;
        }
        
        score_items = [Double](repeating: -1, count: items_array.count);
        leftsideScore_array = [Double](repeating: -1, count: items_array.count);
        rightsideScore_array = [Double](repeating: -1, count: items_array.count);
        scoreOptions_array = [String](repeating: "", count: items_array.count);
        
        diseasename_Label.text = disease;
        
        currentItemOptions_array = itemsOption_array[0];
        item_label.text = items_array[0];
        currentItemOptionsDesc_array = itemOptionDesc_array[0];
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func homebutton_Click(_ sender: Any) {
        performSegue(withIdentifier: "seguetoHome", sender: self);
    }
    
    @IBAction func leftside_buttonClick(_ sender: Any) {
        leftSideButton.setTitleColor(UIColor.blue, for: .normal);
        rightSideButton.setTitleColor(UIColor.black, for: .normal);
        leftsideButtonClicked = true;
        rightsideButtonClicked = false;
        selectedCellRow = Int(leftsideScore_array[item_index]);
        items_tableview.reloadData();
    }
    
    @IBAction func rightside_buttonClick(_ sender: Any) {
        rightSideButton.setTitleColor(UIColor.blue, for: .normal);
        leftSideButton.setTitleColor(UIColor.black, for: .normal);
        rightsideButtonClicked = true;
        leftsideButtonClicked = false;
        selectedCellRow = Int(rightsideScore_array[item_index]);
        items_tableview.reloadData();
    }
    
    
    @IBAction func previousbutton_Click(_ sender: Any) {
        item_index -= 1;
        if next_button.title(for: .normal) == "Score" {
            next_button.setTitle("Next", for: .normal);
        }
        if item_index == 0 {
            previous_button.isEnabled = false;
            previous_button.setTitleColor(UIColor.lightGray, for: .normal);
        }
        if itemOptionsBothside_array[item_index] {
            leftSideButton.isHidden = false;
            rightSideButton.isHidden = false;
            leftsideButtonClicked = true;
            leftSideButton.setTitleColor(UIColor.blue, for: .normal);
            leftSideButton.layer.borderWidth = 1;
            rightSideButton.setTitleColor(UIColor.black, for: .normal);
            rightSideButton.layer.borderWidth = 1;
            
            rightsideButtonClicked = false;
            leftsideButtonClicked = true;
            selectedCellRow = Int(leftsideScore_array[item_index]);
        } else {
            leftSideButton.isHidden = true;
            rightSideButton.isHidden = true;
            
            selectedCellRow = Int(score_items[item_index]);
        }
        
        item_label.text = items_array[item_index];
        if disease != "UPDRS(motor)" {
            currentItemOptions_array = itemsOption_array[item_index];
        }
        currentItemOptionsDesc_array = itemOptionDesc_array[item_index];
        self.items_tableview.reloadData();
    }
    
    @IBAction func next_buttonClick(_ sender: Any) {
        if item_index < items_array.count {
            if score == -1 {
                if score_items[item_index] == -1 {
                    if itemOptionsBothside_array[item_index] {
                        createAlert(title: "WARNING!", message: "Please select one of following items for both side.")
                    } else {
                        createAlert(title: "WARNING!", message: "Please select one of following items.")
                    }
                } else {
                    previous_button.isEnabled = true;
                    previous_button.setTitleColor(UIColor.black, for: .normal);
                    
                    item_index += 1;
                    
                    if item_index < items_array.count {
                        if item_index == (items_array.count - 1) {
                            next_button.setTitle("Score", for: .normal);
                        }
                        item_label.text = items_array[item_index];
                        if disease != "UPDRS(motor)" {
                            currentItemOptions_array = itemsOption_array[item_index];
                        }
                        currentItemOptionsDesc_array = itemOptionDesc_array[item_index];
                        if itemOptionsBothside_array[item_index] {
                            leftSideButton.isHidden = false;
                            rightSideButton.isHidden = false;
                            leftsideButtonClicked = true;
                            leftSideButton.setTitleColor(UIColor.blue, for: .normal);
                            leftSideButton.layer.borderWidth = 1;
                            rightSideButton.setTitleColor(UIColor.black, for: .normal);
                            rightSideButton.layer.borderWidth = 1;
                            
                            rightsideButtonClicked = false;
                            leftsideButtonClicked = true;
                            if score_items[item_index] != -1 {
                                selectedCellRow = Int(leftsideScore_array[item_index]);
                                leftsideScore = Int(leftsideScore_array[item_index]);
                                rightsideScore = Int(rightsideScore_array[item_index]);
                                leftscoreOption = currentItemOptions_array[leftsideScore];
                                rightscoreOption = currentItemOptions_array[rightsideScore];

                            }
                            else {
                                leftSideButton.layer.borderWidth = 0;
                                rightSideButton.layer.borderWidth = 0;
                                score = -1;
                                scoreOption = "";
                                leftscoreOption = "";
                                rightscoreOption = "";
                                rightsideButtonClicked = false;
                                rightsideScore = -1;
                                leftsideScore = -1;
                                selectedCellRow = -1;
                                
                            }
                            
                        } else {
                            leftSideButton.isHidden = true;
                            rightSideButton.isHidden = true;
                            if score_items[item_index] != -1 {
                                selectedCellRow = Int(score_items[item_index]);
                                scoreOption = currentItemOptions_array[selectedCellRow];
                            } else {
                                score = -1;
                                scoreOption = "";
                                leftscoreOption = "";
                                rightscoreOption = "";
                                rightsideButtonClicked = false;
                                rightsideScore = -1;
                                leftsideScore = -1;
                                selectedCellRow = -1;
                            }
                        }

                        self.items_tableview.reloadData();
                    }
                }
            } else {
                previous_button.isEnabled = true;
                previous_button.setTitleColor(UIColor.black, for: .normal);
                
                score_items[item_index] = score;
                scoreOptions_array[item_index] = scoreOption;
                item_index += 1;
                if item_index < items_array.count {
                    if item_index == (items_array.count - 1) {
                        next_button.setTitle("Score", for: .normal);
                    }
                    
                    item_label.text = items_array[item_index];
                    if disease != "UPDRS(motor)" {
                        currentItemOptions_array = itemsOption_array[item_index];
                    }
                    currentItemOptionsDesc_array = itemOptionDesc_array[item_index];
                    if itemOptionsBothside_array[item_index] {
                        leftSideButton.isHidden = false;
                        rightSideButton.isHidden = false;
                        leftsideButtonClicked = true;
                        leftSideButton.setTitleColor(UIColor.blue, for: .normal);
                        leftSideButton.layer.borderWidth = 0.0;
                        rightSideButton.setTitleColor(UIColor.black, for: .normal);
                        rightSideButton.layer.borderWidth = 0.0;
                        
                        if score_items[item_index] != -1 {
                            selectedCellRow = Int(leftsideScore_array[item_index]);
                            leftsideScore = Int(leftsideScore_array[item_index]);
                            rightsideScore = Int(rightsideScore_array[item_index]);
                            leftscoreOption = currentItemOptions_array[leftsideScore];
                            rightscoreOption = currentItemOptions_array[rightsideScore];
                            
                            leftSideButton.setTitleColor(UIColor.blue, for: .normal);
                            leftSideButton.layer.borderWidth = 1;
                            rightSideButton.setTitleColor(UIColor.black, for: .normal);
                            rightSideButton.layer.borderWidth = 1;
                            
                        } else {
                            leftSideButton.layer.borderWidth = 0;
                            rightSideButton.layer.borderWidth = 0;
                            score = -1;
                            scoreOption = "";
                            leftscoreOption = "";
                            rightscoreOption = "";
                            rightsideButtonClicked = false;
                            rightsideScore = -1;
                            leftsideScore = -1;
                            selectedCellRow = -1;
                            
                        }
                    } else {
                        leftSideButton.isHidden = true;
                        rightSideButton.isHidden = true;
                        if score_items[item_index] != -1 {
                            selectedCellRow = Int(score_items[item_index]);
                            scoreOption = currentItemOptions_array[selectedCellRow];
                        } else {
                            score = -1;
                            scoreOption = "";
                            leftscoreOption = "";
                            rightscoreOption = "";
                            rightsideButtonClicked = false;
                            rightsideScore = -1;
                            leftsideScore = -1;
                            selectedCellRow = -1;
                        }
                    }

                    self.items_tableview.reloadData();
                }
            }
        }
        if next_button.titleLabel?.text == "Score" {
            //Go to estimate screen
            performSegue(withIdentifier: "seguefromPakinson", sender: self);
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguefromPakinson" {
            let vc = segue.destination as! ScoreViewController;
            vc.score_items = self.score_items;
            vc.disease_name = disease;
            vc.items_array = items_array;
            vc.scoreOptions_array = scoreOptions_array;
        } else if segue.identifier == "seguetoHome" {
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentItemOptions_array.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell;
        cell.lblOption?.text = currentItemOptions_array[indexPath.row];
        cell.optionScore?.text = String(format: "%d", indexPath.row);
        
        if itemOptionsBothside_array[item_index] {
            if leftsideButtonClicked {
                if leftsideScore == indexPath.row {
                    cell.lblOption.textColor = UIColor.blue;
                    cell.optionScore.textColor = UIColor.blue;
                } else {
                    cell.lblOption.textColor = UIColor.black;
                    cell.optionScore.textColor = UIColor.black;
                }
            }
            if rightsideButtonClicked {
                if rightsideScore == indexPath.row {
                    cell.lblOption.textColor = UIColor.blue;
                    cell.optionScore.textColor = UIColor.blue;
                } else {
                    cell.lblOption.textColor = UIColor.black;
                    cell.optionScore.textColor = UIColor.black;
                }
            }
        } else {
            cell.lblOption.textColor = UIColor.black;
            cell.optionScore.textColor = UIColor.black;
        }
        if indexPath.row == selectedCellRow {
            cell.lblOption.textColor = UIColor.blue;
            cell.optionScore.textColor = UIColor.blue;
        } else {
            cell.lblOption.textColor = UIColor.black;
            cell.optionScore.textColor = UIColor.black;
        }

        [self.expandedCells .remove(indexPath)];
        

        return cell;
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = tableView.cellForRow(at: indexPath) as? TableViewCell
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
        if(item_index < items_array.count) {
            if itemOptionsBothside_array[item_index] {
                if leftsideButtonClicked {
                    leftscoreOption = currentItemOptions_array[selectedCellRow];
                    leftsideScore = selectedCellRow;
                    leftSideButton.layer.cornerRadius = 5;
                    leftSideButton.layer.borderWidth = 1;
                    leftSideButton.layer.borderColor = UIColor.blue.cgColor;
                    leftsideScore_array[item_index] = Double(leftsideScore);
                } else if rightsideButtonClicked {
                    rightscoreOption = currentItemOptions_array[selectedCellRow];
                    rightsideScore = selectedCellRow;
                    rightSideButton.layer.cornerRadius = 5;
                    rightSideButton.layer.borderWidth = 1;
                    rightSideButton.layer.borderColor = UIColor.blue.cgColor;
                    rightsideScore_array[item_index] = Double(rightsideScore);
                }
                
                if leftsideScore != -1 && rightsideScore != -1 {
                    score = Double(leftsideScore + rightsideScore) / 2.0;
                    scoreOption = "Left: " + leftscoreOption + " : " + String(format: "%d", leftsideScore) + "\n" + "Right: " + rightscoreOption + " : " + String(format: "%d", rightsideScore);
                } else {
                    score = -1;
                }
            } else {
                score = Double(selectedCellRow);
                scoreOption = currentItemOptions_array[selectedCellRow] + " : " + String(format: "%.1f", score);
            }
        }
      }


    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath) as? TableViewCell
        if selectedCellRow == indexPath.row {
            cell?.lblOption.textColor = UIColor.blue;
            cell?.optionScore.textColor = UIColor.blue;
            cell?.lblDesc.textColor = UIColor.lightGray;
        } else {
            cell?.lblOption.textColor = UIColor.black;
            cell?.optionScore.textColor = UIColor.black;
            cell?.lblDesc.textColor = UIColor.lightGray;
        }
        if selectedCell != nil && selectedCellRow == indexPath.row {
            if self.expandedCells.contains(indexPath) {

                let tempTextView = selectedCell!.lblDesc
                var frame: CGRect
                tempTextView?.text = currentItemOptionsDesc_array[indexPath.row]
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
