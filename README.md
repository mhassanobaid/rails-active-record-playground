# Rails STI Example - E-commerce Products

This project demonstrates **Single Table Inheritance (STI)** in Rails using a real-world scenario of an e-commerce system.

---

## 🧠 What is STI?

STI (Single Table Inheritance) means:

* Multiple models share **one database table**
* A special column called `type` tells Rails which model it is

---

## 🏗️ Models

We have one base model:

* `Product`

And three child models:

* `Book`
* `Electronic`
* `Clothing`

All data is stored in a single table: `products`

---

## ⚙️ STI Column

Rails automatically uses a column named:

```
type
```

This column stores values like:

* "Book"
* "Electronic"
* "Clothing"

---

## 🛠️ Setup Steps

### 1. Open Rails Console

```
rails c
```

---

### 2. Create Records (Different Types)

```
Book.create(name: "Ruby Guide", price: 1000, author: "Hassan")

Electronic.create(name: "Laptop", price: 150000, warranty_months: 12)

Clothing.create(name: "T-Shirt", price: 2000, size: "L")
```

👉 These all go into the **same table (products)**
👉 Only `type` column differentiates them

---

## 📊 Check Data

### Get all products

```
Product.all
```

---

### Check type of first record

```
Product.first.type
# => "Book"
```

---

### Get last product

```
Product.last
```

---

### Fetch only Books

```
Book.all
```

---

## 🧪 Model Method Example

Assume we have a method in `Book` model:

```ruby
def display_info
  "Book: #{name} by #{author}"
end
```

### Call method:

```
Book.first.display_info
```

---

## 🧠 Important Understanding

Even though we write:

```
Book.create(...)
```

Rails actually stores it like:

| id | name       | price | type | author |
| -- | ---------- | ----- | ---- | ------ |
| 1  | Ruby Guide | 1000  | Book | Hassan |

👉 Same table
👉 Different behavior

---

## ✅ When to Use STI

Use STI when:

* Models share most fields
* Logic is similar
* Types are limited (2–3)

---

## ❌ When NOT to Use STI

Avoid STI when:

* Too many NULL columns
* Each type has very different fields
* System is growing fast

---

## 🎯 Quick Summary

* One table (`products`)
* Multiple models (`Book`, `Electronic`, `Clothing`)
* `type` column decides behavior
* Easy to use but can become messy at scale

---

## 🚀 Pro Tip

If system grows:

👉 Consider:

* Separate tables
* OR polymorphic associations

---

**End of Example ✅**
