[string]$array1 = @( {“a”:{“b”:{“c”:”d”}}})
[string]$key = "a/b/c"
[string]$array2= @({“x”:{“y”:{“z”:”a”}}})
[string]key = "x/y/z"
$value = "a"
foreach($i in $array1.getenumerator(){
$key = $i.key
$value = $i.value
write-host "$key";
write-host "$value";
}
 Another solution we can try from hashtable

$hash = @{}
$hash.add("a","a")
$hash.add("b","b")
$hash.add("c","c")

$values = $hash.value
