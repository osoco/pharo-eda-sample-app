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
			self includePharoEDATools: spec.
			self includePillar: spec.
			self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #meta }
BaselineOfPharoEDASampleApp >> declareGroupsIn: spec [
	spec
		group: 'core' with: #(#'EDASA-Domain');
		group: 'tests' with: #(#'EDASA-Domain-Tests');
		group: 'publishing' with: #('core' 'tests' 'Pillar' 'PillarCore' 'PillarDocumentModel' 'PillarMicro');
		group: 'default' with: #('core' 'tests')
]

{ #category : #meta }
BaselineOfPharoEDASampleApp >> declarePackagesIn: spec [
	spec
		package: #'EDASA-Domain'
			with: [ spec requires: #('PharoEDA' 'PharoEDATools') ];
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

{ #category : #dependencies }
BaselineOfPharoEDASampleApp >> includePharoEDATools: spec [
	spec
		baseline: 'PharoEDATools'
		with: [ spec repository: 'github://osoco/pharo-eda-tools:main' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfPharoEDASampleApp >> includePillar: spec [
	spec
		baseline: 'Pillar'
			with: [ spec repository: 'github://pillar-markup/pillar:dev-8' ];
		baseline: 'PillarCore'
			with: [ spec repository: 'github://pillar-markup/pillar:dev-8' ];
		baseline: 'PillarDocumentModel'
			with: [ spec repository: 'github://pillar-markup/pillar:dev-8' ];
		baseline: 'PillarExporter'
			with: [ spec repository: 'github://pillar-markup/pillar:dev-8' ];
		baseline: 'PillarMicro'
			with: [ spec repository: 'github://pillar-markup/pillar:dev-8' ];
		baseline: 'PillarApp'
			with: [ spec repository: 'github://pillar-markup/pillar:dev-8' ].
	^ spec
]
