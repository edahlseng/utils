public func path<Root, Value>(_ keyPath: KeyPath<Root, Value>) -> (Root) -> Value {
  return { root in
    root[keyPath: keyPath]
  }
}
