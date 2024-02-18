import Foundation

/// Class for storing shapes and calculating their areas
public final class ShapeAreaCalculator {
    
    private var shapes: [String: Shape] = [:]
    
    public init() {}
    
    /// Adds a shape to the dictionary. If the key already exists an error will be thrown
    /// - Parameters:
    ///   - shape: Any shape that conforms `Shape` protocol
    ///   - key: Key for storing a shape in the dictionary
    public func addShape(_ shape: Shape, key: String) throws {
        if shapes[key] != nil {
            throw ShapeAreaCalculatorError.keyAlreadyExists
        }
        shapes[key] = shape
    }
    
    /// Removes a shape from the dictionary
    /// - Parameter key: Key represeting a shape
    public func removeShape(key: String) {
        shapes[key] = nil
    }
    
    /// Calculates the area of a shape stored by a given key
    /// - Parameter key: Key represeting a shape
    /// - Returns: The area of the shape stored by this key or an error if there is no such key
    public func calculateShapeArea(key: String) throws -> Double {
        guard let shape = shapes[key] else {
            throw ShapeAreaCalculatorError.noSuchShape
        }
        return shape.area()
    }
}

public enum ShapeAreaCalculatorError: Error {
    case keyAlreadyExists
    case noSuchShape
}
