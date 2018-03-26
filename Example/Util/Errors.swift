//
//  Errors.swift
//  Example
//
//  Created by Louis D'hauwe on 25/03/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import Foundation

func runtimeError(_ message: String) -> Never {
	print("❌ \(message)")
	exit(1)
}
