<?php 
$felhasznaloNeve = "";
	if(isset($_SESSION['login'])) { 
	$felhasznaloNeve = $_SESSION['csn']." ".$_SESSION['un'];
		}
	else {
		$felhasznaloNeve = "Vendég";
	}
?>


<script type="text/javascript" src="js/main.js"></script>
<h1>Kapcsolat</h1>
<h3>Küldjön nekünk üzenetet!</h3>
<form action = "?oldal=onuzenete"  method = "post">    
	<div>
		<label><input type="hidden" id="nev" name="nev" size="20" maxlength="40" value="<?php echo $felhasznaloNeve ?>" readonly /></label>
        <br/>

        <label> <textarea id="szoveg" name="szoveg" cols="40" rows="6" maxlength="205"></textarea> Üzenet (maximumm 200 karakter): </label>
        <br/>
        <input id="kuld" type="submit" value="Email küldése">
        <button onclick="ellenoriz();" type="button">Ellenőriz</button>
    </div>
</form>
