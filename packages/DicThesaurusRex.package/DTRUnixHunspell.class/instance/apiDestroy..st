api callouts
apiDestroy: aHunspellHandle
	<cdecl: void 'Hunspell_destroy' (void*) module:'libhunspell-1.3.so.0'>
	^self externalCallFailed 