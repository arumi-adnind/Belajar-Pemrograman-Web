<?php
echo "Perulangan Menggunakan For";
for ($i = 1; $i <= 5; $i++) {
    echo "<br>";
    for ($j = 1; $j <= $i; $j++) {
        echo "$i";
    }
}

echo "<br><br>";
echo "Perulangan Menggunakan While";
$a = 1;
$b = 1;
while ($a <= 5) {
    echo "<br>";
    while ($b <= $a) {
        echo "$a";
        $b++;
    }
    $a++;
    $b = 1;
}
?>