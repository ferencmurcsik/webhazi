<?php
	try {
		// Kapcsolódás
		$pdo = new PDO('mysql:host=localhost;dbname=gyakorlat7', 'root', '',array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
		$pdo->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
		$utasitas = "Select bejelentkezes,uzenet,idobelyeg From messages Order by idobelyeg DESC";
		$eredm = $pdo->query($utasitas);
	}
	catch (PDOException $e) {
		echo "Hiba: ".$e->getMessage();
	}      
?>
<h1>Üzenetek</h1>
<h3>hajrá vasas!</h3>
<style>
	table, td, tr {
		border: 1px  solid black;
	}
</style>
<table>
	<tr align="center"><td><b>Felhasználó</b></td><td><b>Üzenet</b></td><td><b>Küldés időpontja</b></td></tr>
	<?php foreach ($eredm as $sor)
		print "<tr><td>" . $sor['bejelentkezes'] . "</td>"  . " <td>" .$sor['uzenet'] . "</td>"  . " <td>" .$sor['idobelyeg'] ."</td></tr>";
	?>
</table>