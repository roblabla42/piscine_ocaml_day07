(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla <robinlambertz+dev@gmail.c>       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 15:40:49 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/25 16:08:09 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class ['a] army =
    object
        val lst : 'a list = []
        method add x = {< lst = x :: lst >}
        method delete x =
            let lst_remove x lst =
                let rec inner x acc = function
                    | [] -> List.rev acc
                    | a :: b when a = x -> inner x acc b
                    | a :: b -> inner x (a :: acc) b
                in
                inner x [] lst
            in
            {< lst = lst_remove x lst >}
    end
