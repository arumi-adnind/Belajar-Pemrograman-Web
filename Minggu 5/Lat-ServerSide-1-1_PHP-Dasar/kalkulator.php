<!DOCTYPE html>
<html>
<head>
	<title>KALKULATOR</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<?php 
	if(isset($_POST['hitung']))
	{
		$bil1 = $_POST['bil1'];
		$bil2 = $_POST['bil2'];
		$operator = $_POST['operator'];
		switch ($operator) 
		{
			case 'tambah':
				$hasil = $bil1+$bil2;
			break;
			case 'kurang':
				$hasil = $bil1-$bil2;
			break;
			case 'kali':
				$hasil = $bil1*$bil2;
			break;
			case 'bagi':
				$hasil = $bil1/$bil2;
			break;			
		}
	}
	?>
	<div class="kalkulator">
		<h2 class="judul">KALKULATOR</h2>
		<form method="post" action="kalkulator.php">			
			<input type="text" name="bil1" class="bil" autocomplete="off" placeholder="Masukkan Bilangan Pertama">
			<input type="text" name="bil2" class="bil" autocomplete="off" placeholder="Masukkan Bilangan Kedua">
			<select class="opt" name="operator">
				<option >- Pilih Operator -</option>
				<option value="tambah">+ (tambah)</option>
				<option value="kurang">- (kurang)</option>
				<option value="kali">x (kali)</option>
				<option value="bagi">/ (bagi)</option>
			</select>
			<input type="submit" name="hitung" value="=" class="tombol">											
		</form>
		
		<?php if(isset($_POST['hitung'])){ ?>
			<input type="text" value="<?php echo $hasil; ?>" class="bil">
		<?php }else{ ?>
			<input type="text" class="bil" placeholder="Hasil">
		<?php } ?>	
		<br><br>
		<a class="created">created by Arumi Adnindriasih</a>
		
	</div>
</body>
</html>