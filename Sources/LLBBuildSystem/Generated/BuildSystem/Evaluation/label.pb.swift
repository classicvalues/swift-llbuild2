// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: BuildSystem/Evaluation/label.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// This source file is part of the Swift.org open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

//// A Label represents a handle for finding a target within a workspace. It is made up of 2 components: the logical path
//// to the target's container (i.e. a package or project, depends on the context) and the name of the target within that
//// container. Build systems can choose to interpret the components of a label as needed, but they must all resolve into
//// a unique target. Labels have a String representation in the form of `//logical/container/path:target_name`, but it
//// is up to each build system how they choose how to construct Labels and whether they should be presented to the end
//// users. Labels are used in llbuild2 as a differentiator between targets, to aide in the deduplication of processing
//// targets and as a cross-build system coordination system, for example, if llbuild2 build systems chose to integrate
//// other build systems into the mix.
public struct LLBLabel {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  //// The logical path components that represent a target grouping. It is the path-like components between `//` and
  //// `:` in the canonical form. Components cannot have spaces or `/` characters in them. Check Label.swift for more
  //// details on allowed characters.
  public var logicalPathComponents: [String] = []

  //// The name of the target within the target container. The same character restrictions as logicalPathComponents
  //// apply here.
  public var targetName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension LLBLabel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "LLBLabel"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "logicalPathComponents"),
    2: .same(proto: "targetName"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedStringField(value: &self.logicalPathComponents)
      case 2: try decoder.decodeSingularStringField(value: &self.targetName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.logicalPathComponents.isEmpty {
      try visitor.visitRepeatedStringField(value: self.logicalPathComponents, fieldNumber: 1)
    }
    if !self.targetName.isEmpty {
      try visitor.visitSingularStringField(value: self.targetName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LLBLabel, rhs: LLBLabel) -> Bool {
    if lhs.logicalPathComponents != rhs.logicalPathComponents {return false}
    if lhs.targetName != rhs.targetName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
