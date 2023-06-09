# Roadmap for GMC

| Task ID | Task | Estimated Effort | Pre-reqs, dependencies |
| --- | --- | --- | --- |
| A | User Interface | 1 week | None |
| B | Reading sensor inputs on arduino | 1 week | None |
| C | Integration of Arduino into Flutter <ol> <li> ESP32 </li> <li> Bluetooth communication </li></ol>| 2 weeks | A , B |
| D | Database planning | 1 day | None |
| E | Integration of Database <ol> <li> Accessing </li> <li> Security </li> </ol> | 2 weeks | B, C, D |
| F | Authentication for staff and user <li> different interface for diff user </li> | 1.5 weeks | None |

## App workflow (description and diagram)

### simple features to work on (Purely UI)
* Simple "Welcome \<Name\>" AppBar
* Main menu page with a Expandable Tile that shows exercises for today and tomorrow
* Start Button shifts to the Rehab Exercise Page
* A bottom Navigation bar
* A profile avatar which brings the user to the Profile page

#### Workflow diagram
<img src = "Plans/RehabIt_app_ flow.jpeg">

### intended features
1. Exercise's success/failure is determined via a database
1. A login system differentiated by staff or patient 
	1. OR simply use a different website that can access a shared database.

