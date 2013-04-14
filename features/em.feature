Feature: Merging articles
  As a blog administrator
  I want to be able to merge articles

  Background:
   Given the blog is set up
  
  Scenario: A non-admin cannot merge articles
   And I am logged into the admin panel as blog publisher
   Given I am on the new article page
   Then I should not see "Merge Articles"
	
  Scenario: The merged article should contain the text of both previous articles.
	Given I am logged into the admin panel
	And I am on "the edit page of article 3"
	Then I should see "Merge Articles"
	Then I should see "Article ID"
	And I fill in "merge_with" with "1"
	And I press "Merge"
	Then I should be on the admin content page
	Then I should see "Articles were successfully merged."
  	And I am on "the edit page of article 3"
	#Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!\nWelcome to Typo. This is your first article. Edit or delete it, then start blogging!"
  Scenario: When articles are merged, the merged article should have one author (either one of the authors of the two original articles).
	Given I am logged into the admin panel
	And I am on "the edit page of article 3"
	Then I should see "Merge Articles"
	Then I should see "Article ID"
	And I fill in "merge_with" with "1"
	And I press "Merge"
	Then I should be on the admin content page
	Then I should see "Articles were successfully merged."
  	And I am on "the edit page of article 3"
	#Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!\n"
