
    document.addEventListener("DOMContentLoaded", function () {
        const cartItemsContainer = document.getElementById("cart-items");
        const cartTotal = document.getElementById("cart-total");
        let cart = JSON.parse(localStorage.getItem("cart")) || [];

        function updateCart() {
            cartItemsContainer.innerHTML = "";
            let total = 0;
            cart.forEach((item, index) => {
                let row = document.createElement("tr");
                row.innerHTML = `
                    <td>${item.name}</td>
                    <td>$${item.price.toFixed(2)}</td>
                    <td>$${item.price.toFixed(2)}</td> 
                    <td><button class='remove-btn' data-index='${index}'>Remove</button></td>
                `;
                cartItemsContainer.appendChild(row);
                total += item.price;
            });
            cartTotal.textContent = `$${total.toFixed(2)}`;
            localStorage.setItem("cart", JSON.stringify(cart));
        }

        cartItemsContainer.addEventListener("click", function (event) {
            if (event.target.classList.contains("remove-btn")) {
                let index = event.target.getAttribute("data-index");
                cart.splice(index, 1);
                updateCart();
            }
        });

        updateCart();
    });

