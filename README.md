# Code Challenge

Welcome to the Main Street code challenge. This repository includes a very basic Rails app used for assessment and testing purposes only.

## The Main Street Pitch (Context)

[Our website](https://www.getmainstreet.com/) provides a reasonable overview of the Main Street Pitch.

Main Street is a platform that helps entrepreneurs start and run their companies in the service industry. For now it's Painting, but in the future we hope to address many other services such as Lawncare, Pest Control, Plumbing, Electrical etc.

This codebase provides a small sample of the kinds of technology and problems we are solving.

## Getting Started

Dependencies:

- Rails 6 (Framework)
- Postgres (For Database)
- Node (For Webpacker / Rails Dependencies)

This repository has a `bin/setup` script that should get things up and running for the majority of users if you have the above dependencies installed.

From the root of the project directory - simply run:

`bin/setup`

Once that runs you should be able to run the following 2 commands in separate terminal tabs / windows:

1.  `rails s` - this will start the rails server locally.
2.  `bin/webpack-dev-server` - this will start to watch and recompile the JavaScripts found in `app/javascript`

## Challenges

### **Challenge Steps**

Please refer to our [Engineering Wiki](https://www.notion.so/getmainstreet/Engineering-Wiki-92df623daaeb4022892d331feb20aadf) for our best practices and recommended approaches.

You can also feel free to look at [past PR's](https://github.com/main-street/code-challenge/pulls) for how other developers have solved some of these challenges. Although keep in mind, you'll need to be able to explain your submission and talk through your choices.

### **☐ Add a way to delete companies**

For companies, there isn't currently a way to destroy them. There should be a confirmation of the action. Some kind of "Are you sure?" message.

_Assessing: Basic Rails Knowledge and established best practices._

### **☐ Add Custom Validation to company email**

(When Present) All email addresses for new companies should only be a `@getmainstreet.com` domain. A custom error should render when attempting to create or update a company when the email does not match this domain. This should only be when email is present. Blank emails can be ignored. Should validate on both front end and back end.

_Assessing: Basic Rails Knowledge and established best practices._

### **☐ Add City State To Companies from Zip Code**

For each company "Show" page there is a placeholder for the **City, State** for that company. You'll need to leverage the zip code to have that value render the actual **City, State**. For example: **Nashville, TN** You might want to take a look at the [ZipCodes gem](https://github.com/monterail/zip-codes) that is already in this project.

Every time the company's zip code is updated this city and state should be updated.

The City and State should be added as attributes to the Company object.

_Assessing: Back end skills. Ability to implement more back-end heavy, basic business logic in the context of rails while leveraging established Gems / Libraries._

### **☐ Include a way to set a brand color**

Companies should be able to pick or enter a color and have that color render on the company show page. Ideally, this interface should feel responsive and interactive in some way.

_Assessing: Front end skills. Basic UX and UI Instinct. Ability to leverage CSS / HTML / JavaScript to build an engaging and reactive UI._

### **☐ Include test coverage for all your changes**

For all functionality extend or add tests from existing tests.

_Assessing: Ability to produce clean tests and documentation for code._

### **☐ Suggest a new task for this challenge**

I would suggest the following:

- Authentication and Authorization

- Pagination

- N+1 queries

_Assessing: Engineering instinct, writing, ability to document up a deliverable concisely._

## Bonus Points

- Clean code that follows strong Rails Conventions
- Originality and creativity in given solutions
- Improving the overall UX of this challenge
- Deploying your solutions to a server

## How do I submit a Pull Request?

Since this a public repository, submitting a Pull Request will not be the same as when you're a collaborator. The instructions below will help you push the changes to the code challenge repo.

- Fork the project to your personal Github.
- Clone the challenge to your local from your new forked repo in your personal git account.

  ```
    git clone <forked account — main street coding challenge https url>

    example: git clone https://github.com/Sushanthbc/code-challenge.git
  ```

- Any changes made in the original repository should not be synced to your forked repository. The following commands enable us to track the original repository as a remote of the fork.

  ```
    git remote add --track master upstream https://github.com/main-street/code-challenge.git
    git fetch upstream
  ```

- Create a new branch for your changes.

  ```
   git checkout -b <your-branch-name> upstream/master
  ```

- Make your changes, stage, and commit files necessary.
- Push the changes to remote.

  ```
   git push -u origin <your-branch-name> origin
  ```

- You can now go to Github, and submit a PR with necessary details.
- Happy Coding! Please don't hesitate to shoot an email to the recruitment team if you have any issues while pushing the code.

## Tips

- Submit code as you would in a professional environment.
- Keep your diffs clean. If your code editor autoformats on save, consider turning this off for this repo.
- If you choose to set up `RSpec` (or add other external libs), consider isolating those changes in a separate commit.
