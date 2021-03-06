tests
testFillingWithExtendedClassSide
	query := ClyAllClasses from: ClyPackageScope of: ClyClass1FromP1 package in: environment.
	queryResult := ClyExtensionLastSortedClasses simple prepareNewFor: query in: environment.
	
	queryResult buildWith: {
		ClySubclassLOfClass0FromPExtendedByP1 class. ClyClass2FromP1.  ClyClass1FromP1}.
	
	self assertItems: {ClyClass1FromP1. 0. ClyClass2FromP1. 0.
		 ClySubclassLOfClass0FromPExtendedByP1 class. 0}.
	self assert: (items last isMarkedWith: ClyExtendedClassTag)