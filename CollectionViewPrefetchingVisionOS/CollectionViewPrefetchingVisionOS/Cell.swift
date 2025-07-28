//
//  Cell.swift
//  CollectionViewPrefetchingVisionOS
//
//  Created by Chan Jung on 7/28/25.
//

import UIKit

final class Cell: UICollectionViewCell {
    // MARK: Properties

    static let reuseIdentifier = "Cell"

    /// The `UUID` for the data this cell is presenting.
    var representedIdentifier: UUID?

    // MARK: UICollectionViewCell

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.red.cgColor
    }

    // MARK: Convenience

    /**
     Configures the cell for display based on the model.
     
     - Parameters:
         - data: An optional `DisplayData` object to display.
     
     - Tag: Cell_Config
    */
    func configure(with data: DisplayData?) {
        backgroundColor = data?.color
    }
}

/// A type to represent how model data should be displayed.
class DisplayData: NSObject {
    
    var color: UIColor = .red
    
    // Add additional properties for your own configuration here.
}
