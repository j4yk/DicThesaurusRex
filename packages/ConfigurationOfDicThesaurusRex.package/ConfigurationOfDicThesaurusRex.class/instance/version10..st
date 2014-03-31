versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'Release version for dictionary and thesaurus support in Squeak'.
		spec author: 'mp'.
		spec timestamp: '7/29/2013 18:03'.
		spec 
			project: 'SpellingServices' with: '1.0.1';
			project: 'Widgets' with: '1.1.4'.
		spec 
			package: 'SwaUtil' with: 'SwaUtil-mp.87';
			package: 'DicThesaurusRex' with: 'DicThesaurusRex-mp.137'].