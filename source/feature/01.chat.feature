Feature: Chat

    User should be able to write text message, send and receive text message,
    and get the text message status.

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita

    Scenario: Ahmad send text message to Waskita
      Given Ahmad on new chat contact list
      And Ahmad click on contact recipient Waskita
      And Ahmad write text message "Gherkin syntax"
      And Display "Gherkin syntax" on text message field
      When Ahmad click send message button or press Enter
      Then Show the text message "Gherkin syntax" on chat box
      And Show timestamp for sent text message
      And Show text message status with single grey checkmark

    Scenario: Waskita receive Ahmad's message
      Given Waskita using whatsapp on phone or any linked devices
      And Ahmad's message was sent to Waskita whatsapp
      Then Show text message status with two grey checkmark on Ahmad's whatsapp

    Scenario: Waskita read Ahmad's message
      Given Waskita using whatsapp on phone or any linked devices
      And Ahmad's message was sent to Waskita whatsapp
      And Waskita read Ahmad's message
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



