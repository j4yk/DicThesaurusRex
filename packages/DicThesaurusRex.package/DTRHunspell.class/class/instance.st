singleton
instance
	^ Instance ifNil: [Instance := DTRUnixHunspell
										basicNew
										initialize;
										yourself]