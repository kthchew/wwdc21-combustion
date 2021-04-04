import Foundation

public struct Alkane: Hashable, Identifiable {
    public init(_ member: Member) {
        self.member = member
    }
    
    public enum Member: Int, CustomStringConvertible {
        case methane = 1
        case ethane = 2
        case propane = 3
        case butane = 4
        case pentane = 5
        case hexane = 6
        case heptane = 7
        case octane = 8
        
        public var description: String {
            switch self {
            case .methane:
                return "Methane"
            case .ethane:
                return "Ethane"
            case .propane:
                return "Propane"
            case .butane:
                return "Butane"
            case .pentane:
                return "Pentane"
            case .hexane:
                return "Hexane"
            case .heptane:
                return "Heptane"
            case .octane:
                return "Octane"
            }
        }
    }
    
    public let id = UUID()
    let member: Member
    var numberOfCarbons: Int {
        member.rawValue
    }
}
