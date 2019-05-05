public enum Either<L, R> {
	case left(L)
	case right(R)
}

public func either<A, B, C>(_ f1: @escaping (A) -> C) -> (@escaping (B) -> C) -> (Either<A, B>) -> C {
	return { f2 in
		{ eitherFunctor in
			switch (eitherFunctor) {
				case .left(let value):
					return f1(value)
				case .right(let value):
					return f2(value)
			}
		}
	}
}

public func eitherToOptional<A, B>(_ eitherFunctor: Either<A, B>) -> B? {
	switch (eitherFunctor) {
		case .left(_):
			return nil
		case .right(let value):
			return value
	}
}
