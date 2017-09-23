//
//  ViewController.swift
//  playground
//
//  Created by King on 2017/09/23.
//  Copyright © 2017 King. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak private var clickbutton: UIButton! {
        didSet {
            clickbutton.layer.cornerRadius = 20.0
            clickbutton.layer.borderWidth = 2.0
            clickbutton.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    @IBOutlet weak var count: UILabel!
    private var counting: Variable<Int?> = Variable(0)

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        count.text = "Count: \(counting.value!)"
        
        clickbutton.rx.tap.asObservable().subscribe(onNext: { (_) in
            if let c = self.counting.value {
                self.counting.value = c + 1
                self.count.text = "Count: \(self.counting.value!)"
            }
        }).disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

