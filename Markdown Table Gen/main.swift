//
//  main.swift
//  Markdown Table Gen
//
//  Created by Louis D'hauwe on 21/01/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import Foundation

print("Enter the number of colums:")
guard let numberOfColumns = readInt(), numberOfColumns > 0  else {
	runtimeError("Invalid number of columns")
}

print("Enter data (separated by commas):")
guard let dataStr = readLine() else {
	runtimeError("Invalid data")
}

var data = dataStr.split(separator: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }

let extraEmptyCells = Int(abs(Double(data.count).remainder(dividingBy: Double(numberOfColumns))))

data.append(contentsOf: Array(repeating: " ", count: extraEmptyCells))

guard let maxLength = data.sorted(by: { (s1, s2) -> Bool in
	return s1.count > s2.count
}).first?.count else {
	runtimeError("Error")
}

print("Output:\n")

let headers1 = Array(repeating: "|", count: numberOfColumns + 1)
let headerSeparator = Array(repeatElement(" ", count: maxLength + 2)).joined()
print(headers1.joined(separator: headerSeparator))
let headers2 = Array(repeating: "|", count: numberOfColumns + 1)


let headers1Separator = Array(repeating: "-", count: maxLength).joined()

print(headers1.joined(separator: " " + headers1Separator + " "))

var i = 0

for d in data {
	
	print("|", separator: "", terminator: "")
	
	print(" ", separator: "", terminator: "")
	print(d, separator: "", terminator: "")
	
	let length = d.count
	
	let extraSpacingNeeded = maxLength - length
	
	if extraSpacingNeeded > 0 {
		for _ in 0..<extraSpacingNeeded {
			print(" ", separator: "", terminator: "")
		}
	}
	
	print(" ", separator: "", terminator: "")

	i += 1
	
	if i == numberOfColumns {
		print("|", separator: "", terminator: "\n")

		i = 0
	}
}
