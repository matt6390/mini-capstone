var productTemplate = document.querySelector("#product-card");
var productContainer = document.querySelector(".row");
console.log(productContainer);

axios.get("http://localhost:3000/products").then(function(response) {
  var products = response.data;
  products.forEach(function(product) {
    var productClone = productTemplate.content.cloneNode(true);
    productClone.querySelector(".title").innerText = product.name;
    productClone.querySelector(".price").innerText = product.price;
    productClone.querySelector(".description").innerText = product.description;
    productClone.querySelector(".supplier-name").innerText =
      product.supplier.name;
    productClone.querySelector(".supplier-number").innerText =
      product.supplier.phone_number;
    productContainer.appendChild(productClone);
  });
});
