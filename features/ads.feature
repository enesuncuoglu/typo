Feature: Write Articles
As a blog administrator
In order to remove doublons from the blog
I want to be able to merge 2 differents articles in my blog
Background:
Given the blog is set up
And I have a blog publisher user "Gilles" defined
And I have a blog publisher user "Celine" defined
Given I am logged into the admin panel as "Gilles"
And I am on the new article page
And I fill in "article_title" with "Our Saturday night"
And I fill in "article__body_and_extended_editor" with "Saturday night from Gilles point of view"
And I press "Publish"
Given previous user has logged out
And I am logged into the admin panel as "Celine"
And I am on the new article page
And I fill in "article_title" with "My Saturday night"
And I fill in "article__body_and_extended_editor" with "Saturday night from Celine point of view"
And I press "Publish"

Scenario: A non-admin cannot merge articles
Given previous user has logged out
And I am logged into the admin panel as "Gilles"
And I go to edit article with title "Our Saturday night"
Then I should not see "Merge Articles"
