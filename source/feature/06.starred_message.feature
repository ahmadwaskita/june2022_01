Feature: Starred Message

    User should be able to bookmark specific messages so user can quickly refer back to them later.

    Background: User
      Given sender with name Ahmad
      And recipient with name Waskita
      And Ahmad had Waskita's message "Starry sky" on chatbox

    Scenario: Ahmad starred Waskita's message
      Given Ahmad on chatbox with Waskita
      And Ahmad hover Waskita's message "Starry sky"
      And Show down arrow on right side of the text box
      When Ahmad click down arrow
      And Show dropdown menu
      And Ahmad click Star message
      Then show grey star on the text box next to timestamp 

    Scenario: Ahmad view Waskita's starred message
      Given Ahmad on Whatsapp desktop
      And Ahmad click horizontal ellipsis menu (meatballs menu)
      And show dropdown menu 
      When Ahmad click Starred messages menu
      And Show all starred messages 
      And Ahmad click on Waskita's starred message "Starry sky"
      Then Open chatbox with Waskita
      And Show starred message "Starry sky" on the chatbox


