<script type="text/javascript" src="js/main.js"></script>
<h2>A kapcsolat fülön az Ön által elküldött üzenet</h2>
<?php
	//szerver oldali ellenőrzés példa

	if(!isset($_POST['nev']) || strlen($_POST['nev']) < 5)
	{
		exit("Nem küldött üzenetet");
	}

	if(!isset($_POST['szoveg']) || empty($_POST['szoveg']))
	{
		exit("Nem küldött üzenetet");
	}

	echo $_POST["nev"]."<br>";
    echo $_POST["szoveg"]."<br>";
?>

