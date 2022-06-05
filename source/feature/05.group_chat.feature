Feature: Group Chat

    User should be able to write text message, send and receive text message,
    and get the text message status on group chat

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita
      And group chat with name Ahmad Waskita

    Scenario: Ahmad send text message to group Ahmad Waskita
      Given Ahmad on group chat Ahmad Waskita
      And Ahmad write text message "Group chat"
      And Display "Group chat" on text message field
      When Ahmad click send message button or press Enter
      Then Show the text message "Group chat" on chat box
      And Show timestamp for sent text message
      And Show text message status with single grey checkmark
      And Show sender name or phone numbers for text message box on other group chat participant whatsapp

    Scenario: Group chat Ahmad Waskita receive Ahmad's message
      Given Waskita on group chat Ahmad Waskita
      And Ahmad's message was sent to group chat Ahmad Waskita
      Then Show text message status with single grey checkmark on Ahmad's whatsapp
      And If everyone on the group chat receive Ahmad's text message
      Then Show text message status with two grey checkmark on Ahmad's whatsapp

    Scenario: Everyone on group chat Ahmad Waskita read Ahmad's message
      Given Waskita on group chat Ahmad Waskita
      And Ahmad's message was sent to group chat Ahmad Waskita
      And Everone on group chat Ahmad Waskita read Ahmad's message
      Then Show text message status with two blue checkmark on Ahmad's whatsapp

    Scenario Outline: Show timestamp for text message
      Given the text message sent at <sent day> on <sent time>
      And the text message shown on the chatbox
      When user open the message Today
      Then show <day> on the beginning of chatbox
      And show <sent time> on the text message

      Examples:
        | sent day              | sent time | day                                           |
        | Today                 | 9:00 AM   | Today                                         | 
        | Yesterday             | 8:00 AM   | Yesterday                                     |
        | More than 2 days ago  | 7:00 AM   | Name of the day when the text message is sent |