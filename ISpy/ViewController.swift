//
//  ViewController.swift
//  ISpy
//
//  Created by Austin Dobberfuhl on 10/12/23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var spaceImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return spaceImageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / spaceImageView.bounds.width
        let heightScale = size.height / spaceImageView.bounds.height
        let scale = min(widthScale, heightScale)
        ScrollView.minimumZoomScale = scale
        ScrollView.zoomScale = scale
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
}
