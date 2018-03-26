# Markdown Table Generator
<p>
<a href="https://travis-ci.org/louisdh/markdown-table-gen"><img src="https://travis-ci.org/louisdh/markdown-table-gen.svg?branch=master" alt="Travis build status"/></a>
<a href="https://codecov.io/gh/louisdh/markdown-table-gen"><img src="https://codecov.io/gh/louisdh/markdown-table-gen/branch/master/graph/badge.svg" alt="Codecov"/></a>
<br>
<a href="https://developer.apple.com/swift/"><img src="https://img.shields.io/badge/Swift-4.0.3-orange.svg?style=flat" style="max-height: 300px;" alt="Swift"/></a>
<img src="https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-lightgrey.svg" style="max-height: 300px;" alt="Platform: iOS macOS tvOS watchOS">
<br>
<a href="http://twitter.com/LouisDhauwe"><img src="https://img.shields.io/badge/Twitter-@LouisDhauwe-blue.svg?style=flat" style="max-height: 300px;" alt="Twitter"/></a>
<a href="https://paypal.me/louisdhauwe"><img src="https://img.shields.io/badge/Donate-PayPal-green.svg?style=flat" alt="Donate via PayPal"/></a>
</p>

This is a little script written in Swift that generates a Markdown table from an array of strings for a given number of columns.

## Example

```swift
let data = ["Here's", "To", "The", "Crazy", "Ones"]

print(markdownTable(for: data, numberOfColumns: 4))
```

```	
|        |        |        |        |
| ------ | ------ | ------ | ------ |
| Here's | To     | The    | Crazy  |
| Ones   |        |        |        |
```						

|        |        |        |        |
| ------ | ------ | ------ | ------ |
| Here's | To     | The    | Crazy  |
| Ones   |        |        |        |


## License

This project is available under the MIT license. See the LICENSE file for more info.
