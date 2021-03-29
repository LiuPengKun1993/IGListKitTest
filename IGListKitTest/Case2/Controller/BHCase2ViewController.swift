//
//  BHCase2ViewController.swift
//  IGListKitTest
//
//  Created by liupengkun on 2021/3/29.
//

import UIKit

class BHCase2ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private var viewModel:BHCase2ViewModel = BHCase2ViewModel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Case2"
        _ = adapter
    }
    
    lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
        adapter.collectionView = collectionView
        adapter.dataSource = self.viewModel
        return adapter
    }()
    

}
