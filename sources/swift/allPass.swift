public func allPass<A>(_ predicates: [(A) -> Bool]) -> (A) -> Bool {
    return { a in
        for predicate in predicates {
            if (!predicate(a)) { return false }
        }
        return true
    }
}
