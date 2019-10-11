# Bounty Hunter
Flatiron School React & Redux Project - Bounty Hunter is a React / Redux application (with a Rails API backend) which integrates with StackExchange's /questions/featured public API to retrieve active bounties from the Stack Overflow site. The application allows users to keep track of active bounties that they are looking to answer. 

## Live Usage
This application is hosted live on Heroku at the following url: https://bounty-hunter-client.herokuapp.com/

## Local Installation

For local usage of the application, please follow the belong instructions. 

Please note that you must also follow the local installion instructions for the front-end application at: https://github.com/Bav75/Bounty-Hunter-Client

After cloning the repo, install the dependencies by executing the below command in your terminal: 

$ bundle install

Launch the application using the below command in your terminal:

$ rails s -p OPEN_PORT_NUMBER  

## Usage 

Upon launching the application, the user can navigate to localhost:PortNumber/ to arrive at the application login page prompting the user sign-up or log-in. 

Following a successful user sign-up or log-in, the user will arrive at the application homepage.

Upon rendering the homepage's components, a fetch request is done again Stack Overflow's API to pull in all currently active bounties. From here, the user has a number of options available:
- Navigate the tabs of active bounties
    - Clicking on a bounty will open up a new tab and navigate to that particular bounty's page on Stack Overflow where the user can get additional information on the question being asked. 
- Mark a bounty for tracking
    - Click on the Mark Bounty button will mark a particular bounty for tracking. At the bottom of the page you'll be able to see all bounties currently tracked. 
- Getting details on tracked bounties
    - Users can click on the names of bounties they are currently tracking for additional details. The bounties are rendered as accordion components so clicking on the name will reveal a card component with additional details such as the bounty reward amount and the closing date for the bounty. There is also an option to navigate to the bounty page and to stop tracking the bounty. 
- log out  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bav75/Bounty-Hunter-API. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The system is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the sinatra-saver project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/bav75/Bounty-Hunter-API/blob/master/CODE_OF_CONDUCT.md).
