// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file baton.proto

import Foundation
import ProtocolBuffers


internal func == (lhs: PointerState, rhs: PointerState) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasPitch == rhs.hasPitch) && (!lhs.hasPitch || lhs.pitch == rhs.pitch)
  fieldCheck = fieldCheck && (lhs.hasYaw == rhs.hasYaw) && (!lhs.hasYaw || lhs.yaw == rhs.yaw)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal struct BatonRoot {
  internal static var sharedInstance : BatonRoot {
   struct Static {
       static let instance : BatonRoot = BatonRoot()
   }
   return Static.instance
  }
  internal var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
  }
  internal func registerAllExtensions(registry:ExtensionRegistry) {
  }
}

final internal class PointerState : GeneratedMessage, GeneratedMessageProtocol {
  private(set) var hasPitch:Bool = false
  private(set) var pitch:Double = Double(0)

  private(set) var hasYaw:Bool = false
  private(set) var yaw:Double = Double(0)

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if !hasPitch {
      return false
    }
    if !hasYaw {
      return false
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) throws {
    if hasPitch {
      try output.writeDouble(1, value:pitch)
    }
    if hasYaw {
      try output.writeDouble(2, value:yaw)
    }
    try unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasPitch {
      serialize_size += pitch.computeDoubleSize(1)
    }
    if hasYaw {
      serialize_size += yaw.computeDoubleSize(2)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  internal class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<PointerState> {
    var mergedArray = Array<PointerState>()
    while let value = try parseFromDelimitedFromInputStream(input) {
      mergedArray += [value]
    }
    return mergedArray
  }
  internal class func parseFromData(data:NSData) throws -> PointerState {
    return try PointerState.Builder().mergeFromData(data, extensionRegistry:BatonRoot.sharedInstance.extensionRegistry).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> PointerState {
    return try PointerState.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) throws -> PointerState {
    return try PointerState.Builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> PointerState? {
    return try PointerState.Builder().mergeDelimitedFromInputStream(input)?.build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> PointerState {
    return try PointerState.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) throws -> PointerState {
    return try PointerState.Builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> PointerState {
    return try PointerState.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func getBuilder() -> PointerState.Builder {
    return PointerState.classBuilder() as! PointerState.Builder
  }
  internal func getBuilder() -> PointerState.Builder {
    return classBuilder() as! PointerState.Builder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return PointerState.Builder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return PointerState.Builder()
  }
  internal func toBuilder() throws -> PointerState.Builder {
    return try PointerState.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:PointerState) throws -> PointerState.Builder {
    return try PointerState.Builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasPitch {
      output += "\(indent) pitch: \(pitch) \n"
    }
    if hasYaw {
      output += "\(indent) yaw: \(yaw) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasPitch {
             hashCode = (hashCode &* 31) &+ pitch.hashValue
          }
          if hasYaw {
             hashCode = (hashCode &* 31) &+ yaw.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "PointerState"
  }
  override internal func className() -> String {
      return "PointerState"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return PointerState.self
  }
  //Meta information declaration end

  final internal class Builder : GeneratedMessageBuilder {
    private var builderResult:PointerState = PointerState()
    internal func getMessage() -> PointerState {
        return builderResult
    }

    required override internal init () {
       super.init()
    }
    var hasPitch:Bool {
         get {
              return builderResult.hasPitch
         }
    }
    var pitch:Double {
         get {
              return builderResult.pitch
         }
         set (value) {
             builderResult.hasPitch = true
             builderResult.pitch = value
         }
    }
    func setPitch(value:Double) -> PointerState.Builder {
      self.pitch = value
      return self
    }
    internal func clearPitch() -> PointerState.Builder{
         builderResult.hasPitch = false
         builderResult.pitch = Double(0)
         return self
    }
    var hasYaw:Bool {
         get {
              return builderResult.hasYaw
         }
    }
    var yaw:Double {
         get {
              return builderResult.yaw
         }
         set (value) {
             builderResult.hasYaw = true
             builderResult.yaw = value
         }
    }
    func setYaw(value:Double) -> PointerState.Builder {
      self.yaw = value
      return self
    }
    internal func clearYaw() -> PointerState.Builder{
         builderResult.hasYaw = false
         builderResult.yaw = Double(0)
         return self
    }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> PointerState.Builder {
      builderResult = PointerState()
      return self
    }
    internal override func clone() throws -> PointerState.Builder {
      return try PointerState.builderWithPrototype(builderResult)
    }
    internal override func build() throws -> PointerState {
         try checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> PointerState {
      var returnMe:PointerState = builderResult
      return returnMe
    }
    internal func mergeFrom(other:PointerState) throws -> PointerState.Builder {
      if other == PointerState() {
       return self
      }
      if other.hasPitch {
           pitch = other.pitch
      }
      if other.hasYaw {
           yaw = other.yaw
      }
      try mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) throws -> PointerState.Builder {
         return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> PointerState.Builder {
      var unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = try input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = try unknownFieldsBuilder.build()
          return self

        case 9 :
          pitch = try input.readDouble()

        case 17 :
          yaw = try input.readDouble()

        default:
          if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
             unknownFields = try unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

}


// @@protoc_insertion_point(global_scope)
