Class {
	#name : #MyClass2,
	#superclass : #Object,
	#instVars : [
		'mc3',
		'mc1'
	],
	#category : #SampleExecution
}

{ #category : #'as yet unclassified' }
MyClass2 >> absine: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 bontu: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 bontu: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 delosh: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 delosh: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass2 >> bontu: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 casper: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 casper: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 absine: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 absine: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass2 >> casper: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 delosh: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 delosh: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 bontu: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 bontu: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass2 >> delosh: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 absine: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 absine: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 casper: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 casper: anInteger -1 ].
	
]

{ #category : #accessing }
MyClass2 >> mc1: anObject [
	mc1 := anObject
]

{ #category : #accessing }
MyClass2 >> mc3: anObject [
	mc3 := anObject
]

{ #category : #'as yet unclassified' }
MyClass2 >> zeroCase [
	^ 42
]
