//
//  ViewController.swift
//  BowlingKata
//
//  Created by Richard Tolley on 08/05/2020.
//  Copyright © 2020 Novoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  private let label = UILabel()

  override func viewDidLoad() {
    super.viewDidLoad()

    self.label.text = "Nothing to see here"

    self.view.addSubview(self.label)

    self.label.center = view.center
    self.label.textAlignment = .center
    self.label.bounds.size = CGSize(width: 200, height: 100)

    // Do any additional setup after loading the view.
  }


}

