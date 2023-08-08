# Ruby on Rails Menu Book Uploader Application

This Rails application allows users to upload menu items in CSV format, which are then processed and stored in a database. The background processing is handled by Sidekiq to ensure smooth and efficient handling of large CSV files.

## Getting started

Prerequisites
Before you begin, ensure you have the following installed on your system:
   
    Ruby version :- 3.2.2
    Rails version :- 7.0.6

Clone this repository to your local machine:

    ```bash
    > git clone https://github.com/SammySandeep/Menu-Book-Uploader.git
    ```

Navigate to the project directory

    ```bash
    > cd menu-book-uploader 
    ```

Install the required gems

    ```bash
    > bundle install 
    ```
    
Setup the database 

    ```bash
    > rails db:create
    > rails db:migrate
    ```

Start the Rails server:

    ```bash
    > rails server
    ```

Start the Sidekiq background processing worker by running:

    ```bash
    > bundle exec sidekiq
    ```

Open your web browser and go to http://localhost:3000/ to access the CSV upload form.

Upload CSV file containing menu items.

After uploading, the CSV processing will be handled in the background by Sidekiq, allowing you to continue using the application without interruption.    