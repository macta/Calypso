accessing
queryResult: aQueryResult
	queryResult := aQueryResult.
	position := 0.
	cache := ClyBrowserQueryCache withSize: 20.
	itemCount := aQueryResult size.
	metadata := queryResult metadata.
	"we need to retrieve metadata ahead of time to avoid future requests to content about it.
	It is important for remote scenario"