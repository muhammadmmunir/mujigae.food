# mujigae.food

Selecting the favourite menu Mujigae categories for personalised experience.


- Use two library with podfile installation:
    
        1. Alamofire
        2. SwiftyJSON

- Use local API created with `json-server` and current data menus.json:

    ```json
    {
        "menus": [
            { "id": 1, "name": "Topokki"},
            { "id": 2, "name": "Sundubu"},
            { "id": 3, "name": "Galbitang"},
            { "id": 4, "name": "Beef BBQ"},
            { "id": 5, "name": "Korean Fried Chicken"},
            { "id": 6, "name": "Bingsoo"},
            { "id": 7, "name": "Dakgalbi"},
            { "id": 8, "name": "Ramyun"},
            { "id": 9, "name": "Anyeong Set 1"},
            { "id": 10, "name": "Nori"},
            { "id": 11, "name": "Mandu"},
            { "id": 12, "name": "Kimchi"},
            { "id": 13, "name": "Beef"},
            { "id": 14, "name": "Anyeong Set 2"},
            { "id": 15, "name": "Choko Bingsoo"},
            { "id": 16, "name": "Bokumpbap"},
            { "id": 12, "name": "Korean Lemonade"},
            { "id": 13, "name": "Matha Milk Tea"},
            { "id": 14, "name": "Choco Banana Milk"},
            { "id": 15, "name": "Jeju Orange Tea"},
            { "id": 16, "name": "Apple Tea"}
        ]
    }
    ```