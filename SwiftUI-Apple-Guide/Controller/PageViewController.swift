//
//  PageViewController.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 28/05/24.
//

import UIKit
import SwiftUI


struct PageViewController<Page:View>: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIPageViewController
    
    var pages : [Page]
    
    @Binding var currentPage : Int
    
    func makeCoordinator() -> Coordinater {
        return Coordinater(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll,
                                                      navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([context.coordinator.controller[currentPage]],
                                            direction: .forward,
                                            animated: true)
    }
    
    
    class Coordinater : NSObject , UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        var parent : PageViewController
        var controller : [UIViewController]
        
        init(_ parent: PageViewController) {
            self.parent = parent
            self.controller = parent.pages.map( { UIHostingController(rootView: $0) } )
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            
            guard let index = controller.firstIndex(of: viewController) else {return nil}
            
            if index == 0 {
                return controller.last
            }else {
                return controller[index-1]
            }
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = controller.firstIndex(of: viewController) else { return nil}
            if index + 1 == controller.count {
                return controller.first
            }else{
                return controller[index+1]
            }
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed , let visibleController = pageViewController.viewControllers?.first , let index = controller.firstIndex(of: visibleController) {
                parent.currentPage = index
            }
        }
    }
}
