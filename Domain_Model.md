## User Stories

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working



## Tables

| Objects  | Messages |
| ------------- |:-------------:|
| Person        |     |
| Bike          | check_status  |
| Docking Station| release    |


Nouns:
- Person
- Bike
- Docking station

Verbs:
- Use
- Check status
- Release

## Diagram Domain Model


Person ---------- Bike[check_status]
   |                |
   |                |
   |                |
DockingStation [release]


## Error Message Challenge for Boris_Bike_challenge

 Write down the type of error: Name Error
 Write down the file path where the error happened: /Users/Rorie/.rvm/rubies/ruby-3.0.0/bin/irb
 Write down the line number of the error: irb 23
 Use the Ruby Documentation to find out what the error means: DockingStation isn't defined. 
 Suggest one way of solving the error - Define DockingStation as a variable, method or class.

