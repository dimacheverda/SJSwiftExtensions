// https://github.com/Quick/Quick

import Quick
import Nimble
import SJSwiftExtensions

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        
        describe("bool") {
            it("true value string is correct") {
                expect(true.stringValue).to(equal("true"))
            }
            it("false value string is correct") {
                expect(true.stringValue).to(equal("true"))
            }
            it("true value string is wrong") {
                expect(true.stringValue).toNot(equal("false"))
            }
            it("false value string is wrong") {
                expect(false.stringValue).toNot(equal("true"))
            }
        }
        
        
    }
}
