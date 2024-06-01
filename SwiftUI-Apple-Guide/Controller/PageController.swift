//
//  PageController.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 01/06/24.
//

import SwiftUI

struct PageController : UIViewRepresentable {
    typealias UIViewType = UIPageControl
    var numberOfPages : Int
    @Binding var currentPage : Int
    
    
    func makeCoordinator() -> Coordinater {
        return Coordinater(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.currentPage = currentPage
        control.addTarget(context.coordinator, action: #selector(Coordinater.updateCurrentPage(sender:)), for: .valueChanged)
        return control
    }
    
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    
    class Coordinater : NSObject {
        
        var control : PageController
        
        init(_ control: PageController) {
            self.control = control
        }
        
        @objc
        func updateCurrentPage(sender:UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
