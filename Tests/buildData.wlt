<|
  "$PlanckTimeGitSHA" -> <|
    "tests" -> {
      VerificationTest[
        StringLength @ $PlanckTimeGitSHA,
        40
      ],

      VerificationTest[
        StringMatchQ[$PlanckTimeGitSHA, HexadecimalCharacter...]
      ]
    }
  |>,

  "$PlanckTimeBuildTime" -> <|
    "tests" -> {
      VerificationTest[
        DateObjectQ @ $PlanckTimeBuildTime
      ],

      VerificationTest[
        $PlanckTimeBuildTime["TimeZone"],
        "UTC"
      ],

      (* could not be built in the future *)
      VerificationTest[
        $PlanckTimeBuildTime < Now
      ],

      (* could not be built before $PlanckTimeBuildTime was implemented *)
      VerificationTest[
        DateObject[{2020, 5, 12, 0, 0, 0}, TimeZone -> "UTC"] < $PlanckTimeBuildTime
      ]
    }
  |>
|>
