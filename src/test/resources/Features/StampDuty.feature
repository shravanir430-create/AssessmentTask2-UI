Feature: Motor Vehicle Stamp Duty Calculation

  Scenario: Calculate stamp duty for a passenger vehicle
    Given I am on the Service NSW "Check motor vehicle stamp duty" page 
    When I click the "Check online" button 
    And I am redirected to the Revenue NSW calculator page 
    And I select "Yes" for "Is this registration for a passenger vehicle?" 
    And I enter "45000" into the "Purchase price or value" field 
    And I click the "Calculate" button 
    Then a calculation popup window should appear 
    And the "Duty payable" amount should display "$1,350.00" 
    And I click "Close" to exit the popup