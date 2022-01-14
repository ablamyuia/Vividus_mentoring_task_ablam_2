Description: Task 2;

Scenario: Sign up scenario with example tables
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign up'])`
When I enter `<Email>` in field located `By.xpath(//*[@id="ap_email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait unitl an element with the xpath '//*[@id="displayName"]' appears
When I click on element located `By.xpath(//*[@id="displayName"])`
When I enter `<FullName>` in field located `By.xpath(//*[@id="displayName"])`
When I click on element located `By.xpath(//button[@type='submit'])`
When I wait unitl an element with the xpath '//button[text()="Continue"]' appears
When I click on element located `By.xpath(//button[text()="Continue"])`
When I wait unitl an element with the xpath '//button[text()="Take me to Trello"]' appears
When I click on element located `By.xpath(//button[text()="Take me to Trello"])`
Then the page title is 'Trello'
Examples:
|Email                               |FullName                    |
|julia_gavron@mail.ru                |Test                        |
|#{generate(Internet.emailAddress)}  |#{generate(Name.fullName)}  |

Scenario: Create a board
Given I am on a page with the URL 'https://trello.com/userworkspace17718680/home'
