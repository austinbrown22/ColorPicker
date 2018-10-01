//
//  ColorsViewController.swift
//  ColorPicker
//
//  Created by Austin Brown on 9/30/18.
//  Copyright © 2018 Austin Brown. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Picker: UIPickerView!
    
    
    struct Color {
        let color: String?
        let uiColor : UIColor?
    }
    
    let colors =
        [
            Color(color: "Red", uiColor: UIColor.red),
            Color(color: "Orange", uiColor: UIColor.orange),
            Color(color: "Yellow", uiColor: UIColor.yellow),
            Color(color: "Green", uiColor: UIColor.green),
            Color(color: "Blue", uiColor: UIColor.blue),
            Color(color: "Purple", uiColor: UIColor.purple),
            ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].color
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label.text = colors[row].color
        self.view.backgroundColor = colors[row].uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = colors[0].color
        self.view.backgroundColor = colors[0].uiColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
