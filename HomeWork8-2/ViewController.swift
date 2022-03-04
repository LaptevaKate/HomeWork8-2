//
//  ViewController.swift
//  HomeWork8-2
//
//  Created by Екатерина Лаптева on 2.03.22.
//

import UIKit

class ViewController: UIViewController {


    // MARK: - Properties
    
    private let pannableView: UIView = {
          
        let view = UIView(frame: CGRect(origin: .zero,
                                        size: CGSize(
                                            width: 60,
                                            height: 60)))
        view.backgroundColor = .blue
        view.layer.cornerRadius = 30
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pannableView)
        pannableView.center = view.center
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(didPan(_:)))
        pannableView.addGestureRecognizer(panGestureRecognizer)
        }
    
    // MARK: - Actions
    
    @objc private func didPan(_ sender: UIPanGestureRecognizer) {
        pannableView.center = sender.location(in: view)
    }
}

