Feature: Video call

    User should be able to video call contact(s) using phone's internet connection

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita

    Scenario: Ahmad video call Waskita
      Given Ahmad on chatbox with Waskita
      When Ahmad click video call icon
      Then Show video call alert window
      And Show video using the Ahmad's camera

    Scenario: Waskita accept video call from Ahmad
      Given Ahmad video call on whatsapp desktop to Waskita
      When Waskita accept the video call
      Then Show Waskita's video on video call alert
      And Show call duration on ongoing call

    Scenario: Waskita ended video call from Ahmad
      Given Ahmad video call on whatsapp desktop to Waskita
      And Waskita accept the video call
      When Either Ahmad or waskita end the call
      Then Stop ongoing call duration
      And Close video call alert window

    Scenario: Waskita reject video call from Ahmad
      Given Ahmad video call on whatsapp desktop to Waskita
      When Waskita reject the video call
      Then Show label call is declined on video call alert
      And Close video call alert window