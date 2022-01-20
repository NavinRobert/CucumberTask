Feature: Verifying the Adactin Hotel for some function

  Scenario Outline: Verifying Adaction hotel login and its credentials
    Given I am in Adactin hotel page
    When I should login with "<username>" and "<password>"
    And I should search hotels with "<Location>", "<Hotels >","<RoomType 	>","<NumberofRooms>","<CheckInDate>","<CheckOutDate>","<AdultsperRoom>","<ChildrenperRoom>"
    And I should select hotel
    And I should Book a hotel with "<FirstName>","<LastName>","<BillingAddress>", "<CreditCardNo>","<CreditCardType>", "<ExpiryDate>","<ExpiryYear>","<CVVNumber>"
    And I should get the order ID
    Then I should verify the page loaded successfully

    Examples: 
      | username    | password | Location  | Hotels       | RoomType | NumberofRooms | CheckInDate | CheckOutDate | AdultsperRoom | ChildrenperRoom | FirstName | LastName | BillingAddress       | CreditCardNo     | CreditCardType | ExpiryDate | ExpiryYear | CVVNumber |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
      | NavinRobert | 53W4OS   | Melbourne | Hotel Hervey | Standard | 2 - Two       | 19/01/2022  | 22/01/2022   | 3 - Three     | 2 - Two         | Navin     | Robert   | No6.MHBNagar,Chennai | 4526985631475963 | VISA           | August     |       2022 |       562 |
