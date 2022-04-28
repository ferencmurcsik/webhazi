<?php
    $MAPPA = './images/kutyak/';
    $TIPUSOK = array ('.jpg', '.png');
    $MEDIATIPUSOK = array('image/jpeg', 'image/png');
	$MAXMERET = 2000*3000;
    // Alkalmazás logika:
    
    // adatok összegyűjtése:    
    $kepek = array();
    $olvaso = opendir($MAPPA);
    while (($fajl = readdir($olvaso)) !== false)
        if (is_file($MAPPA.$fajl)) {
            $vege = strtolower(substr($fajl, strlen($fajl)-4));
            if (in_array($vege, $TIPUSOK))
                $kepek[$fajl] = filemtime($MAPPA.$fajl);            
        }
    closedir($olvaso);



	// Kepfeltöltés 
    $uzenet = array(); 

	$readyToRefresh = FALSE;
    // Megjelenítés logika:
	if (isset($_POST['kuld'])) {
	//print_r($_FILES);
	foreach($_FILES as $fajl) {
		if ($fajl['error'] == 4);   // Nem töltött fel fájlt
		elseif (!in_array($fajl['type'], $MEDIATIPUSOK))
			$uzenet[] = " Nem megfelelő típus: " . $fajl['name'];
		elseif ($fajl['error'] == 1   // A fájl túllépi a php.ini -ben megadott maximális méretet
					or $fajl['error'] == 2   // A fájl túllépi a HTML űrlapban megadott maximális méretet
					or $fajl['size'] > $MAXMERET) 
			$uzenet[] = " Túl nagy állomány: " . $fajl['name'];
		else {
			$vegsohely = $MAPPA.strtolower($fajl['name']);
			if (file_exists($vegsohely))
				$uzenet[] = " Már létezik: " . $fajl['name'];
			else {
				move_uploaded_file($fajl['tmp_name'], $vegsohely);
				$uzenet[] = ' Ok: ' . $fajl['name'];
				$readyToRefresh = TRUE;
				}
			}
		} 
	}
	if ($readyToRefresh) {
		$readyToRefresh = FALSE;
		header("Refresh:0");
	}
    
?>
    <meta charset="utf-8">
	<style type="text/css">
        div.kep { display: inline-block; }
        div.kep img { width: 10px; }
    </style>
    <div id="galeria">
    <h1>Galéria</h1>
    <?php
    arsort($kepek);
    foreach($kepek as $fajl => $datum)
    {
    ?>
        <div class="kep">
            <a href="<?php echo $MAPPA.$fajl ?>" target="_blank">
                <img src="<?php echo $MAPPA.$fajl ?>">
            </a>            
        </div>
    <?php
    }
    ?>
    </div>
  
	<?php     
	$isUserLoggedin = FALSE;
	if(isset($_SESSION['login'])) { 
		$isUserLoggedin = TRUE; 
	}
	if ($isUserLoggedin) { ?>
    <h1>Feltöltés a galériába:</h1>
<?php
    if (!empty($uzenet))
    {
        echo '<ul>';
        foreach($uzenet as $u)
            echo "<li>$u</li>";
        echo '</ul>';
    }
?>
    <form method="post"
                enctype="multipart/form-data">
        <label>Első:
            <input type="file" name="elso" required>
        </label>    
        <input type="submit" name="kuld">
      </form>    
	<?php } else { ?>
		<h3>Kép feltöltéshez jelentekezzen be! </h3>
	<?php } ?>

