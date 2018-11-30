//
//  ViewController.swift
//  IQtest
//
//  Created by User16 on 2018/11/27.
//  Copyright © 2018 User16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Qna {
        var question = ""
        var selections:[String]
        var answer:Int
    }
    
    var quesArray = [
        Qna(question: "小金的奶奶生了兩個孩子，那兩個孩子又各生了兩個孩子；\n小金的外婆也生了兩個孩子，那兩個孩子也各生了兩個孩子；\n請問，小金的堂兄弟姊妹加表兄弟姊妹共有幾個？", selections: ["最少3個，最多5個","最少2個，最多4個","最少2個，最多5個"], answer: 1),
        Qna(question: "某次考試有 25 題，答對一題得 4 分，答錯或沒答都要倒扣 1 分，請問，要想及格至少要答對幾題呢？", selections: ["17","19","21"], answer: 0),
        Qna(question: "13579，下一個數應該接什麼呢？", selections: ["11","13580","1357911"], answer: 1),
        Qna(question: "有一個偷懶的服務生，總是沒有先記好哪道菜是哪位顧客點的，上菜時也沒有詢問就隨意的把菜放在桌上，讓同桌顧客自己去交換放錯的菜，今天，有一桌六個顧客，六人都點不同的菜，這位服務生依舊隨意的上菜，請問，這六人中，服務生剛好只上對五人的菜的機率是多少？", selections: ["13%","10%","0%"], answer: 2),
        Qna(question: "『母雞、雞、家禽、動物、生物』\n這五個名詞中，概念是越來越大的，後項都包含著前項的概念。\n請問下面有哪幾組，也符合這個條件呢？", selections: ["襯衫、衣服、禦寒物、紡織品、產品","自然數、整數、有理數、實數、複數","冰、水、水蒸氣、雲、空氣"], answer: 1),
        Qna(question: "兩個人猜拳，跟三個人猜拳，哪一種比較容易出現平手的狀況呢？", selections: ["2人","３人","機率相同"], answer: 2),
        Qna(question: "中文課本是直書，右翻頁；\n英文課本是橫書，左翻頁；\n請問，中文課本第38頁的背後是第幾頁？\n英文課本第25頁的背後是第幾頁呢？", selections: ["37 , 26","39 , 24","39 , 26"], answer: 0),
        Qna(question: "公園跟學校相距2000公尺，小楷從公園出發往學校走，一路都維持每分鐘100公尺的速度，小治跟小楷相反方向，是從學校出發往公園走，但比小楷晚了5分鐘出發，請問，小治至少要用多快的速度走，才能讓兩人相遇時，小治離公園的距離比小楷還近呢？", selections: ["每分鐘105公尺","每分鐘108公尺","不可能啦混蛋！"], answer: 2),
        Qna(question: "我們臉上的眼、耳、口、鼻，各掌控了一種感官，再加上觸覺，就是我們常說的人體的五種感官。那麼，一個又聾又啞的盲人，他還有幾種人體感官呢？", selections: ["4種","3種","2種"], answer: 1),
        Qna(question: "在沒有摩擦力的狀況下，一個立方體、一個圓柱體、一顆圓球，同時從一斜坡上滑下，請問誰會先滑到底部呢？", selections: ["立方體","圓柱體","圓球"], answer: 0),
        Qna(question: "小楷、小治去逛玩具店，都想買同一個玩具，可惜，小楷不夠1元，小治不夠100元，兩人想說合資買，結果還是不夠錢，請問，這個玩具要多少錢呢？(註：幣值以新台幣計，最小單位為一元）", selections: ["110","101","100"], answer: 2),
        Qna(question: "有隻怪物的HP(血量)是1，而你每次的攻擊對牠造成的傷害是0到1之間的亂數(小數趨近無窮多位，且每個數字出現機會均等)。請用直覺估算一下，打死這隻怪物所需次數的期望值(期望要打幾次才能打死該怪物)符合以下哪個條件？", selections: ["比2大","恰為2","比2小"], answer: 0),
        Qna(question: "一位農夫帶了150隻雞要渡河，但河邊除了一艘大船外，沒有其他的交通工具。而該艘船的船夫願意幫他把雞載過去，但渡過去的一半當作他的酬金。請問農夫應該給他幾隻雞?", selections: ["60隻","50隻","38隻"], answer: 1),
        Qna(question: "我把剛燒好的熱開水倒進杯子裡，結果倒到２００ｃｃ的時候玻璃杯開始出現裂縫並且漏水，每一分鐘會從裂縫漏２ｃｃ。１５分鐘後我進行緊急處理，後來補救後變成１分鐘漏１ｃｃ的水。請問就這樣沒有喝掉，過了一小時後杯子裡還有幾ｃｃ的熱水？", selections: ["110cc","90cc","0cc"], answer: 2),
        Qna(question: "<事半功倍>的辦事效率是<事倍功半>的幾倍？", selections: ["4倍","8倍","16倍"], answer: 2),
        Qna(question: "以下兩題敘述，各自是對是錯呢？\n 1.有可能有一對雙胞胎兄弟，哥哥出生在2013年，弟弟出生在2012年\n 2.太陽總是從東邊升起，西邊落下", selections: ["O , X","O , O","X , O"], answer: 0),
        Qna(question: "A：「我有一個哥哥，三個妹妹。」\n B：「我有兩個哥哥，兩個妹妹。」\n C：「我有三個哥哥，一個妹妹。」\n ABC是親生的兄弟姊妹，請問他們家最少有幾個小孩？", selections: ["4個","5個","6個"], answer: 2),
        Qna(question: "桌上有一壺綠茶和一壺紅茶，兩壺茶是等量的，先把綠茶壺中1/10的綠茶倒進紅茶壺中，攪拌均勻後，再把紅茶壺中的混和茶倒一些回綠茶壺中，使兩壺茶再度等量；\n請問，最後綠茶壺中的紅茶，跟紅茶壺中的綠茶，哪一個比較多？", selections: ["紅茶","綠茶","ㄧ樣多"], answer: 2)
    ]

    @IBOutlet var selectItem: [UIButton]!
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var QNumber = Int()
    var score = 0
    var answerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PickQuestion()
    }
    
    func PickQuestion (){
        scoreLabel.text = String(score)
        if !quesArray.isEmpty{
            
            QNumber = Int.random(in: 0...quesArray.count-1)
            QLabel.text = quesArray[QNumber].question
            answerNumber = quesArray[QNumber].answer
            
            for i in 0 ..< selectItem.count{
                selectItem[i].setTitle(quesArray[QNumber].selections[i], for: UIControl.State.normal)
            }
            
            quesArray.remove(at: QNumber)
            
        }else{
            //endAlert()
        }
    }

    @IBAction func buttonSelect(_ sender: UIButton) {
        if selectItem?.index(of: sender) == answerNumber{
            score += 10
            PickQuestion()
        }
        else{
            PickQuestion()
        }
    }
    
}

