let Types = ../types.dhall

in  { id = "permanent/jenkins-observer-1"
    , kind = Types.ScheduleKind.Permanent
    , agent_id = Some "jenkins-observer-1"
    , agent_type = None Text
    , schedule = Types.TimeSpec.Periodic { interval = 5, unit = < Minutes | Hours | Days >.Minutes }
    , config = { jenkinsUrl = "https://jenkins.example.com"
               , jobPattern = Some ".*"
               , outputTopic = "observations.jenkins"
               , credentials = Types.Credentials.reference "jenkins-cred"
               }
    , metadata = { description = Some "Observes all Jenkins jobs every 5 minutes"
                 , owner = Some "team-a"
                 }
    , version = 10
    }
