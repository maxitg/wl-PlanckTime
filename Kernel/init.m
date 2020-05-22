Unprotect["PlanckTime`*"];

ClearAll @@ (# <> "*" & /@ Contexts["PlanckTime`*"]);

Get["PlanckTime`Kernel`usageString`"];

SetAttributes[#, {Protected, ReadProtected}] & /@ Evaluate @ Names @ "PlanckTime`*";
