var request = SearchRequest()
request.corpus = .univarsal
request.pageNumber = 3

print(try request.jsonString())

var response = SearchResponse()
response.projects = ["": .init()]

print(try response.serializedData())
