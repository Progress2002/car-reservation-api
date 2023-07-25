### Table of Contents

- [📖 About the Project](#about)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [📝 API documentation](#license)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

### About  <a name="about-project"></a>

CarBooker is an app that allows users to upload cars and reserve car for a duration of time 

## Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li>HTML(erb), CSS</li>
  </ul>
</details>

<details>
  <summary>Frontend</summary>
  <ul>
    <li>React</li>
  </ul>
</details>

<details>
  <summary>Backend</summary>
  <ul>
    <li>Ruby on Rails</li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- Add appointment for a Cars
- Delete appointment for a Cars
- Create and Delete Cars


<p align="right">(<a href="#table-of-contents">back to top</a>)</p>


## Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need: 
- Any web-browser.
- Latest version of Ruby on Rails

### Setup

This API is consumed by its front-end counterpart [front-end](https://github.com/yodit93/car-reservation-front-end.git)

Clone this [repo](https://github.com/Progress2002/car-reservation-api.git) to your desired folder.

```
    git clone https://github.com/Progress2002/car-reservation-api.git
```

### Install

Run from a terminal

```
    cd car-reservation-api
    bundle install
```

### Database
**To connect the project to the database:-**
```
    rails db:create
    rails db:migrate
```

### Usage

**To run the project follow the following instruction:-**

```
    rails s -p 3001
```

### Run tests (using rspec)

To run the models test

```
  rspec ./spec/models
```

To run the API Doc and endpoint test

```
  rails rswag:specs:swaggerize
```

### Deployment

You can deploy this project using: [render](https://render.com/).

<p align="right">(<a href="#table-of-contents">back to top</a>)</p>

## API Documentation

**Once connected to the database, you can check the full API Documentation in here (please, double check the port):**
```
//127.0.0.1:3001/api-docs/index.html
```
 

## Authors <a name="authors"></a>

👤 **Progress**

- GitHub: [@Progress2002](https://github.com/Progress2002)
- Twitter: [@Progress_2002](https://twitter.com/Progress_2002)
- LinkedIn: [@Progress](https://www.linkedin.com/in/progress-ezeamaka-27b114247)

👤 **Mugisha.I**

- GitHub: [@githubhandle](https://github.com/Tafloninno)

- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mugisha-innocent-19b700238/)


👤 **Yodit Abebe**

- GitHub: [yodit93](https://github.com/yodit93)
- Twitter: [@yodtwit](https://twitter.com/yodtwit)
- LinkedIn: [Yodit Abebe](https://www.linkedin.com/in/yodit-abebe-ayalew/)

👤 **AdeJuwon DanieL Adesanya**

- GitHub: [@githubhandle](https://github.com/Ade179)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/adejuwon-adesanya-237b54239/)


## Future Features <a name="future-features"></a>

- **Add Amin role**
- **Edit moto description**


<p align="right">(<a href="#table-of-contents">back to top</a>)</p>


## Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Progress2002/car-reservation-api/issues).

<p align="right">(<a href="#table-of-contents">back to top</a>)</p>


## Support <a name="support"></a>

If you like this project give us a ⭐️.

<p align="right">(<a href="#table-of-contents">back to top</a>)</p>


## Acknowledgments <a name="acknowledgements"></a>

We would like to thank Microverse for this project and [Murat Korkmaz on Behance](https://www.behance.net/muratk) for the original design idea.

<p align="right">(<a href="#table-of-contents">back to top</a>)</p>


## License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#table-of-contents">back to top</a>)</p>