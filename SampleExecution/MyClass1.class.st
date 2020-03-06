Class {
	#name : #MyClass1,
	#superclass : #Object,
	#instVars : [
		'mc2',
		'mc3'
	],
	#category : #SampleExecution
}

{ #category : #'as yet unclassified' }
MyClass1 >> absine: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 bontu: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 bontu: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 delosh: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 delosh: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass1 >> bontu: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 casper: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 casper: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 absine: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 absine: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass1 >> casper: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 delosh: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 delosh: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 bontu: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 bontu: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass1 >> delosh: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 absine: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc3 absine: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 casper: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc3 casper: anInteger -1 ].
	
]

{ #category : #accessing }
MyClass1 >> mc2: anObject [
	mc2 := anObject
]

{ #category : #accessing }
MyClass1 >> mc3: anObject [
	mc3 := anObject
]

{ #category : #'as yet unclassified' }
MyClass1 >> zeroCase [
	^ 42
]
