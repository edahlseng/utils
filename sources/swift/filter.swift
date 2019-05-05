public func filter<S: Sequence>(_ predicate: @escaping (S.Element) -> Bool) -> (S) -> [S.Element] {
  return { sequence in
    sequence.filter(predicate)
  }
}
