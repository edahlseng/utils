public func apply<A, B, C, D, E, F, G, H>(_ functions: ((A) -> B, (C) -> D, (E) -> F, (G) -> H)) -> ((A, C, E, G)) -> (B, D, F, H) {
    return { inputs in
        (functions.0(inputs.0), functions.1(inputs.1), functions.2(inputs.2), functions.3(inputs.3))
    }
}

// TODO: is this actually a "map" function?
public func applyMaybe<A, B>(_ f: @escaping (A) -> B) -> (A?) -> B?  {
  return {
      guard let a = $0 else { return nil }
      return f(a)
  }
}
