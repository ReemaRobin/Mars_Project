Feature: Skills

Seller is able to add,edit and delete skills from profile page


@tag1
Scenario Outline: 1 Add skills to Profile
	Given Navigate to Skills tab
	When I add '<Skill>' and '<SkillLevel>' to Skills tab
	Then The '<Skill>' and '<SkillLevel>' should be created successfully

Examples: 
	| Skill          | SkillLevel   |
	| Java           | Intermediate |
	| C#             | Beginner     |
	
    @tag1
Scenario Outline: 2  update skills in Profile page
	Given Navigate to the Skills tab
	When I update '<Skill1>' and '<SkillLevel1>' to Skills tab
	Then The '<Skill1>' and '<SkillLevel1>' should be updated successfully

	Examples: 
	| Skill1		   | SkillLevel1   |
	| Automation       | Intermediate  |

Scenario: 3 [delete skills in Profile page]
	Given Navigate to the Skills tab.
	When  I delete a skill in Skills tab
    Then The skill should be deleted successfully