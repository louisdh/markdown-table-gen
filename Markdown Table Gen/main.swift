//
//  main.swift
//  Markdown Table Gen
//
//  Created by Louis D'hauwe on 21/01/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import Foundation

func markdownTable(for data: [String], numberOfColumns: Int) -> String {
	
	var data = data
	
	let extraEmptyCells = Int(abs(Double(data.count).remainder(dividingBy: Double(numberOfColumns))))
	
	data.append(contentsOf: Array(repeating: " ", count: extraEmptyCells))
	
	guard let maxLength = data.sorted(by: { (s1, s2) -> Bool in
		return s1.count > s2.count
	}).first?.count else {
		runtimeError("Error")
	}
	
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

print("Enter the number of colums:")
guard let numberOfColumns = readInt(), numberOfColumns > 0  else {
	runtimeError("Invalid number of columns")
}

print("Enter data (separated by commas):")
guard let dataStr = readLine() else {
	runtimeError("Invalid data")
}

var data = dataStr.split(separator: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }

print("Output:\n")

let output = markdownTable(for: data, numberOfColumns: numberOfColumns)

print(output)
