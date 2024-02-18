import XCTest
@testable import ShapeAreaCalculator

final class ShapeAreaCalculatorTests: XCTestCase {
    
    func testAddShapeWithTheSameKeyThrowsError() {
        let calculator = ShapeAreaCalculator()
        let key = "circle"
        XCTAssertNoThrow(try calculator.addShape(try Circle(radius: 2), key: key))
        XCTAssertThrowsError(try calculator.addShape(try Circle(radius: 5), key: key))
    }
    
    func testCalculateShapeAreaForExistingKeyDoesNotThrowError() {
        let calculator = ShapeAreaCalculator()
        let key = "circle"
        XCTAssertNoThrow(try calculator.addShape(try Circle(radius: 2), key: key))
        XCTAssertNoThrow(try calculator.calculateShapeArea(key: key))
    }
    
    func testCalculateShapeAreaForNonExistingKeyThrowsError() {
        let calculator = ShapeAreaCalculator()
        let key = "circle"
        XCTAssertNoThrow(try calculator.addShape(try Circle(radius: 2), key: key))
        XCTAssertThrowsError(try calculator.calculateShapeArea(key: "triangle"))
    }
    
    func testCalculateShapeAreaForRemovedKeyThrowsError() {
        let calculator = ShapeAreaCalculator()
        let key = "circle"
        XCTAssertNoThrow(try calculator.addShape(try Circle(radius: 2), key: key))
        calculator.removeShape(key: key)
        XCTAssertThrowsError(try calculator.calculateShapeArea(key: key))
    }
}
