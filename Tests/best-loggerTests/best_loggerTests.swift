import XCTest
@testable import best_logger

final class best_loggerTests: XCTestCase {
    func testExample() {
        let logger = BestLogger(label: "TestLogger", level: .debug)
        logger.trace("sample message")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
