<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>Input Data Mahasiswa</title>
<style>
body {
	font-family: monospace;
	font-size:17px;
}
</style>
</head>

<body>
  <form action="prosesform.php" method="post">
    <table style="margin-top:50px" width="620" border="1" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td height="50" align="center" bgcolor="orange"><strong><font color="#000000"> INPUT DATA MAHASISWA </font></strong></td>
      </tr>
	  
      <tr>
        <td bgcolor="#FFFFFF"><table width="620" border="0" align="center" cellpadding="10" cellspacing="0">
             <tr>
				<td width="100"><b>NIM</b></td>
				<td width="15">:</td>
				<td width="250"><input name="nim" type="text" id="nim" size="20" maxlength="20" autocomplete="off" placeholder="Masukkan NIM" style="background:lightgrey"></td>
             </tr>
			
            <tr>
              <td><b>Program Studi</b></td>
              <td>:</td>
              <td><select name="prodi" style="background:lightgrey">
				<option >- Pilih Program Studi -</option>
                <option value="Teknik Informatika S1">Teknik Informatika S1</option>
                <option value="Sistem Informasi S1">Sistem Informasi S1</option>
                <option value="Teknik Informatika D3">Teknik Informatika D3</option>
              </select>
			  </td>
            </tr>
			
            <tr>
            <td><b>Nilai Tugas</b></td>
            <td> : </td>
            <td><input type="text" name="nilai_tugas" id="nilai_tugas" size="30" maxlength="30" autocomplete="off" placeholder="Nilai 0-100" style="background:lightgrey"></td>
            </tr>
			
            <tr>
            <td><b>Nilai UTS</b></td>
            <td> : </td>
            <td><input type="text" name="nilai_uts" id="nilai_uts" size="30" maxlength="30" autocomplete="off" placeholder="Nilai 0-100" style="background:lightgrey"></td>
            </tr>
			
            <tr>
            <td><b>Nilai UAS</b></td>
            <td> : </td>
            <td><input type="text" name="nilai_uas" id="nilai_uas" size="30" maxlength="30" autocomplete="off" placeholder="Nilai 0-100" style="background:lightgrey"></td>
            </tr>
			
            <tr>
            <td><b>Catatan Khusus</b></td>
            <td> : </td>
            <td><input type="checkbox" name="catatan[]" value="Kehadiran >= 70%" />
            <label for="catatan1"> Kehadiran >= 70% </label><br>
            <input type="checkbox" name="catatan[]" value="Interaktif di kelas" />
            <label for="catatan2">Interaktif Di Kelas </label><br>
            <input type="checkbox" name="catatan[]" value="Tidak Terlambat Mengumpulkan Tugas" />
            <label for="catatan3"> Tidak Terlambat Mengumpulkan Tugas </label><br><br>
            <button type="submit" name="kirim" style="background:orange"><b>SIMPAN</b></button>
            </td>
            </tr>
        </td>
      </tr>
    </table>
  </form>
  
</body>
</html>