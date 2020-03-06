
<br />
<p align="center">
  <a href="https://github.com/Usagib/rails_members_only">
    <img src="https://pa1.narvii.com/6698/7a9dc78a2ab261a4e18c5d10c9e62debe7892b2a_00.gif" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">Members only project on rails</h3>

  <p align="center">
    A post board aviable for everyone to see but only members to create post and see who wrote them
    <br />
    <a href="https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication"><strong>Project Specs »</strong></a>
    <br />
    <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About The Project

A post board made with ruby on rails

### How to run
  - The web interface won't allow new users to sign-up
  - After cloning the repository set up the environment by `bundle install --without production`
  - Migrate the database with the `rails db:migrate` command in the terminal
  - Run the `rails console` command in the terminal
  - Create new users using the command: 
  
  > `User.create(username: "username", email: "email", password: "password", password_confirmation: "password" `
 
Features:

* Users can log into the app
* Layout advanced features displayed with user loggin
* Only logged in users can see who wrote the posts
* Friendly bootstrap frontend


### Built With

Project built in Ruby on Rails
* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](https://rubyonrails.org/)


## Contact

Project specfications link: [https://github.com/Usagib/rails_members_only](https://github.com/Usagib/rails_members_only)
Eduardo Bonilla [https://github.com/UsagiB](https://github.com/UsagiB)
Leonardo Mezu [https://github.com/leonmezu1](https://github.com/leonmezu1)
