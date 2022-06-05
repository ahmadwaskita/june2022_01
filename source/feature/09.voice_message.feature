Feature: Voice message

    User should be able to send voice messge on chatbox

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita

    Scenario: Ahmad send voice message to Waskita
      Given Ahmad on chatbox with Waskita
      And Ahmad click voice message icon
      And Show voice recorder menu
      And Show recording duration
      And Ahmad record the voice message
      When Ahmad click button send or press Enter
      Then Send the voice message to Waskita
      And Show voice message box on chatbox
      And Show the voice message duration
      And Show the voice message sent time 