baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		
		spec project: 'SpellingServices' with: [
			spec
				className: 'ConfigurationOfSpellingServices';
				file: 'ConfigurationOfSpellingServices';
				repository: 'http://www.squeaksource.com/MetacelloRepository';
				versionString: '1.0.1' ].
		
		spec project: 'Widgets' with: [
			spec
				className: 'ConfigurationOfWidgets';
				file: 'ConfigurationOfWidgets';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository';
				versionString: '1.1.4' ].
		
		spec package: 'SwaUtil' with: [spec repository: self class swaUtilities].
		
		spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'.
		spec 
			package: 'DicThesaurusRex' 
			with: [spec 
					requires: #('SpellingServices' 'Widgets' 'SwaUtil')].
		spec group: 'default' with: #('DicThesaurusRex') ].