import pysolr
import requests

api_url = "https://jsonplaceholder.typicode.com/posts"
req_post = requests.get(api_url)
post_as_json = req_post.json()

solr = pysolr.Solr('http://localhost:8983/solr/tstCollection/update?commit=true', timeout=100, always_commit=True)

for record in post_as_json:
    solr.add(record)

print("finished successfully")
