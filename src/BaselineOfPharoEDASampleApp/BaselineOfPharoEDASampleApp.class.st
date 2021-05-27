Class {
	#name : #BaselineOfPharoEDASampleApp,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoEDASampleApp
}

{ #category : #baselines }
BaselineOfPharoEDASampleApp >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			self includePharoEDA: spec.
			self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #meta }
BaselineOfPharoEDASampleApp >> declareGroupsIn: spec [
	spec
		group: 'core' with: #(#'EDASA-Domain');
		group: 'tests' with: #(#'EDASA-Domain-Tests');
		group: 'default' with: #('core' 'tests')
]

{ #category : #meta }
BaselineOfPharoEDASampleApp >> declarePackagesIn: spec [
	spec
		package: #'EDASA-Domain'
			with: [ spec requires: #('PharoEDA') ];
		package: #'EDASA-Domain-Tests'
			with: [ spec requires: #('EDASA-Domain') ]
]

{ #category : #dependencies }
BaselineOfPharoEDASampleApp >> includePharoEDA: spec [
	spec
		baseline: 'PharoEDA'
		with: [ spec repository: 'github://osoco/pharo-eda:settings' ].
	^ spec
]