Feature: Photos & Videos

    User should be able to send photo(s) and video(s)

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita

    Scenario: Ahmad sent photo to Waskita
      Given Ahmad on chatbox with Waskita
      And Ahmad click button Attach
      And show dropdown button
      And Ahmad click button Photos & Videos
      And show files dialog
      And Ahmad select file photo(s)
      When Ahmad click button Open
      And Show the photos on preview mode
      And Ahmad write the text message
      And Ahmad click button send or press Enter
      Then sent the photo(s) with text message
      And show the photo(s) with text message on chatbox

    Scenario: Ahmad sent video to Waskita
      Given Ahmad on chatbox with Waskita
      And Ahmad click button Attach
      And show dropdown button
      And Ahmad click button Photos & Videos
      And show files dialog
      And Ahmad select file video(s)
      When Ahmad click button Open
      And Show the video on preview mode
      And Ahmad write the text message
      And Ahmad click button send or press Enter
      Then sent the video(s) with text message
      And show the video(s) with text message on chatbox