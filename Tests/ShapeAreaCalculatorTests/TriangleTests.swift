import XCTest
@testable import ShapeAreaCalculator

final class TriangleTests: XCTestCase {
    
    func testTriangleWithIncorrectSidesThrowsError() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 10
        XCTAssertThrowsError(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC))
    }
    
    func testTriangleWithNegativeSideThrowsError() {
        let sideA: Double = -3
        let sideB: Double = -4
        let sideC: Double = -5
        XCTAssertThrowsError(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC))
    }
    
    func testTriangleWithCorrectSidesDoesNotThrowError() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 5
        XCTAssertNoThrow(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC))
    }

    func testTriangleArea() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 5
        let expectedArea: Double = 6
        XCTAssertEqual(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC).area(), expectedArea)
    }
    
    func testRightAngledTriangle() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 5
        XCTAssertTrue(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC).isRightAngled)
    }
    
    func testNonRightAngledTriangle() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 6
        XCTAssertFalse(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC).isRightAngled)
    }

}
