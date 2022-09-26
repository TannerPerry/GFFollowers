//
//  GFRepoItemVC.swift
//  GFFollowers
//
//  Created by Tanner Perry on 9/20/22.
//

import UIKit


class GFRepoItemVC: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        iteminfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
