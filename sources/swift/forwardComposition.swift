precedencegroup ForwardComposition {
	associativity: left
	higherThan: ForwardKleisliComposition
}

infix operator >>>: ForwardComposition

public func >>> <A, B, C>(_ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> ((A) -> C) {
	return {a in
		g(f(a))
	}
}

public func >>> <A, B, C, D>(_ f: @escaping (A, B) -> C, _ g: @escaping (C) -> D) -> ((A, B) -> D) {
	return { (a, b) in
		g(f(a, b))
	}
}
