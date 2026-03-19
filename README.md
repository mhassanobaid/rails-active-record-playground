# Rails ActiveRecord Playground

This repository contains practical, production-style examples of **ActiveRecord concepts in Rails**.

It is designed as a learning and experimentation space to understand how different Rails features work in real-world scenarios.

---

## 🚀 Tech Stack

* **Ruby**: 3.2.2
* **Rails**: 7.1.6
* **Database**: PostgreSQL
* **Environment**: WSL (Ubuntu on Windows)

---

## 📦 Key Dependencies

### Backend & Core

* `rails` – Web framework
* `pg` – PostgreSQL database adapter
* `puma` – Web server

### Frontend (Default Rails Stack)

* `importmap-rails` – JS module management (no bundler)
* `turbo-rails` – Fast navigation (Hotwire)
* `stimulus-rails` – Lightweight JS framework

### Assets

* `sprockets-rails` – Asset pipeline

### JSON APIs

* `jbuilder` – JSON response builder

### Development & Debugging

* `debug` – Debugging tool
* `web-console` – Interactive console in browser

### Testing

* `capybara` – Integration testing
* `selenium-webdriver` – Browser automation

---

## 📂 Project Structure

This repo is organized by **concepts**:

```
/sti
/associations
/callbacks
/validations
```

Each folder contains:

* Explanation
* Code examples
* Commands to run

---

## 🧠 Topics Covered

* Single Table Inheritance (STI)
* ActiveRecord Associations
* Callbacks
* Validations

(More concepts will be added over time)

---

## ⚙️ Setup Instructions

```bash
# Clone repo
git clone https://github.com/mhassanobaid/rails-active-record-playground.git

# Move into project
cd rails-active-record-playground

# Install dependencies
bundle install

# Setup database
rails db:create
rails db:migrate

# Run server
rails s
```

---

## 🎯 Purpose

This project is built to:

* Practice core Rails concepts
* Simulate real-world use cases
* Maintain clean, structured examples
* Serve as a reference for interviews

---

## 🚀 How to Use

Navigate into any topic folder and follow its README:

```
cd models/sti
```

---

## 🔥 Future Plans

* Add more ActiveRecord concepts
* Add real-world system design examples
* Improve structure and documentation

---

## 👨‍💻 Author

Muhammad Hassan Obaid

---

**Note:** This is a learning-focused repository and will evolve over time.
