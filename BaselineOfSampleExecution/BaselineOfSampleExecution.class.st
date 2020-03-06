"
I am a baseline to define the structure and dependencies of the SampleExecution project.
"
Class {
	#name : #BaselineOfSampleExecution,
	#superclass : #BaselineOf,
	#category : #BaselineOfSampleExecution
}

{ #category : #baseline }
BaselineOfSampleExecution >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'SampleExecution'.
			"Groups"
			spec
				group: 'Core' with: #('SampleExecution')].
]

{ #category : #dependencies }
BaselineOfSampleExecution >> materialDesignLite: spec [
	spec
		baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v2.x.x/src' ]
]

{ #category : #accessing }
BaselineOfSampleExecution >> projectClass [
	^ MetacelloCypressBaselineProject
]
