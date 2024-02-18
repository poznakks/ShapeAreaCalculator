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
        do {
            let circle = try Circle(radius: radius)
            XCTAssertEqual(circle.area(), expectedArea)
        } catch {
            XCTFail("Circle object was expected to be created without errors")
        }
    }
    
    func testCircleWithNonZeroRadiusArea() {
        let radius: Double = 2
        let expectedArea = Double.pi * 4
        do {
            let circle = try Circle(radius: radius)
            XCTAssertEqual(circle.area(), expectedArea)
        } catch {
            XCTFail("Circle object was expected to be created without errors")
        }
    }
}
