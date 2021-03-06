<script type="text/javascript" src="js/main.js"></script>
<h2>A kapcsolat fülön az Ön által elküldött üzenet</h2>
<?php
	//szerver oldali ellenőrzés példa

	if(!isset($_POST['nev']) || strlen($_POST['nev']) == 0)
	{
		exit("Nem küldött üzenetet");
	}

	if(!isset($_POST['szoveg']) || empty($_POST['szoveg']))
	{
		exit("Üzenet küldése sikertelen: hiányzó szöveg!");
	}
	
	if(!isset($_POST['szoveg']) || strlen($_POST['szoveg']) > 200)
	{
		exit("Szöveg hossza maximum 200 karakter lehet! Az Ön által megadott szöveg hossza: " .strlen($_POST['szoveg']) );
	}

	echo "Név: " . $_POST["nev"]."<br>";
    echo "Üzenet: ". $_POST["szoveg"]."<br>";
	$uzenet = "";
	try {
	// Kapcsolódás
//		$pdo = new PDO('mysql:host=localhost;dbname=ebtelep', 'ebtelep', '7Pf2Ye3svJYFFMHt',array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
		$pdo = new PDO('mysql:host=localhost;dbname=gyakorlat7', 'root', '',array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
		$pdo->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
		$sqlInsert = "insert into messages(id, bejelentkezes, uzenet, idobelyeg)
                      values(0, :bejelentkezes, :uzenet, now())";
            $stmt = $pdo->prepare($sqlInsert); 
            $stmt->execute(array(':bejelentkezes' => $_POST['nev'], ':uzenet' => $_POST['szoveg'])); 
            if($count = $stmt->rowCount()) {
             
                $uzenet = "Üzenet rögzítése sikeres!";                     
                $ujra = false;
            }
            else {
                $uzenet = "Üzenet rögzítése nem sikerült!";
                $ujra = true;
            }
            

		}
	catch (PDOException $e) {
		echo "Hiba: ".$e->getMessage();
	} 
	echo "<p><b>".$uzenet."</b></p>";
?>

