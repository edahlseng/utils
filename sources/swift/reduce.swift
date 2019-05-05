public func reduce<S: Sequence, B>(_ transform: @escaping (B, S.Element) -> B) -> (B) -> (S) -> B {
  return { initialResult in
      { sequence in
        sequence.reduce(initialResult, transform)
      }
  }
}
