import XCTest
@testable import ShapeAreaCalculator

final class TriangleTests: XCTestCase {
    
    func testTriangleWithIncorrectSidesThrowsError() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 10
        XCTAssertThrowsError(try Triangle(sideA: sideA, sideB: sideB, sideC: sideC))
    }
    
    func testTriangleWithZeroSideThrowsError() {
        let sideA: Double = 0
        let sideB: Double = 4
        let sideC: Double = 4
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
        do {
            let triangle = try Triangle(sideA: sideA, sideB: sideB, sideC: sideC)
            XCTAssertEqual(triangle.area(), expectedArea)
        } catch {
            XCTFail("Triangle object was expected to be created without errors")
        }
    }
    
    func testRightAngledTriangle() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 5
        do {
            let triangle = try Triangle(sideA: sideA, sideB: sideB, sideC: sideC)
            XCTAssertTrue(triangle.isRightAngled)
        } catch {
            XCTFail("Triangle object was expected to be created without errors")
        }
    }
    
    func testNonRightAngledTriangle() {
        let sideA: Double = 3
        let sideB: Double = 4
        let sideC: Double = 6
        do {
            let triangle = try Triangle(sideA: sideA, sideB: sideB, sideC: sideC)
            XCTAssertFalse(triangle.isRightAngled)
        } catch {
            XCTFail("Triangle object was expected to be created without errors")
        }
    }

}
