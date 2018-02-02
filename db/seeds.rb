# Product.create!([
#   {name: "Constant Calculator", price: "25.0", image_url: "https://compass1.org/wp-content/uploads/2015/06/Calculator_clipped_rev_1.png", description: "Ever wanted to find what the value of that constant is?", on_sale: false},
#   {name: "One-Eyed Teddy", price: "200.0", image_url: "https://endlessfalling.files.wordpress.com/2013/07/3459_l.jpg", description: "A special teddy with a dark story.", on_sale: false},
#   {name: "Capstone Cookbook", price: "150.0", image_url: "http://www.iccmarydel.org/uploads/6/9/0/4/69049539/8606531_orig.jpg", description: "Want to make the greatest capstone that there ever was?!?!?!", on_sale: false},
#   {name: "", price: nil, image_url: "", description: "", on_sale: nil}
# ])


Category.create([
                  {name: "'Safe'"},
                  {name: "Expensive"},
                  {name: "Hot Items"},
                  {name: "Living"}
                  ])


ProductCategory.create!([
                          {category_id: 1, product_id: 1},
                          {category_id: 1, product_id: 3},
                          {category_id: 2, product_id: 2},
                          {category_id: 2, product_id: 3},
                          {category_id: 3, product_id: 2},
                          {category_id: 4, product_id: 2}
                          ])









