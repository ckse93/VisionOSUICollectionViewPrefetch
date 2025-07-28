//
//  CollectionViewWrapper.swift
//  CollectionViewPrefetchingVisionOS
//
//  Created by Chan Jung on 7/28/25.
//

import Foundation
import SwiftUI
import UIKit

struct CollectionViewWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CollectionViewController {
        let viewController = CollectionViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: CollectionViewController, context: Context) {
    }
}

