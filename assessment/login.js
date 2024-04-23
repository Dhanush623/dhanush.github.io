document.getElementById("loginForm").addEventListener("submit", function (event) {
    event.preventDefault();
    var users = [
        { "username": "john", "password": "johnsmith", "display": "John Smith", "id": 1 },
        { "username": "emily", "password": "emily@johnson", "display": "Emily Johnson", "id": 2 },
        { "username": "brown", "password": "brown#321", "display": "Michael Brown", "id": 3 },
        { "username": "williams", "password": "williams#007", "display": "Sarah Williams", "id": 4 },
        { "username": "david", "password": "david@123", "display": "David Jones", "id": 5 },
    ]

    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    console.log("username ", username)
    console.log("password ", password)
    var user = users.find(u => u.username === username && u.password === password);
    if (user) {
        updateName(user.id);
    } else {
        document.getElementById("invalidUser").textContent = "Invalid User";

    }
});

function updateName(id) {
    if (id !== null && id !== "") {
        document.getElementById("nameDisplay").textContent = id;
        document.getElementById("nameDisplay").style.color = "#ffffff";
        document.getElementById("nameDisplay").style.fontSize = 0;
    }
}
