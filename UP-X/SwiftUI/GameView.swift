//
//  GameView.swift
//  UP-X
//
//  Created by Irisandromeda on 02.02.2023.
//

import SwiftUI
import Charts

struct ChartModel: Identifiable {
    let id = UUID()
    let yPoint: Double
    let xPoint: Double
}

struct GameView: View {
    let list = [
        ChartModel(yPoint: 0, xPoint: 0),
        ChartModel(yPoint: Double.random(in: 0...6), xPoint: 1)
    ]
    
    var body: some View {
        Chart(list) { chartModel in
            
            LineMark(
                x: .value("x", chartModel.xPoint),
                y: .value("y", chartModel.yPoint)
            )
            .interpolationMethod(.cardinal)
            .foregroundStyle(.blue)
            
            AreaMark(
                x: .value("x", chartModel.xPoint),
                yStart: .value("y", chartModel.yPoint),
                yEnd: .value("minValue", 0)
            )
            .interpolationMethod(.cardinal)
            .opacity(0.2)
            
            PointMark(
                x: .value("x", 0),
                y: .value("y", 0)
            )
        }
        .chartYAxis {
            AxisMarks(position: .leading)
        }
    }
}
