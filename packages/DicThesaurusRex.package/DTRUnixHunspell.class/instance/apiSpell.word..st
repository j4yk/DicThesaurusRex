api callouts
apiSpell: aHunspellHandle word: aString
	<cdecl: long 'Hunspell_spell' (void* char*) module:'libhunspell-1.3.so.0'>
	^self externalCallFailed