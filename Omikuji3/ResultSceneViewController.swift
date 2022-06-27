//
//  ResultSceneViewController.swift
//  Eitan
//
//  Created by member on 2022/06/17.
//

import UIKit

class ResultSceneViewController: UIViewController {
    let Eng = ["a course of action" ,  "a number of" ,  "a wealth of" ,  "above all" ,  "after all",  "ahead of schedule",  "along with",  "among other things",  "as a whole",  "as early as",  "as far as",  "as of",  "aside from",  "at all times",  "at least",  "at the latest",  "at your earliest convenience",  "be credited with",  "be supposed to do",  "behind schedule",  "box office",  "bulk order",  "by a wide margin",  "by any chance",  "by means of",  "Can you do me a favor?",  "come up with",  "cordially invite",  "deal with",  "depend on",  "drop off",  "Either is fine.",  "field trip",  "figure out",  "fill out",  "for further information",  "for instance",  "get in touch with",  "has/have yet to do",  "in a rush",  "in a timely manner",  "in accordance with",  "in an effort to do",  "in charge of",  "in fact",  "in for a treat",  "in keeping with",  "in person",  "in short",  "in progress"  ]
    let Japan = ["一連の行動" ,  "いくつかの" ,  "豊富な" ,  "とりわけ、何よりも" ,  "結局",  "予定より早く",  "～と一緒に",  "とりわけ、何よりも",  "全体として",  "早ければ",  "～する範囲では",  "～以降、～付で",  "～は別として",  "常時",  "少なくとも",  "遅くとも",  "あなたの都合がつき次第",  "～の功績があるとされる",  "～することになっている",  "予定より遅れて",  "チケット売り場",  "大量注文、大口発注",  "大差で",  "ひょっとして",  "～という手段で",  "お願いがあるのですが。",  "～を思いつく",  "謹んで招待する",  "～を扱う",  "～次第だ、～に頼る",  "～を預ける",  "どちらでも構いません。",  "校外学習、現地調査",  "理解する",  "記入する",  "詳しくは",  "例えば",  "連絡を取る",  "まだ～していない",  "大急ぎで",  "タイミングよく",  "～に従って",  "～しようとして",  "～を担当している",  "実際",  "もうすぐ楽しいことがある",  "～に合わせて",  "直接会って",  "要するに",  "進行中"  ]
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scrollView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(rslt.reduce(0,+)) + " / 50"

        // Do any additional setup after loading the view.
        for qNum in 0 ..< 50 {
            var ward = UILabel()
            ward.frame = CGRect(x:107, y:(160 + qNum * 100), width: 160, height: 80)
            ward.text = Eng[qNum] + "\n" + Japan[qNum]
            ward.textAlignment = NSTextAlignment.center
            ward.numberOfLines = 2
            
            if (rslt[qNum] == 1){
                ward.textColor = UIColor.orange
            } else {
                ward.textColor = UIColor.lightGray
            }
            
            scrollView.addSubview(ward)
        }
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
