Feature: User Products
  To create a rockin website with sweet images
  As a developer that wants to get a user's product list
  I'd need to be able to get a list of those products

Scenario: Resource Owner Credentials
	Given I have an apikey
	And an apisecret
	And a username
	And a password
	And I want a user's products
	When I retrieve products
	Then I get a response back that has my user's product list

Scenario: Client Credentials
	Given I have an apikey
	And an apisecret
	And I want a user's products
	When I retrieve products
	Then I get a response back that has my user's product list

Scenario: Specify fields in product request
	Given I have an apikey
	And an apisecret
	And a username
	And a password
	And I want a user's products
	And I specify product field download_requirements
	When I retrieve products
	Then I get a response back that has my user's product list
	And the response contains download_requirements
