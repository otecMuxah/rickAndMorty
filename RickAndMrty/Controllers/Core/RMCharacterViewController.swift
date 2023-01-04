//
//  RMCharacterViewController.swift
//  RickAndMrty
//
//  Created by Mikhail Malyavin on 02.01.23.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character, pathComponents: ["1"], queryParams: [
            URLQueryItem(name: "name", value: "Rick")
        ])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) {
            result in {}
        }
    }
}
