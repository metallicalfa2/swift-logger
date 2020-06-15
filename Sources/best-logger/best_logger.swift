//
//  BestLogger.swift
//

import Foundation

public struct BestLogger{
    
    public let label: String
    public var logLevel: Level
    
    internal init(label: String, level: Level) {
        self.label = label
        self.logLevel = level
    }
    
    public enum Level: Int, Comparable {
        case trace = 0
        case debug
        case info
        case warning
        case error
        case none
        
        public static func < (a: Level, b: Level) -> Bool {
            return a.rawValue < b.rawValue
        }
    }
    
}

extension BestLogger{
    public func trace(_ message: Any..., file: String = #file, function: String = #function, line: UInt = #line) {
        if self.logLevel <= .trace{
            print("[TRACE] \((file as NSString).lastPathComponent) [\(line)]:", terminator: " ")
            _ = message.map{ return print($0, terminator: ", ")}
            print("\n")
        }
    }
    
    public func debug(_ message: Any..., file: String = #file, function: String = #function, line: UInt = #line) {
        if self.logLevel <= .debug{
            print("[DEBUG]\((file as NSString).lastPathComponent) [\(line)]:", terminator: " ")
            _ = message.map{ print($0, terminator: ", ")}
            print("\n")
        }
    }
    
    public func info(_ message: Any..., file: String = #file, function: String = #function, line: UInt = #line) {
        if self.logLevel <= .info{
            print("[INFO] \((file as NSString).lastPathComponent) [\(line)]:", terminator: " ")
            _ = message.map{ print($0, terminator: ", ")}
            print("\n")
        }
    }
    
    public func warning(_ message: Any..., file: String = #file, function: String = #function, line: UInt = #line) {
        if self.logLevel <= .warning{
            print("[WARNING] \((file as NSString).lastPathComponent) [\(line)]:", terminator: " ")
            _ = message.map{ print($0, terminator: ", ")}
            print("\n")
        }
    }
    
    public func error(_ message: Any..., file: String = #file, function: String = #function, line: UInt = #line) {
        if self.logLevel <= .error{
            print("[ERROR] \((file as NSString).lastPathComponent) [\(line)]:", terminator: " ")
            _ = message.map{ print($0, terminator: ", ")}
            print("\n")
        }
    }
    
}
