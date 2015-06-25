(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla <robinlambertz+dev@gmail.c>       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 09:19:27 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/25 15:39:37 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    Random.self_init ();
    let p = new People.people "Roblabla" in
    print_endline p#to_string;
    p#talk;
    p#die;
    let d = new Doctor.doctor "test" 15 p in
    print_endline d#to_string;
    d#talk;
    let newd = d#travel_in_time 17 32 in
    print_endline newd#to_string;
    newd#talk;
    newd#use_sonic_screwdriver;
    let dalek = new Dalek.dalek in
    print_endline (dalek#to_string);
    dalek#talk;
    dalek#exterminate p;
    dalek#die
