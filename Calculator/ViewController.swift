//
//  ViewController.swift
//  Calculator
//
//  Created by Nikhil Hore on 09/10/2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var oneImageView = makeImageView("one")

    lazy var twoImageView = makeImageView("two")

    lazy var threeImageView = makeImageView("three")

    lazy var addImageView = makeImageView("add")

    lazy var firstHorizontalStackView = makeHorizontalStackView(
        arrangedSubviews: [
            oneImageView,
            twoImageView,
            threeImageView,
            addImageView
        ]
    )

    lazy var fourImageView = makeImageView("four")

    lazy var fiveImageView = makeImageView("five")

    lazy var sixImageView = makeImageView("six")

    lazy var subtractImageView = makeImageView("subtract")

    lazy var secondHorizontalStackView = makeHorizontalStackView(
        arrangedSubviews: [
            fourImageView,
            fiveImageView,
            sixImageView,
            subtractImageView
        ]
    )

    lazy var sevenImageView = makeImageView("seven")

    lazy var eightImageView = makeImageView("eight")

    lazy var nineImageView = makeImageView("nine")

    lazy var multiplyImageView = makeImageView("multiply")

    lazy var thirdHorizontalStackView = makeHorizontalStackView(
        arrangedSubviews: [
            sevenImageView,
            eightImageView,
            nineImageView,
            multiplyImageView
        ]
    )

    lazy var zeroImageView = makeImageView("zero")

    lazy var divideImageView = makeImageView("divide")

    lazy var fourthHorizontalStackView = makeHorizontalStackView(
        arrangedSubviews: [
            UIView(),
            zeroImageView,
            UIView(),
            divideImageView
        ]
    )

    lazy var equalsImageView = makeImageView("equals")

    lazy var clearImageView = makeImageView("clear")

    lazy var fifthHorizontalStackView = makeHorizontalStackView(
        arrangedSubviews: [
            equalsImageView,
            clearImageView
        ],
        distribution: .fill
    )

    lazy var verticalStackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                firstHorizontalStackView,
                secondHorizontalStackView,
                thirdHorizontalStackView,
                fourthHorizontalStackView,
                fifthHorizontalStackView
            ]
        )
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        view.addSubview(verticalStackView)
        NSLayoutConstraint.activate([
            equalsImageView.widthAnchor.constraint(equalToConstant: 215.0),

            verticalStackView.centerXAnchor
                .constraint(equalTo: view.centerXAnchor),
            verticalStackView.centerYAnchor
                .constraint(equalTo: view.centerYAnchor),
            verticalStackView.heightAnchor.constraint(equalToConstant: 365.0),
            verticalStackView.widthAnchor.constraint(equalToConstant: 290.0)
        ])
    }

    func makeImageView(_ imageName: String) -> UIImageView {
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        return imageView
    }

    func makeHorizontalStackView(arrangedSubviews: [UIView],
                                 distribution: UIStackView.Distribution = .fillEqually) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = distribution
        return stackView
    }
}
