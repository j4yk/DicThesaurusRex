| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'DicThesaurusRex';
  repository: 'filetree://', gitPath, '/DicThesaurusRex/packages';
  get.

Metacello new
  baseline: 'DicThesaurusRex';
  repository: 'filetree://', gitPath, '/DicThesaurusRex/packages';
  load: 'default'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfDicThesaurusRex' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
