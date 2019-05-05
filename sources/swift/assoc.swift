func assoc <A, B>(_ key: A, _ value: B, _ dictionary: [A:B]) -> [A:B] {
    var newDictionary = dictionary
    newDictionary[key] = value
    return newDictionary
}

public func assoc<Root, Value>(_ keyPath: WritableKeyPath<Root, Value>) -> (Value) -> (Root) -> Root {
	return { newValue in
		{ root in
			var editableRoot = root
			editableRoot[keyPath: keyPath] = newValue
			return editableRoot
		}
	}
}
