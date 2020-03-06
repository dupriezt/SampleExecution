Class {
	#name : #LongExec,
	#superclass : #Object,
	#instVars : [
		'mc1',
		'mc2',
		'mc3'
	],
	#category : #SampleExecution
}

{ #category : #initialization }
LongExec >> initialize [
	mc1 := MyClass1 new.
	mc2 := MyClass2 new.
	mc3 := MyClass3 new.
	mc1 mc2: mc2.
	mc1 mc3: mc3.
	mc2 mc1: mc1.
	mc2 mc3: mc3.
	mc3 mc1: mc1.
	mc3 mc2: mc2.
]

{ #category : #accessing }
LongExec >> mc1 [
	^ mc1
]

{ #category : #accessing }
LongExec >> mc2 [
	^ mc2
]

{ #category : #accessing }
LongExec >> mc3 [
	^ mc3
]
