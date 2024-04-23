document.addEventListener("DOMContentLoaded", function () {
    var data = [
        {
          "userId": "1",
          "products": [
            {
              "name": "Laptop",
              "link": "https://example.com/laptop",
              "price": 999.99,
              "quantity": 10
            },
            {
              "name": "Smartphone",
              "link": "https://example.com/smartphone",
              "price": 699.99,
              "quantity": 15
            },
            {
              "name": "Headphones",
              "link": "https://example.com/headphones",
              "price": 149.99,
              "quantity": 20
            },
            {
              "name": "Backpack",
              "link": "https://example.com/backpack",
              "price": 49.99,
              "quantity": 30
            },
            {
              "name": "Sunglasses",
              "link": "https://example.com/sunglasses",
              "price": 29.99,
              "quantity": 25
            },
            {
              "name": "Watch",
              "link": "https://example.com/watch",
              "price": 199.99,
              "quantity": 12
            },
            {
              "name": "T-shirt",
              "link": "https://example.com/t-shirt",
              "price": 19.99,
              "quantity": 50
            },
            {
              "name": "Jeans",
              "link": "https://example.com/jeans",
              "price": 39.99,
              "quantity": 35
            },
            {
              "name": "Shoes",
              "link": "https://example.com/shoes",
              "price": 79.99,
              "quantity": 18
            },
            {
              "name": "Jacket",
              "link": "https://example.com/jacket",
              "price": 129.99,
              "quantity": 20
            },
            {
              "name": "Umbrella",
              "link": "https://example.com/umbrella",
              "price": 14.99,
              "quantity": 40
            },
            {
              "name": "Water bottle",
              "link": "https://example.com/water-bottle",
              "price": 9.99,
              "quantity": 60
            },
            {
              "name": "Wallet",
              "link": "https://example.com/wallet",
              "price": 24.99,
              "quantity": 25
            },
            {
              "name": "Sunglasses case",
              "link": "https://example.com/sunglasses-case",
              "price": 7.99,
              "quantity": 30
            },
            {
              "name": "Book",
              "link": "https://example.com/book",
              "price": 12.99,
              "quantity": 100
            },
            {
              "name": "Notebook",
              "link": "https://example.com/notebook",
              "price": 5.99,
              "quantity": 80
            },
            {
              "name": "Pen",
              "link": "https://example.com/pen",
              "price": 1.99,
              "quantity": 150
            },
            {
              "name": "Desk lamp",
              "link": "https://example.com/desk-lamp",
              "price": 34.99,
              "quantity": 20
            },
            {
              "name": "Mousepad",
              "link": "https://example.com/mousepad",
              "price": 8.99,
              "quantity": 50
            },
            {
              "name": "USB flash drive",
              "link": "https://example.com/usb-flash-drive",
              "price": 19.99,
              "quantity": 45
            }
          ]
        },
        {
          "userId": "2",
          "products": [
            {
              "name": "Laptop",
              "link": "https://example.com/laptop",
              "price": 999.99,
              "quantity": 10
            },
            {
              "name": "Smartphone",
              "link": "https://example.com/smartphone",
              "price": 699.99,
              "quantity": 15
            }
          ]
        },
        {
          "userId": "3",
          "products": []
        }
      ]
    var urlParams = new URLSearchParams(window.location.search);
    var userId = urlParams.get("id");
    if (userId != null && userId != "") {
        let userIndex = data.findIndex(e => e.userId == userId)
        if (userIndex != -1) {
            displayPurchasedItems(data[userIndex]);
        }
    }
});

function displayPurchasedItems(purchasedItems) {
    var purchasedList = document.getElementById("purchasedList");

    purchasedItems.products.forEach(item => {
        var listItem = document.createElement("li");

        var nameSpan = document.createElement("span");
        nameSpan.textContent = item.name + " (" + item.price.toFixed(2) + ")";
        listItem.appendChild(nameSpan);
        var brSpan = document.createElement("br");
        listItem.appendChild(brSpan);

        var priceSpan = document.createElement("span");
        priceSpan.textContent = item.quantity;
        listItem.appendChild(priceSpan);

        purchasedList.appendChild(listItem);
    });
}
