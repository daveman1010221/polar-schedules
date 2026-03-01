{ TimeSpec = < Periodic : { interval : Natural, unit : < Minutes | Hours | Days > }
             | Exact : { timestamp : Text }
             | Daily : { hour : Natural, minute : Natural, timezone : Optional Text }
             | Weekly : { day : < Mon | Tue | Wed | Thu | Fri | Sat | Sun >,
                          hour : Natural, minute : Natural, timezone : Optional Text }
             | Monthly : { day : Natural, hour : Natural, minute : Natural,
                           timezone : Optional Text }
             >
, ScheduleKind = < Permanent | Adhoc | Ephemeral >
, ScheduleMetadata = { description : Optional Text, owner : Optional Text }
, Credentials = < inline : Text | reference : Text >
}
