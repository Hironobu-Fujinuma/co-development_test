//
//  ViewController.swift
//  Omikuji3
//
//  Created by KashiLab on 2022/06/10.
//

import UIKit

class ViewController: UIViewController {
    let Eng = ["a course of action" ,  "a number of" ,  "a wealth of" ,  "above all" ,  "after all",  "ahead of schedule",  "along with",  "among other things",  "as a whole",  "as early as",  "as far as",  "as of",  "aside from",  "at all times",  "at least",  "at the latest",  "at your earliest convenience",  "be credited with",  "be supposed to do",  "behind schedule",  "box office",  "bulk order",  "by a wide margin",  "by any chance",  "by means of",  "Can you do me a favor?",  "come up with",  "cordially invite",  "deal with",  "depend on",  "drop off",  "Either is fine.",  "field trip",  "figure out",  "fill out",  "for further information",  "for instance",  "get in touch with",  "has/have yet to do",  "in a rush",  "in a timely manner",  "in accordance with",  "in an effort to do",  "in charge of",  "in fact",  "in for a treat",  "in keeping with",  "in person",  "in short",  "in progress"  ]
    let Japan = ["一連の行動" ,  "いくつかの" ,  "豊富な" ,  "とりわけ、何よりも" ,  "結局",  "予定より早く",  "～と一緒に",  "とりわけ、何よりも",  "全体として",  "早ければ",  "～する範囲では",  "～以降、～付で",  "～は別として",  "常時",  "少なくとも",  "遅くとも",  "あなたの都合がつき次第",  "～の功績があるとされる",  "～することになっている",  "予定より遅れて",  "チケット売り場",  "大量注文、大口発注",  "大差で",  "ひょっとして",  "～という手段で",  "お願いがあるのですが。",  "～を思いつく",  "謹んで招待する",  "～を扱う",  "～次第だ、～に頼る",  "～を預ける",  "どちらでも構いません。",  "校外学習、現地調査",  "理解する",  "記入する",  "詳しくは",  "例えば",  "連絡を取る",  "まだ～していない",  "大急ぎで",  "タイミングよく",  "～に従って",  "～しようとして",  "～を担当している",  "実際",  "もうすぐ楽しいことがある",  "～に合わせて",  "直接会って",  "要するに",  "進行中"  ]
    var i = 0  // 添字用
    var checker = [0, 0, 0]  // 正解の位置を保存するための配列。上のボタンから添字0,1,2に対応（正解の場所に1を立てる）
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    // 一番上のが押された場合の正誤判定
    @IBAction func checkWithBtn1(_ sender: Any) {
        
    }
    
    @IBAction func next(_ sender: Any) {
        engArea.text = Eng[i]  // 英単語の表示
        btn1.setTitle(Japan[i%50], for: .normal)
        btn2.setTitle(Japan[(i+1)%50], for: .normal)
        btn3.setTitle(Japan[(i+2)%50], for: .normal)
        if i < 49 {
            i = i + 1
        }
    }
    @IBOutlet weak var engArea: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 最初の1問を読み込み時に表示
        engArea.text = Eng[i]
        btn1.setTitle(Japan[i], for: .normal)
        btn2.setTitle(Japan[i+1], for: .normal)
        btn3.setTitle(Japan[i+2], for: .normal)
        i = i + 1
    }


}
