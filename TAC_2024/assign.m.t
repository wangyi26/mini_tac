label main
begin
var s
var t
var i
var j
var k
var a
var b
var c
var d
s = 's'
t = 't'
var t0
t0 = s + 1
i = t0
k = 'l'
var t1
t1 = k + t
j = t1
b = 1
c = 5
var t2
t2 = b + c
d = t2
var t3
t3 = - b
var t4
t4 = t3 * c
var t5
t5 = t4 + d
a = t5
s = t
label L1
var t6
t6 = (i <= k)
ifz t6 goto L2
var t7
t7 = i + 1
i = t7
goto L1
label L2
end
