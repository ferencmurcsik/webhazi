    <script type="text/javascript" src="js/main.js"></script>
	<h1>Kapcsolat</h1>
	<h3>Küldjön nekünk üzenetet!</h3>
    <form action = "?oldal=onuzenete"  method = "post">    
		<div>
			<label><input type="text" id="nev" name="nev" size="20" maxlength="40" placeholder="Név">Név (minimum 5 karakter): </label>
            <br/>
            <label> <textarea id="szoveg" name="szoveg" cols="40" rows="6" maxlength="205"></textarea> Üzenet (maximumm 200 karakter): </label>
            <br/>
            <input id="kuld" type="submit" value="Küld">
            <button onclick="ellenoriz();" type="button">Ellenőriz</button>
        </div>
    </form>