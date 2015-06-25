(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla <robinlambertz+dev@gmail.c>       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 12:40:02 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/25 14:02:18 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor name age sidekick =
    object
        initializer print_endline "I'm the Doctor"
        val _name:string = name
        val _age:int = age
        val _sidekick:People.people = sidekick
        val _hp:int = 100
        method to_string = "Doctor " ^ _name ^ " aged " ^ (string_of_int _age) ^ " with sidekick " ^ _sidekick#to_string ^ " and hp " ^ (string_of_int _hp)
        method talk = print_endline "Hi! I'm the Doctor!"
        method travel_in_time start arrival = (print_endline
"          _
         /-\\
    _____|#|_____
   |_____________|
  |_______________|
|||_POLICE_##_BOX_|||
 | |¯|¯|¯|||¯|¯|¯| |
 | |-|-|-|||-|-|-| |
 | |_|_|_|||_|_|_| |
 | ||~~~| | |¯¯¯|| |
 | ||~~~|!|!| O || |
 | ||~~~| |.|___|| |
 | ||¯¯¯| | |¯¯¯|| |
 | ||   | | |   || |
 | ||___| | |___|| |
 | ||¯¯¯| | |¯¯¯|| |
 | ||   | | |   || |
 | ||___| | |___|| |
|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|
 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"; new doctor name (age + (arrival - start))) sidekick
        method use_sonic_screwdriver = print_endline "Whiiiwhiiiwhiii Whiiiwhiiiwhiii Whiiiwhiiiwhii"
        method private regenerate = new doctor name age sidekick
    end
