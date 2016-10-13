let rec flatten list = 
	if list=[] then []
	else List.hd list @ flatten(List.tl list);;
	
let rec count (obj, list) =
	if list = [] then 0
	else if List.hd list = obj then 1 + count(obj, List.tl list)
	else count(obj, List.tl list);;

let rec replicate(obj, count) = 
	if(count<=0) then []
	else [obj] @ replicate(obj, count-1);;

let rec sqrList list = 
	if list = [] then []
	else [List.hd list * List.hd list] @ sqrList(List.tl list);;

let palindrome list = list = List.rev list;;

let rec listLength list = 
	if list=[] then 0
	else 1 + listLength (List.tl list);;