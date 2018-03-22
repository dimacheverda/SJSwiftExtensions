# SJSwiftExtensions

[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://swift.org)
[![CI Status](http://img.shields.io/travis/dimacheverda/SJSwiftExtensions.svg?style=flat)](https://travis-ci.org/dimacheverda/SJSwiftExtensions)
[![Version](https://img.shields.io/cocoapods/v/SJSwiftExtensions.svg?style=flat)](http://cocoapods.org/pods/SJSwiftExtensions)
[![License](https://img.shields.io/cocoapods/l/SJSwiftExtensions.svg?style=flat)](http://cocoapods.org/pods/SJSwiftExtensions)
[![Platform](https://img.shields.io/cocoapods/p/SJSwiftExtensions.svg?style=flat)](http://cocoapods.org/pods/SJSwiftExtensions)

## Installation

SJSwiftExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SJSwiftExtensions'
```

## Usage

### Bool
```swift
let boolValue = true
boolValue.toggle = false
```
```swift
let trueValue = true
let falseValue = false
trueValue.stringValue   /// "true"
falseValue.stringValue   /// "false"
```
### Collections
```swift
var array: [Int] = []
array.isNotEmpty   /// false
array.append(2)
array.isNotEmpty   /// true
```
### String
```swift
let emptyString = ""
emptyString.isNotEmpty   // false
let someString = "fooBar"
someString.isNotEmpty   // true
```
### UIColor
```swift
let turquoise = UIColor(colorWithHexValue: 0x2FD3C7)
turquoise.darker(by: 10.0)   // darkens color by 10 percents
turquoise.lighter(by: 10.0)   // lightens color by 10 percents
```
### UIViewController
Controller identifier, can be used to load ViewController from storyboard by ID
```swift
let viewController = SomeBasicViewController
viewController.identifier   // "SomeBasicViewController"
```
### UITableView
Register cell for identifier same as cell class name:
```swift
tableView.register(CustomTableViewCell.self)
```
Cell dequeue without stating explicit identifier:
```swift
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tv.dequeueReusableCell(forIndexPath: indexPath) as CustomTableViewCell
    return cell
}
```
### UITableViewCell
```swift
let cell = CustomTableViewCell
cell.identifier   // "CustomTableViewCell"
```

## Author

cheverda@sjinnovation.com

## License

SJSwiftExtensions is available under the MIT license. See the LICENSE file for more info.
