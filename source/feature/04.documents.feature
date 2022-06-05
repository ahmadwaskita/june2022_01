Feature: Documents

    User should be able to send file document(s)

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita

    Scenario: Ahmad sent photo to Waskita
      Given Ahmad on chatbox with Waskita
      And Ahmad click button Attach
      And show dropdown button
      And Ahmad click button Document
      And show files dialog
      And Ahmad select file file(s)
      When Ahmad click button Open
      And Show the file(s) on preview mode
      And Ahmad write the text message
      And Ahmad click button send or press Enter
      Then sent the file(s) with text message
      And show the file(s) with text message on chatbox