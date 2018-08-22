# src https://superuser.com/a/1132971/817900
function tree {
	find $1 -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}
