Feature: Notification

    User should get notification based on their settings

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita
      And group chat with name "Gherkin" with Ahmad and Waskita as participant
      And notification is enabled

    Scenario: Chat notification alert
      Given Ahmad send text message to Waskita
      And Waskita receive the text message from Ahmad
      Then Show message notification alert
    
    Scenario: Group chat notification alert
      Given Ahmad send text message on group chat "Gherkin"
      And Waskita receive the text message from group chat "Gherkin"
      Then Show message notification alert