<a name="readme-top"></a>

<div align="center">

  <h1><b>Blog-app-rails</b></h1>

</div>

<!-- TABLE OF CONTENTS -->

## 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
  - [🗺 Entity Relationship Diagram](#erd)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Blog-app-rails] <a name="about-project"></a>

**[Blog-app-rails]** is a classic example of a blog website. A fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/index.html">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.
- **[Process data in models]**
- **[Controllers specs]**
- **[Add Post]**
- **[Register User]**
- **[Like Post]**
- **[Add API endpoints]**

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [In progress...](https://github.com/MarcoOquendoC/Blog-app-rails)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Entity Relationship Diagram -->

## 🗺 Entity Relationship Diagram <a name="erd"></a>

![Entity Relationship Diagram](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/images/blog_app_erd.png?raw=true)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:

```sh
 gem install rails
```

### Setup

Using the terminal clone this repository to your desired folder (my-folder) and open it with VSCode:

```sh
  cd my-folder
  git clone https://github.com/MarcoOquendoC/Blog-app-rails.git
  cd Blog-app-rails
  code .
```

### Install

First we need to configure the database, (we used dotenv-rails gem).
create a file called `.env` in the root with the following content:
Note: Change the right side of = in each line to match your correct postgresql password and username. The content should look like this:

```sh
  PG_HOST = 5432
  PG_USERNAME = postgres
  PG_PASSWORD = yourpassword
  PG_DB_DEV = blog-development
  PG_DB_TEST = blog-test
```

Using the console install this project with:

```sh
  bundle install
  rails db:create
  rails db:migrate
  rails db:seed
  rails tailwindcss:build
```


### Usage

To run the project, execute the following command:

```sh
  rails s
```

### Run tests

To run tests, run the following command:

```sh
  bin/rails test test/models/comment_test.rb
  bin/rails test test/models/like_test.rb
  bin/rails test test/models/post_test.rb
  bin/rails test test/models/user_test.rb
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

<img src="https://ca.slack-edge.com/T47CT8XPG-U03GYGT3LBA-0bd15eb5c4a7-512" alt="Marco" width="40" height="40" /> **Marco Oquendo**

- GitHub: [@MarcoOquendoC](https://github.com/MarcoOquendoC). 
- Twitter: [@marcooquendoc](https://twitter.com/marcooquendoc). 
- LinkedIn: [Marco Vinicio Oquendo](https://www.linkedin.com/in/MarcoOquendoC/). 

<img src="https://ca.slack-edge.com/T47CT8XPG-U03NSM53L6Q-8e49c46dccdb-512" alt="Miliyon" width="40" height="40" /> **Miliyon Ayalew**

- GitHub: [@Miliyonayalew](https://github.com/Miliyonayalew/)
- Twitter: [@Miliyonayalew](https://twitter.com/MilaAyalew)
- LinkedIn: [Miliyonayalew](https://www.linkedin.com/in/miliyon-ayalew/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Deploy]**
- [ ] **[Add search]**
- [ ] **[improve user interfase]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this app, here is a hint. I love stars 🤩.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank:
- [Microverse](microverse.org)
- Code Reviewers
- [Michael Mesfin](https://github.com/michael-duke)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
