# HR Employee Admin System

HR Admin System manages human resources and their processes.

## Setup

## Dependencies

Required ruby, rails, node, npm, yarn and sqlite3 to be installed. 
Versions used: ruby 3.0.3, Rails 7.0.1, node v14.15.5, npm 6.14.1, yarn 1.22.4 and sqlite3 3.37.2.

### Installation

Run the following command in the root directory to install all required gems in gemfile<br>
`bundle install`

## Getting Started

**Homepage**: http://127.0.0.1:3000/<br>

Run the following command to initialize local server<br>
`rails server`

### Mailhog Setting

To test mails install mailhog and check the right address and port used are added in developement environment settings

Follow [Installation guide](https://github.com/mailhog/MailHog)

## Demo

https://user-images.githubusercontent.com/63899074/159155060-85fbd32b-ae55-4f69-8a09-a939544560ca.mp4

## Testing

rspec gem used for testing, run command:
```
rspec
```

for unit tests on employee without rspec, run commands:
```
rails test test/controllers/employees_controller_test
rails test test/models/employee_test
```
