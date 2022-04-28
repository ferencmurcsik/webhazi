window.onload = function() {
	var kuld = document.getElementById("kuld");
	if (kuld) {
		kuld.disabled = false;
	}
};
function ellenoriz() {
	var rendben = true;
	var fokusz = null;

	var szoveg = document.getElementById("szoveg");
	if (szoveg) {
		if (szoveg.value.length == 0 || szoveg.value.length > 200 )   {
			rendben = false;
			szoveg.style.background = '#f99';

		} else {
			szoveg.style.background = '#9f9';
		}
	}

//	var nev = document.getElementById("nev");
//	if (nev) {
//		if (nev.value.length<5) {
//			rendben = false;
//			nev.style.background = '#f99';
//			fokusz = nev;
//		} else {
//			nev.style.background = '#9f9';
//		}
//	}

	if (fokusz) {
		fokusz.focus();
	}

	var kuld = document.getElementById("kuld");
	if (kuld) {
		kuld.disabled = !rendben;
	}

	return rendben;
}