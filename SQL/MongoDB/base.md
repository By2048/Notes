- 第一个{}表示返回所有
- 第二个表示选择的列，1表示选择,0表示禁止输出
```sql

db.urls.find({}, {'Url':1, '_id':0})





.sort({"create_date":-1}



"create_date": { "$gte" : ISODate("2018-12-01T00:00:00Z"), "$lte" : ISODate("2018-12-31T00:00:00Z") } 

db.players.update({"firstname":"Irving"},{$set:{"team":"Cletics","Season":"2017~2018"}})


db.getCollection('ebc_recommend_articles').find({"caller":{$exists:true}})



db.getCollection('ebc_recommend_articles').update({"_id" : ObjectId("5c3587983912d706f4bb3e66")},{$set:{"caller":"oYazTsj5MutiUwZBMZHac89EXye8"}})

db.getCollection('ebc_recommend_articles').find()

{ name: { $regex: /acme.*corp/i, $nin: [ 'acmeblahcorp' ] } }


```

db.getCollection('ebc_kitchen_statistics').find({"action" : "annual_share"})


db.getCollection('ebc_kitchen_vote_handle').find({"action" : "vote"},{"create_date": { "$gte" : ISODate("2019-03-14T00:00:00Z"), "$lte" : ISODate("2019-03-16T00:00:00Z") } })