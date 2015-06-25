(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla <robinlambertz+dev@gmail.c>       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 09:01:09 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/25 09:19:23 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people name =
    object
        initializer print_endline ("I'm a people, and my name is " ^ name)
        val _name:string = name
        val _hp:int = 100
        method to_string = _name ^ " has " ^ (string_of_int _hp) ^ " HP."
        method talk = print_endline ("I'm " ^ _name ^ "! Do you know the Doctor?")
        method die = print_endline "Aaaargh!"
    end
