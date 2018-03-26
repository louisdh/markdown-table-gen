//
//  MarkdownTable.swift
//  Markdown Table Gen
//
//  Created by Louis D'hauwe on 25/03/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import Foundation

public func markdownTable(for data: [String], numberOfColumns: Int) -> String {
	
	var data = data
	
	let extraEmptyCells: Int
	
	if data.isEmpty {
		
		extraEmptyCells = numberOfColumns
		
	} else {
		
		let numberOfCellsAtBottomRow = Int(abs(Double(data.count).truncatingRemainder(dividingBy: Double(numberOfColumns))))
		
		extraEmptyCells = numberOfColumns - numberOfCellsAtBottomRow
		
	}
	
	data.append(contentsOf: Array(repeating: " ", count: extraEmptyCells))
	
	/// Max length of all data determines the cell width.
	let maxLength = data.map({ $0.count }).max() ?? 1
	
	var output = ""
	
	let headers1 = Array(repeating: "|", count: numberOfColumns + 1)
	let headerSeparator = Array(repeatElement(" ", count: maxLength + 2)).joined()
	output += headers1.joined(separator: headerSeparator) + "\n"
	
	let headers1Separator = Array(repeating: "-", count: maxLength).joined()
	
	output += headers1.joined(separator: " " + headers1Separator + " ") + "\n"
	
	var i = 0
	
	for d in data {
		
		output += "| \(d)"
		
		let length = d.count
		
		let extraSpacingNeeded = maxLength - length
		
		if extraSpacingNeeded > 0 {
			for _ in 0..<extraSpacingNeeded {
				output += " "
			}
		}
		
		output += " "
		
		i += 1
		
		if i == numberOfColumns {
			output += "|\n"
			
			i = 0
		}
	}
	
	return output
}
