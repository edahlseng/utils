public func always<A>(_ a: A) -> (Any?) -> A {
	return { _ in a }
}
