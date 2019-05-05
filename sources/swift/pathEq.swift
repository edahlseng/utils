public func pathEq<Root, Value: Equatable>(_ keyPath: KeyPath<Root, Value>) -> (Value) -> (Root) -> Bool {
  return { testValue in
      { root in
          root[keyPath: keyPath] == testValue
      }
  }
}
