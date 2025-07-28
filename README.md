# Overview
this repo was set up to showcase UICollectionView's prefetch functionality. However it looks like the functionality does not work properly on VisionOS.

this repo is based on [Apple's guide on Prefetching collection view data](https://developer.apple.com/documentation/UIKit/prefetching-collection-view-data)

in `CustomDataSource.Swift`, `func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath])` is responsible to do prefetch logic, however, `print("prefetch start")` is never called, during scrolling. 
