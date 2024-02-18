import XCTest
@testable import ShapeAreaCalculator

final class CircleTests: XCTestCase {
    
    func testCircleWithNegativeRadiusThrowsError() {
        let radius: Double = -1
        XCTAssertThrowsError(try Circle(radius: radius))
    }
    
    func testCircleWithZeroRadiusDoesNotThrowError() {
        let radius: Double = 0
        XCTAssertNoThrow(try Circle(radius: radius))
    }
    
    func testCircleWithPositiveRadiusDoesNotThrowError() {
        let radius: Double = 2
        XCTAssertNoThrow(try Circle(radius: radius))
    }
    
    func testCircleWithZeroRadiusArea() {
        let radius: Double = 0
        let expectedArea: Double = 0
        XCTAssertEqual(try Circle(radius: radius).area(), expectedArea)
    }
    
    func testCircleWithNonZeroRadiusArea() {
        let radius: Double = 2
        let expectedArea = Double.pi * 4
        XCTAssertEqual(try Circle(radius: radius).area(), expectedArea)
    }
}
