import XCTest
@testable import BestLogger

final class best_loggerTests: XCTestCase {
    func testExample() {
        let logger = BestLogger(label: "TestLogger", level: .debug)
        logger.trace("sample message") // Doesn't print
        logger.debug("message", 1, [1:2]) // prints for log level debug
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
