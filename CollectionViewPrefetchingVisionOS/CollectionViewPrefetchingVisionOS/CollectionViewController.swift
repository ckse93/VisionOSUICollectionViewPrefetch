//
//  CollectionViewController.swift
//  CollectionViewPrefetchingVisionOS
//
//  Created by Chan Jung on 7/28/25.
//

import Foundation
import UIKit

final class CollectionViewController: UIViewController {
    // MARK: Properties

    private let dataSource = CustomDataSource()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = .zero
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(Cell.self,
                                forCellWithReuseIdentifier: Cell.reuseIdentifier)
        return collectionView
    }()

    // MARK: UIViewController overrides

    /// - Tag: SetDataSources
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addAndPinSubview(collectionView)

        // Set the collection view's data source.
        collectionView.dataSource = dataSource
      
        // Set the collection view's prefetching data source.
        collectionView.prefetchDataSource = dataSource
      
        // Add a border to the collection view's layer so its edges are visible.
        collectionView.layer.borderColor = UIColor.black.cgColor
    }
}

extension UIView {
    func addAndPinSubview(_ child: UIView) {
        self.addSubview(child)
        child.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            child.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            child.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            child.topAnchor.constraint(equalTo: self.topAnchor),
            child.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
