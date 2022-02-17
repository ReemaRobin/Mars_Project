Feature: Languge

Seller is able to add,update and delete languages to profile page

@mytag
Scenario Outline: 1 Add languages to Profile
	Given Navigate to Language tab
	When I add '<Language>' and '<LanguageLevel>' to Languages tab
	Then The '<Language>' and '<LanguageLevel>' should be created successfully.

Examples: 
	| Language   | LanguageLevel    |
	| English    | Fluent           |
	| Malayalam  | Native/Bilingual |

@mytag    
Scenario Outline: 2  update language in Language tab
	Given Navigate to the Languages tab
	When I update '<Language1>' and '<LanguageLevel1>' in Languages tab
	Then The '<Language1>' and '<LanguageLevel1>' should be updated successfully.

Examples: 
	| Language1 | LanguageLevel1   |
	| Hindi     | Basic |
@mytag
Scenario: 3 delete language in Language tab
	Given Navigate to the Languages tab
	When  I delete a Language in Languages tab
    Then The language should be deleted successfully