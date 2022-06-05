Feature: Voice call

    User should be able to voice call contact(s) using phone's internet connection

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita

    Scenario: Ahmad voice call Waskita
      Given Ahmad on chatbox with Waskita
      When Ahmad click voice call icon
      Then Show voice call alert window

    Scenario: Waskita accept voice call from Ahmad
      Given Ahmad voice call on whatsapp desktop to Waskita
      When Waskita accept the voice call
      Then Show sound animation on voice call alert
      And Show call duration on ongoing call

    Scenario: Waskita ended voice call from Ahmad
      Given Ahmad voice call on whatsapp desktop to Waskita
      And Waskita accept the voice call
      When Either Ahmad or waskita end the call
      Then Stop ongoing call duration
      And Show label call is ended
      And Close voice call alert window

    Scenario: Waskita reject voice call from Ahmad
      Given Ahmad voice call on whatsapp desktop to Waskita
      When Waskita reject the voice call
      Then Show label call is declined on voice call alert
      And Close voice call alert window

