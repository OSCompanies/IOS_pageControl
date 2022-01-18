//
//  ViewController.swift
//  Sample_pageControl
//
//  Created by ssemm on 2022/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    var images = ["lamp_off.png","lamp_on.png","lamp_pink.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = images.count    // 총 페이지
        pageControl.currentPage = 0                 // 0번 페이지 이미지 출력
        pageControl.pageIndicatorTintColor = UIColor.systemYellow  // 페이지 color
        pageControl.currentPageIndicatorTintColor = UIColor.systemBlue  // 현재 페이지 color
        imgView.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        // pagecontrol이 어디를 누르는지 알고있어서 왼쪽 오른쪽 체크 안해도된다.
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

