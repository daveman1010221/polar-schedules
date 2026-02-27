let TimeSpec
    : Type
    = < Periodic : { interval : Natural, unit : < minutes | hours | days > }
      | Exact : { timestamp : Text }
      | Daily : { hour : Natural, minute : Natural, timezone : Optional Text }
      | Weekly : { day : < Mon | Tue | Wed | Thu | Fri | Sat | Sun >,
                   hour : Natural, minute : Natural, timezone : Optional Text }
      | Monthly : { day : Natural, hour : Natural, minute : Natural,
                    timezone : Optional Text }
      >

let ScheduleMetadata = { description : Optional Text, owner : Optional Text }

in  { agent_id = "test-permanent"
    , schedule = TimeSpec.Periodic { interval = 5, unit = < minutes | hours | days >.minutes }
    , config = { dummy = "value" }
    , metadata = Some { description = Some "Test schedule", owner = Some "test" }
    , version = 1
    }
