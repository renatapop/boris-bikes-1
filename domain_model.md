#### Write down all the nouns in the User Stories
As a **person**,
So that I can use a **bike**,
I'd like a **docking station** to release a **bike**.

As a **person**,
So that I can use a good **bike**,
I'd like to see if a **bike** is working.
#### Write down all the verbs in the User Stories
As a person,
So that I can **use** a bike,
I'd like a docking station to **release** a bike.

As a person,
So that I can **use** a good bike,
I'd like to **see if a bike is working**.
#### Organise the nouns and verbs into Objects and Messages within the table
Objects  | Messages
------------- | -------------
Person  |
Bike  | working state (true/false)
Docking Station  | release_bike

#### Draw a diagram that shows how your Objects will use Messages to communicate with one another

Bike <--- working? ---> true/false
Docking Station <--- release a bike ---> bike
