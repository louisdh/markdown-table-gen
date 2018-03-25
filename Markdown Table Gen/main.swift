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

print("Output:\n")

let output = markdownTable(for: data, numberOfColumns: numberOfColumns)

print(output)
