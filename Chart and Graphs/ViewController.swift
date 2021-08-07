//
//  ViewController.swift
//  Chart and Graphs
//
//  Created by Дмитрий Старков on 07.08.2021.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate{
    
    var barCrart = BarChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        barCrart.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        barCrart.frame = CGRect(x: 0,
                                y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        barCrart.center = view.center
        view.addSubview(barCrart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        
        barCrart.data = data
    }

}

