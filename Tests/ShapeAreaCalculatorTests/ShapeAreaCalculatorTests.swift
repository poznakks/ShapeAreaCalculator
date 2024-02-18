import XCTest
@testable import ShapeAreaCalculator

final class ShapeAreaCalculatorTests: XCTestCase {
    
    func testCalculateAreaForAllShapes() {
        let calculator = ShapeAreaCalculator()
        let areas = [Double.pi * 4, 6]
        do {
            let circle = try Circle(radius: 2)
            calculator.addShape(circle)
            
            let triangle = try Triangle(sideA: 3, sideB: 4, sideC: 5)
            calculator.addShape(triangle)
            
            XCTAssertEqual(calculator.calculateAreaForAllShapes(), areas)
        } catch {
            XCTFail("Circle and Triangle objects were expected to be created without errors")
        }
    }
}
