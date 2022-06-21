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
    var tmpArr  = ["none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none"]
    var option = ["none", "none", "none"]  // 選択肢用の配列
    var qNum = 0  // 添字用
    var checker = [0, 0, 0]  // 正解の位置を保存するための配列。上のボタンから添字0,1,2に対応（正解の場所に1を立てる）
    
    // 選択肢のオブジェクトに名前を付与
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    // マルバツ表示用のラベルに名前を付与
    @IBOutlet weak var ox: UILabel!
    // 英語表示領域に名前を付与
    @IBOutlet weak var engArea: UILabel!
    

    // 一番上の選択肢が押された場合の正誤判定
    @IBAction func checkWithBtn1(_ sender: Any) {
        if checker[0] == 1 {
            ox.text = "⭕️"
            rslt[qNum] = 1  // 正解フラグを立てる
        } else {
            ox.text = "❌"
        }
        // ボタンを非活性化
        btn1.isEnabled = false
        btn2.isEnabled = false
        btn3.isEnabled = false
    }
    
    // 真ん中の選択肢が押された場合の正誤判定
    @IBAction func checkWithBtn2(_ sender: Any) {
        if checker[1] == 1 {
            ox.text = "⭕️"
            rslt[qNum] = 1  // 正解フラグを立てる
        } else {
            ox.text = "❌"
        }
        // ボタンを非活性化
        btn1.isEnabled = false
        btn2.isEnabled = false
        btn3.isEnabled = false
    }
    
    // 一番下の選択肢が押された場合の正誤判定
    @IBAction func checkWithBtn3(_ sender: Any) {
        if checker[2] == 1 {
            ox.text = "⭕️"
            rslt[qNum] = 1  // 正解フラグを立てる
        } else {
            ox.text = "❌"
        }
        // ボタンを非活性化
        btn1.isEnabled = false
        btn2.isEnabled = false
        btn3.isEnabled = false
    }
    
    // 次の問題へ進む処理
    @IBAction func next(_ sender: Any) {
        if qNum < 49 {
            qNum = qNum + 1  // 問題番号をインクリメント
        }
        ox.text = " "  // マルバツを非表示
        checker = [0, 0, 0]  // 正誤チェッカーを初期化
        // ボタン復活
        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        
        // 日本語の選択肢３つをランダムに選択
        // 正解を除いた49要素を一時的に配列 tmpArr にコピー
        for j in 0 ..< qNum {
            tmpArr[j] = Japan[j]
        }
        for j in qNum+1 ..< 50 {
            tmpArr[j-1] = Japan[j]
        }
        var random2 = tmpArr.shuffled().prefix(2)  // シャッフルして先頭２要素を取得
        var correctIdx = Int.random(in: 0..<3)  // 正解の位置を乱数として取得
        option[correctIdx] = Japan[qNum]  // まず正解を代入
        for j in 0 ..< correctIdx {
            option[j] = random2[j]  // 正解以外を代入
        }
        for j in correctIdx+1 ..< 3 {
            option[j] = random2[j-1]  // 正解以外を代入
        }
        // 選択肢のランダム抽出完了
        
        // 表示
        engArea.text = Eng[qNum]
        btn1.setTitle(option[0], for: .normal)
        btn2.setTitle(option[1], for: .normal)
        btn3.setTitle(option[2], for: .normal)
        checker[correctIdx] = 1  // 正解の位置にフラグを立てる
        
    }
    
    // 画面読み込み時の処理
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 日本語の選択肢３つをランダムに選択
        // 正解を除いた49要素を一時的に配列 tmpArr にコピー
        for j in 0 ..< qNum {
            tmpArr[j] = Japan[j]
        }
        for j in qNum+1 ..< 50 {
            tmpArr[j-1] = Japan[j]
        }
        var random2 = tmpArr.shuffled().prefix(2)  // シャッフルして先頭２要素を取得
        var correctIdx = Int.random(in: 0..<3)  // 正解の位置を乱数として取得
        option[correctIdx] = Japan[qNum]  // まず正解を代入
        for j in 0 ..< correctIdx {
            option[j] = random2[j]  // 正解以外を代入
        }
        for j in correctIdx+1 ..< 3 {
            option[j] = random2[j-1]  // 正解以外を代入
        }
        // 選択肢のランダム抽出完了
        
        // 最初の1問を読み込み時に表示
        engArea.text = Eng[qNum]
        btn1.setTitle(option[0], for: .normal)
        btn2.setTitle(option[1], for: .normal)
        btn3.setTitle(option[2], for: .normal)
        checker[correctIdx] = 1  // 正解の位置にフラグを立てる
    }


}
