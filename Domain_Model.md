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

