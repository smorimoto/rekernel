/*
 Copyright 2020 BSKY

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

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
