// https://github.com/Quick/Quick

import Quick
import Nimble
import SJSwiftExtensions
import UIKit
import Foundation

class Specs: QuickSpec {
    override func spec() {
        describe("bool") {
            context("true value string should be") {
                it("correct") {
                    expect(true.stringValue).to(equal("true"))
                }
                it("wrong") {
                    expect(true.stringValue).toNot(equal("false"))
                }
            }
            context("false value string should be") {
                it("correct") {
                    expect(false.stringValue).to(equal("false"))
                }
                it("wrong") {
                    expect(false.stringValue).toNot(equal("true"))
                }
            }
            context("toggles") {
                it("from true value", closure: {
                    expect(true.toggle) == false
                })
                it("from false value", closure: {
                    expect(false.toggle) == true
                })
            }
        }
        
        describe("collection") {
            context("should be") {
                it("empty") {
                    expect([].isNotEmpty) == false
                    expect([].isEmpty) == true
                }
                it("not empty") {
                    expect([1, 2 ,3].isNotEmpty) == true
                    expect([1, 2, 3].isEmpty) == false
                }
            }
        }
        
        describe("string") {
            context("should be", closure: {
                it("empty") {
                    expect("".isEmpty) == true
                    expect("".isNotEmpty) == false
                }
                it("not empty") {
                    expect("123".isEmpty) == false
                    expect("123".isNotEmpty) == true
                }
            })
            context("should be") {
                it("in lowercase") {
                    expect("abc".isLowercased) == true
                    expect("123a".isLowercased) == true
                    expect("FDFsfsf21fsdf1./fsdF".lowercased().isLowercased) == true
                }
                it("not in lowercase") {
                    expect("ABC".isLowercased) == false
                    expect("123A".isLowercased) == false
                }
            }
        }
        
        describe("tableViewCell") {
            it("identifier is correct") {
                expect(TestTableViewCell.identifier) == "TestTableViewCell"
            }
        }
        
        describe("viewController") {
            it("identifier is correct") {
                expect(UIViewController.identifier) == "UIViewController"
            }
        }
    }
}
