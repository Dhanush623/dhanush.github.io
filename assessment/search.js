async function searchItems() {
    const searchInput = document.getElementById('searchInput').value;

    const searchResults = await performSearch(searchInput);

    displaySearchResults(searchResults);
}

async function performSearch(query) {
    const results = [
        {
            "name": "Laptop",
            "link": "https://example.com/laptop",
            "price": 999.99,
        },
        {
            "name": "Smartphone",
            "link": "https://example.com/smartphone",
            "price": 699.99,
        },
        {
            "name": "Headphones",
            "link": "https://example.com/headphones",
            "price": 149.99,
        },
        {
            "name": "Backpack",
            "link": "https://example.com/backpack",
            "price": 49.99,
        },
        {
            "name": "Sunglasses",
            "link": "https://example.com/sunglasses",
            "price": 29.99,
        },
        {
            "name": "Watch",
            "link": "https://example.com/watch",
            "price": 199.99,
        },
        {
            "name": "T-shirt",
            "link": "https://example.com/t-shirt",
            "price": 19.99,
        },
        {
            "name": "Jeans",
            "link": "https://example.com/jeans",
            "price": 39.99,
        },
        {
            "name": "Shoes",
            "link": "https://example.com/shoes",
            "price": 79.99,
        },
        {
            "name": "Jacket",
            "link": "https://example.com/jacket",
            "price": 129.99,
        },
        {
            "name": "Umbrella",
            "link": "https://example.com/umbrella",
            "price": 14.99,
        },
        {
            "name": "Water bottle",
            "link": "https://example.com/water-bottle",
            "price": 9.99,
        },
        {
            "name": "Wallet",
            "link": "https://example.com/wallet",
            "price": 24.99,
        },
        {
            "name": "Sunglasses case",
            "link": "https://example.com/sunglasses-case",
            "price": 7.99,
        },
        {
            "name": "Book",
            "link": "https://example.com/book",
            "price": 12.99,
        },
        {
            "name": "Notebook",
            "link": "https://example.com/notebook",
            "price": 5.99,
        },
        {
            "name": "Pen",
            "link": "https://example.com/pen",
            "price": 1.99,
        },
        {
            "name": "Desk lamp",
            "link": "https://example.com/desk-lamp",
            "price": 34.99,
        },
        {
            "name": "Mousepad",
            "link": "https://example.com/mousepad",
            "price": 8.99,
        },
        {
            "name": "USB flash drive",
            "link": "https://example.com/usb-flash-drive",
            "price": 19.99,
        }
    ];
    return results.filter(item => item.name.toLowerCase().includes(query.toLowerCase()));
}

function displaySearchResults(results) {
    const searchResultsList = document.getElementById('searchResults');
    searchResultsList.innerHTML = ''; // Clear previous results

    results.forEach(result => {
        var listItem = document.createElement("li");
        var nameSpan = document.createElement("span");
        nameSpan.textContent = "Name: " + result.name;
        nameSpan.id = "name";
        listItem.appendChild(nameSpan);

        var brSpan = document.createElement("br");
        listItem.appendChild(brSpan);

        var priceSpan = document.createElement("span");
        priceSpan.textContent = "Price: " + result.price.toFixed(2);
        priceSpan.id = "price";
        listItem.appendChild(priceSpan);
        searchResultsList.appendChild(listItem);
    });
}
