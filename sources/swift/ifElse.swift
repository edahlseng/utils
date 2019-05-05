// TODO: ifElse function


public func ifTrueElse<A>(_ whenTrue: @escaping (Bool) -> A) -> (@escaping (Bool) -> A) -> (Bool) -> A {
	return { whenFalse in
		{ boolean in
			boolean ? whenTrue(boolean) : whenFalse(boolean)
		}
	}
}
