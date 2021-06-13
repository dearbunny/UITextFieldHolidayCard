//
//  ViewController.swift
//  UITextField文字縮放
//
//  Created by ROSE on 2021/6/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    //字數
    @IBOutlet weak var titleTextNumber: UILabel!
    @IBOutlet weak var contentTextNumber: UILabel!
    
    @IBOutlet weak var sizeSlider: UISlider!
    @IBOutlet weak var titleFontSizeLabel: UILabel!
    @IBOutlet weak var contentFontSizeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var styleSegmented: UISegmentedControl!
    
    // 輸入匡預設值
    var noteText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    //輸入匡
    @IBAction func inputTitle(_ sender: UITextField) {
        //取得字數
        let text = titleTextField.text?.count
        titleTextNumber.text = "\(text!)"
        //收鍵盤
        noteText = "\(sender.text!)"
    }
    
    @IBAction func inputContent(_ sender: UITextField) {
        //取得字數
        let text = contentTextField.text?.count
        contentTextNumber.text = "\(text!)"
        //收鍵盤
        noteText = "\(sender.text!)"
    }
    
    
    //改變文字大小
    @IBAction func changeTitleFontSize(_ sender: UISlider) {
//        let font = myTextField.font!
//        let newFont = font.withSize(30.3333)
//        myTextField.font = newFont
//        
        //取得slider數值並小數二位
        let size = sender.value
        let numberString = String(format: "%.2f", size)
        
//        let number1: Float = 10
//        let number2: CGFloat = CGFloat(number1)
        
        titleLabel.font = titleLabel.font?.withSize(CGFloat(size))
        //放大輸入匡的字
        //myTextField.font = myTextField.font?.withSize(CGFloat(size))
        
        //顯示文字大小
        titleFontSizeLabel.text = "\(numberString)"
        
        print(numberString)
    }
    @IBAction func changeContentFontSize(_ sender: UISlider) {
        //取得slider數值並小數二位
        let size = sender.value
        let numberString = String(format: "%.2f", size)
        contentLabel.font = contentLabel.font?.withSize(CGFloat(size))
        //顯示文字大小
        contentFontSizeLabel.text = "\(numberString)"
    }
    
    
    // 套用按鈕
    @IBAction func Apply(_ sender: UIButton) {
        //顯示輸入文字
        titleLabel.text = titleTextField.text
        contentLabel.text = contentTextField.text
    }
    
    // 點空白收起鍵盤
    @IBAction func topGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    // 選擇卡片樣式
    @IBAction func ChooseCard(_ sender: UISegmentedControl) {
        if styleSegmented.selectedSegmentIndex == 0{
            cardImageView.image = UIImage(named: "card-1")
            titleLabel.text = "聖誕快樂"
            contentLabel.text = "I hope you have a Merry Christmas!"
            
        } else if styleSegmented.selectedSegmentIndex == 1{
            cardImageView.image = UIImage(named: "card-2")
            titleLabel.text = "生日快樂"
            contentLabel.text = "把我所有的愛送給你，用我所有的情關心你！親愛的，願你在生日這天裡，快樂幸福！一天都有好心情，晚上有好夢！"
        } else {
            cardImageView.image = UIImage(named: "card-3")
            titleLabel.text = "情人節快樂"
            contentLabel.text = "伸指摘一片玫瑰點在唇邊，你鮮紅的嘴唇是那愛情的顏色。一縷幽香，只是那靜悄悄的綻放，卻漫天飛舞著你的傳說。情人節快樂！"
            
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        reset()
    }
    
    // 顯示輸入匡文字
    func reset() {
        titleLabel.text = "聖誕快樂"
        contentLabel.text = "I hope you have a Merry Christmas!"
        
    }
    
    

    
    
}

