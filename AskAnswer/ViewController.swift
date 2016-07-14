//
//  ViewController.swift
//  AskAnswer
//
//  Created by jack on 7/14/16.
//  Copyright © 2016 jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    let lists = [AskAnswer(question: "最好看的綜藝節目?", answer: "綜藝玩好大"), AskAnswer(question: "最好笑的藝人?",answer: "吳宗憲"), AskAnswer(question: "慈母手中線, 猜一藝人?",answer: "吳宗憲"),AskAnswer(question: "玩很大最有人氣的項目?",answer: "大逃殺"),AskAnswer(question: "說話最誇張的藝人?",answer: "沈玉琳"),AskAnswer(question:"天天向上的台灣主持人?",answer: "歐弟"),AskAnswer(question: "日本最好玩的遊樂園?",answer: "大阪環球影城"),AskAnswer(question: "大阪環球影城最好玩的遊戲設施?",answer: "哈利波特禁忌之旅"),AskAnswer(question: "大阪環球影城新增的遊戲設施?",answer: "飛天翼龍"),AskAnswer(question: "大阪環球影城在大阪的哪個區?",answer: "此花區")]
    
    class AskAnswer {
        var question:String?
        var answer:String?
        
        init(question:String, answer:String){
            self.question = question
            self.answer = answer
        }
    }

    
    @IBOutlet var labelQuestion: UILabel!
    @IBOutlet var labelAnswer: UILabel!
    @IBOutlet var buttonAnswer: UIButton!
    @IBOutlet var buttonNext: UIButton!
    
    @IBAction func buttonClicked_Ans(_ sender: AnyObject) {
        labelAnswer.text = lists[counter].answer
    }

    
    @IBAction func buttonClicked_Next(_ sender: AnyObject) {
        counter += 1
        
        if counter >= 10
        {
            counter = 0
        }
        
        labelAnswer.text = ""
        labelQuestion.text = lists[counter].question
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelQuestion.text = lists[0].question
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

