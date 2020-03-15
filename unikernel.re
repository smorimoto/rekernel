open Lwt.Infix;

module Main = (Time: Mirage_time.S) => {
  let start = () => {
    let rec loop =
      fun
      | 0 => Lwt.return_unit
      | n => {
          Logs.info(f => f("Hello Unikernel"));
          Time.sleep_ns(Duration.of_sec(1)) >>= (() => loop(n - 1));
        };
    loop(5);
  };
};
