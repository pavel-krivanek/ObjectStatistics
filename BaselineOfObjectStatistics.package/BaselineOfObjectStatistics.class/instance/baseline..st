baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'StateSpecs' with: [
			spec 
				repository: 'github://dionisiydk/StateSpecs:v2.4.11';
				loads: 'Core' ].
		spec baseline: 'Mocketry' with: [
			spec repository: 'github://dionisiydk/Mocketry:v4.0.8' ].
		spec 
			package: 'ObjectStatistics' with: [spec requires: #('StateSpecs')];
			package: 'ObjectStatistics-Tests' with: [spec requires: #('ObjectStatistics' 'Mocketry')];
			package: 'ObjectStatistics-GTTools' with: [spec requires: #('ObjectStatistics')].
		spec 
			group: 'default' with: #('Core' 'ObjectStatistics-GTTools' 'Tests');
			group: 'Core' with: #('ObjectStatistics');
			group: 'Tests' with: #('ObjectStatistics-Tests') ]
