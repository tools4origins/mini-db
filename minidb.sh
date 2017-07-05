put () {
	echo $1:$2 >> db.log
}

get () {
	tac db.log |grep -m 1 "^$1:" |sed -E "s/^$1://" 
}
