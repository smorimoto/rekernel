open Mirage;

let packages = [package("duration")];

let main = foreign("Unikernel.Main", time @-> job, ~packages);

let () = register("rekernel", [main $ default_time]);
