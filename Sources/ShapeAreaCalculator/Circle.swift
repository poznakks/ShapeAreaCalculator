import Foundation

public struct Circle: Shape {
    
    private let radius: Double
    
    /// Initializer either creates an object or throws an error in case of negative radius
    /// - Parameter radius: Non-negative circle radius
    public init(radius: Double) throws {
        guard radius >= 0 else {
            throw CircleError.negativeRadius
        }
        self.radius = radius
    }
    
    // MARK: Shape protocol
    public func area() -> Double {
        Double.pi * radius * radius
    }
}

public enum CircleError: Error {
    case negativeRadius
}
