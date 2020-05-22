(* The backtick magic is necessary to prevent it being interpreted as a beginning of a template argument. *)
Package["PlanckTime<*"`"*>"]

PackageExport["$PlanckTimeGitSHA"]
PackageExport["$PlanckTimeBuildTime"]

$PlanckTimeGitSHA::usage = usageString[
  "$PlanckTimeGitSHA gives the Git SHA of the repository from which PlanckTime was built."];

$PlanckTimeBuildTime::usage = usageString[
  "$PlanckTimeBuildTime gives the date object at which PlanckTime was built."];

(* This is a template file. Data is inserted at build time. *)

$PlanckTimeGitSHA = <*ToString[gitSHA[], InputForm]*>; (* gitSHA[] is defined in buildInit.wl *)
$PlanckTimeBuildTime = <*ToString[DateObject[TimeZone -> "UTC"], InputForm]*>;
