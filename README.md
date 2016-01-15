Seed the db with:

```
User.create(name: 'Robert', display_name: 'Bob')
Thing.create(name: 'Thing1', flavor: 'Ruby', magic_number: 15, user_id: 1)
```

And then run `curl` piped to `jq`:

```
curl http://localhost:3000/api/test | jq
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   135  100   135    0     0   2055      0 --:--:-- --:--:-- --:--:--  2076
{
  "results": [
    {
      "created_at": 1452817066,
      "id": 1,
      "display_name": "Bob",
      "magic_number": 15,
      "flavor": "Ruby",
      "name": [
        "Robert",
        "Bob",
        15,
        "Ruby"
      ]
    }
  ]
}
```

Look at app/models/thing.rb as_json method. Do you see the bug?

