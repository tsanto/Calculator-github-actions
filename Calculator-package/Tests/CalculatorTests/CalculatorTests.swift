import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    var calculator: Calculator!

    override func setUp() {
        calculator = Calculator()
    }

    func test_should_return_nice_when_multiplying_three_with_three() {
        let valueX = 3
        let valueY = 3

        let result = calculator.multitply(valueX, with: valueY)

        XCTAssertEqual(result, 9)
    }

    static var allTests = [
        ("test_should_return_nice_when_multiplying_three_with_three", test_should_return_nice_when_multiplying_three_with_three),
    ]
}
