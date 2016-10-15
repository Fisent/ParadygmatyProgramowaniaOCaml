let rec fib(n) = 
	match n with
	| 0 -> 0
	| 1 -> 1
	| _ -> fib(n-1) + fib(n-2);;

let fibbonachi(n) = fib(n, 1, 0);;
let rec fib(n, prev, next) = match n with
| 0 -> prev
| 1 -> next
| _ -> fib((n-1), next, (next+prev));;


let rec replaceNth(list, n, obj) = 
	if list = [] then raise(Failure "brak listy")
	else if n = 0 then obj :: List.tl list
	else List.hd list :: replaceNth(List.tl list, n-1, obj);;

replaceNth (['o';'l';'a'] ,1,'s')

replaceNth([1,2,3], 1, "a");;





