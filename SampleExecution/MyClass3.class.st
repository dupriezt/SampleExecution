Class {
	#name : #MyClass3,
	#superclass : #Object,
	#instVars : [
		'mc2',
		'mc1'
	],
	#category : #SampleExecution
}

{ #category : #'as yet unclassified' }
MyClass3 >> absine: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 bontu: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 bontu: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 delosh: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 delosh: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass3 >> bontu: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 casper: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 casper: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 absine: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 absine: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass3 >> casper: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 delosh: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 delosh: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 bontu: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 bontu: anInteger -1 ].
	
]

{ #category : #'as yet unclassified' }
MyClass3 >> delosh: anInteger [
	"%3 -> previous class, else next class
	%4 -> previous letter, else next letter"
	(anInteger <= 0) ifTrue: [ ^ self zeroCase ].
	((anInteger % 3 ~= 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc1 absine: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 ~= 0)) ifTrue: [ ^ mc2 absine: anInteger -1 ].
	((anInteger % 3 ~= 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc1 casper: anInteger -1 ].
	((anInteger % 3 = 0) & (anInteger % 4 = 0)) ifTrue: [ ^ mc2 casper: anInteger -1 ].
	
]

{ #category : #initialization }
MyClass3 >> initialize [
	mc1 := MyClass1 new.
	mc2 := MyClass2 new.
]

{ #category : #accessing }
MyClass3 >> mc1: anObject [
	mc1 := anObject
]

{ #category : #accessing }
MyClass3 >> mc2: anObject [
	mc2 := anObject
]

{ #category : #'as yet unclassified' }
MyClass3 >> zeroCase [
	self error: 'error'
]
