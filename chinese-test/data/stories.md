## story_greet <!--- The name of the story. It is not mandatory, but useful for debugging. --> 
* greet <!--- User input expressed as intent. In this case it represents users message 'Hello'. --> 
 - utter_greet <!--- The response of the chatbot expressed as an action. In this case it represents chatbot's response 'Hello, how can I help?' --> 
 
## story_goodbye
* goodbye
 - utter_goodbye

## story_thanks
* thanks
 - utter_thanks
 
## story_medical_01
* medical
 - utter_ medical 
 
## story_joke_01
* joke
 - action_joke
 
## story_restaurant_search_01
* restaurant_search
 - action_restaurant_search  
 
## story_joke_02
* greet
 - utter_greet
* joke
 - action_joke
* thanks
 - utter_thanks
* goodbye
 - utter_goodbye
 
## story_medical_02
* greet
 - utter_greet
* medical
 - utter_ medical
* thanks
 - utter_thanks
* goodbye
 - utter_goodbye
 
## story_restaurant_search_02
* greet
 - utter_greet
* restaurant_search
 - action_restaurant_search 
* thanks
 - utter_thanks
* goodbye
 - utter_goodbye