public func map<S: Sequence, B>(_ transform: @escaping (S.Element) -> B) -> (S) -> [B] {
  return { sequence in
    sequence.map(transform)
  }
}
