## About The Project

There are several services and some platforms providing URL shortener. Sometimes they call it link shortener, URL shrinker, Link compressor, vanity URL creator, but they all work the same:

- You enter a URL and the output is a short URL.
- You can use that short URL for example for social media sharing.
- When users click on the short link they are getting redirected to your origin URL.

Some services provide a Custom URL shortener, so that you can register your domain and use that domain to shrink your URLs. Using your domain can create more trust for the ones who see the link.

## Prerequisites

- Rails - 6.1.0
- Ruby - 2.6.5
- PostgreSQL versions 9.3 and above.

## Getting Started

- Clone this application repository:

      git clone git@github.com:abruzy/Chunin-Exam.git

* Change into the repository directory on your local machine:

      cd your-repository-directory

* Install the application gem dependencies:

      bundle install

* Install the application `package.json` dependencies:

      yarn install

* Create a `.env` file for the application environment variables in the application root directory:

      sudo nano .env

* Set up the `.env` file with the following environment variables. Also, please replace the `DATABASE_USER` and `DATABASE_PASSWORD` environment values with your own values:

      DATABASE_NAME=urlshortener_development
      DATABASE_USER=your-database-user
      DATABASE_PASSWORD=your-database-password
      DATABASE_HOST=127.0.0.1
      DATABASE_PORT=5432

* Create the database for your development environment:

      rails db:create

* Create all the necessary database tables:

      rails db:migrate

* Install the [foreman gem](https://rubygems.org/gems/foreman) on your local machine for assets-precompilation:

      gem install foreman

* Starting the rails server using `rails server` isn't ideal since we also want to run the assets-precompilation at the same time. We have a `Procfile` and `Procfile.dev` files set up for this. So you can start the **rails server** and the run **assets-precompilation** at the same time using the command below:

      PORT=3002 foreman start -f Procfile.dev

## Tests

- Run `rspec` or `bundle exec rspec` to run all specs

## Contact

- Abubarkar Diallo: [Github](https://github.com/abruzy)

Project Link: [https://github.com/abruzy/Chunin-Exam](https://github.com/abruzy/Chunin-Exam)
