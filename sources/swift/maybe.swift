public func maybe<A, B>(_ d: B) -> (@escaping (A) -> B) -> (A?) -> B {
	return { f in
		{ m in
			guard let a = m else {
				return d
			}
			return f(a)
		}
	}
}
