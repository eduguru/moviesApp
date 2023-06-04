//
//  MainViewController.swift
//  moviesApp
//
//  Created by Edwin Weru on 30/05/2023.
//

import UIKit

class MainViewController: UIViewController {

    var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }

    private func setUp() {
        title = "Main View"
    }
}
