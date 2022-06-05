Feature: Status update

    User should be able to view and message contact(s) status update from whatsapp desktop

    Background: User
      Given sender with name Ahmad
      And contact with name Waskita

    Scenario: Ahmad view Waskita's status update
      Given Ahmad on whatsapp desktop
      And Ahmad click on button status icon
      And Show list of status update from Ahmad's contact list
      When Ahmad click on Waskita's status update
      Then Show Waskita's status update window

    Scenario: Ahmad send message to Waskita's status update
      Given Ahmad on Waskita's status update window
      And Ahmad click on message box
      And pause waskita's status update
      When Ahmad write message on Waskita's status update
      And Ahmad click button sent or press Enter
      Then Send the message on Waskita's chat box
      And attach Waskita's status update on the message box