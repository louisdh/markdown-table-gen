//
//  MarkdownTableGeneratorTests.swift
//  MarkdownTableGeneratorTests
//
//  Created by Louis D'hauwe on 26/03/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import XCTest
@testable import MarkdownTableGenerator

class MarkdownTableGeneratorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmptyTable() {

		let numberOfColumns = 4
	
		let output = markdownTable(for: [], numberOfColumns: numberOfColumns)

		let expectedOutput = """
							|   |   |   |   |
							| - | - | - | - |
							|   |   |   |   |

							"""
		
		XCTAssertEqual(output, expectedOutput)
	}
	
	func testAlphabet() {
		
		let numberOfColumns = 10

		let data = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
		
		let output = markdownTable(for: data, numberOfColumns: numberOfColumns)
		
		let expectedOutput = """
							|   |   |   |   |   |   |   |   |   |   |
							| - | - | - | - | - | - | - | - | - | - |
							| A | B | C | D | E | F | G | H | I | J |
							| K | L | M | N | O | P | Q | R | S | T |
							| U | V | W | X | Y | Z |   |   |   |   |

							"""
		
		XCTAssertEqual(output, expectedOutput)
	}
	
	func testWords() {
		
		let numberOfColumns = 4
		
		let data = ["Here's", "To", "The", "Crazy", "Ones"]
		
		let output = markdownTable(for: data, numberOfColumns: numberOfColumns)
		
		let expectedOutput = """
							|        |        |        |        |
							| ------ | ------ | ------ | ------ |
							| Here's | To     | The    | Crazy  |
							| Ones   |        |        |        |

							"""
		
		XCTAssertEqual(output, expectedOutput)
		
	}
	
}
