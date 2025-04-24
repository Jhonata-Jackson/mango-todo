//
//  ViewController.swift
//  MangoTodo
//
//  Created by Jhonata Jackson on 22/04/25.
//

import UIKit

class HomeVC: UIViewController {
    let topView: UIView = {
        let topView = UIView()

        topView.translatesAutoresizingMaskIntoConstraints = false

        return topView
    }()

    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Olá, Jhonata"
        titleLabel.font = UIFont(name: "Domine-Bold", size: 22)
        titleLabel.textColor = .white
        

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()

    let subTitle: UILabel = {
        let subTitle = UILabel()
        subTitle.text = "Quin 24, Abril"
        subTitle.font = UIFont(name: "Domine-Bold", size: 30)
        subTitle.textColor = .white

        subTitle.translatesAutoresizingMaskIntoConstraints = false
        return subTitle
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkBg

        setupView()
        setupConstraints()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        topView.addBorder(to: .bottom, color: .white, thickness: 1, opacity: 0.8)
    }

    func setupView() {
        topView.addSubview(titleLabel)
        topView.addSubview(subTitle)

        view.addSubview(topView)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            topView.heightAnchor.constraint(equalToConstant: 90),

            titleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor),

            subTitle.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            subTitle.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),

        ])
    }
}

#Preview {
    HomeVC()
}
