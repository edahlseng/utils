precedencegroup ForwardKleisliComposition {
	associativity: right
	higherThan: ForwardApplication
}

infix operator >=>: ForwardKleisliComposition
