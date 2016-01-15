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
