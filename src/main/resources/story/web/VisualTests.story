Description: Task 2;

Meta:
@proxy

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
When I issue a HTTP POST request for a resource with the URL '$https://api.trello.com/1/boards/?name=test3&key=$0fbbf912ebea08173fe17eb6646ff383&token=$354a6b1b015a115b7fe66c84ccb163cd2941fd1c804e4090c4a6b766b802d382'
Then `${responseCode}` is equal to `200`