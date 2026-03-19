# Rails STI Example — Namespaced Version (`Sti::*`)

This project demonstrates **Single Table Inheritance (STI)** in Rails using an e-commerce example — but with a **cleaner namespaced structure**:

```
app/models/sti/
  product.rb
  book.rb
  electronic.rb
  clothing.rb
```

---

# 🧠 What is STI?

STI (Single Table Inheritance) means:

- Multiple models share **one database table**
- Rails uses a special column called `type`
- That column stores the **class name** (e.g., `Sti::Book`)

---

# 🏗️ Model Structure (Namespaced)

We now use **a namespace**: `Sti::`

### Base model
- `Sti::Product`

### Child models
- `Sti::Book`
- `Sti::Electronic`
- `Sti::Clothing`

All of these use a **single table**:

```
products
```

---

# ⚙️ STI Column (IMPORTANT)

Rails automatically uses the column:

```
type
```

And it now stores values like:

- `"Sti::Book"`
- `"Sti::Electronic"`
- `"Sti::Clothing"`

(Previously it stored `"Book"` but now it stores fully namespaced class names.)

---

# 🛠️ Setup Steps

## 1. Start Rails Console

```bash
rails c
```

---

## 2. Create Records (Namespaced Models)

```ruby
Sti::Book.create(
  name: "Ruby Guide",
  price: 1000,
  author: "Hassan"
)

Sti::Electronic.create(
  name: "Laptop",
  price: 150000,
  warranty_months: 12
)

Sti::Clothing.create(
  name: "T-Shirt",
  price: 2000,
  size: "L"
)
```

👉 All these go into one table: **products**  
👉 `type` column differentiates between models

---

# 📊 Querying Data

### Get all products

```ruby
Sti::Product.all
```

---

### Check type of first record

```ruby
Sti::Product.first.type
# => "Sti::Book"
```

---

### Get last product

```ruby
Sti::Product.last
```

---

### Fetch only books

```ruby
Sti::Book.all
```

---

# 🧪 Example Method

If your `Sti::Book` model has:

```ruby
def display_info
  "Book: #{name} by #{author}"
end
```

Call it:

```ruby
Sti::Book.first.display_info
```

---

# 🧠 How STI Stores Data

Even when you create using:

```ruby
Sti::Book.create(...)
```

Rails saves it like this:

| id | name       | price | type        | author |
| -- | ---------- | ----- | ----------- | ------ |
| 1  | Ruby Guide | 1000  | Sti::Book   | Hassan |

👉 Same table  
👉 Different class behavior

---

# ✅ When to Use STI

Use STI when:

- Models share many fields  
- Behaviors/logic are similar  
- You have limited types  
- Namespacing keeps things clean

---

# ❌ When NOT to Use STI

Avoid STI when:

- You have too many type-specific columns  
- Many NULL fields appear  
- Models differ significantly  
- System is large and rapidly changing  

---

# 🎯 Summary

- All models in **`app/models/sti/`**
- Base: `Sti::Product`
- Children: `Sti::Book`, `Sti::Electronic`, `Sti::Clothing`
- One table: `products`
- Rails uses `type` column with namespaced values
- Clean, scalable structure  

---

# 🚀 Pro Tip

If the system grows large:

👉 Prefer **polymorphic associations** or  
👉 **Separate tables + inheritance via modules**

---

**End of Namespaced STI Example ✅**
