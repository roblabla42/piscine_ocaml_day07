(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   galifrey.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla <robinlambertz+dev@gmail.c>       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 16:09:45 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/25 16:14:06 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class galifrey =
    object (self)
        val daleks:Dalek.dalek Army.army = new Army.army
        val doctors:Doctor.doctor Army.army = new Army.army
        val peoples:People.people Army.army = new Army.army
    end
