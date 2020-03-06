Class {
	#name : #MyTestClass,
	#superclass : #TestCase,
	#instVars : [
		'mc1'
	],
	#category : #SampleExecution
}

{ #category : #running }
MyTestClass >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	| framework |
	framework := LongExec new.
	mc1 := framework mc1.
]

{ #category : #tests }
MyTestClass >> testMyTest [
	mc1 absine: 43.
	[ mc1 bontu: 50. mc1 absine: 87 "fails" ] ensure: [ mc1 delosh: 5 ].
	
]
