| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

[Metacello new
  configuration: 'DicThesaurusRex';
  version: '1.0';
  repository: 'github://j4yk/DicThesaurusRex:configuration';
  load: 'Tests' ]
        on: Warning
        do: [:ex |
                Transcript cr; show: 'Warning: ', ex description.
                ex resume: true].

"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfDicThesaurusRex' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
