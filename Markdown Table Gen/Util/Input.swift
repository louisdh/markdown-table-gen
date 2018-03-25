//
//  Input.swift
//  Markdown Table Gen
//
//  Created by Louis D'hauwe on 25/03/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import Foundation

func readInt() -> Int? {
	guard let line = readLine() else {
		return nil
	}
	
	return Int(line)
}
