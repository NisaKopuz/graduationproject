<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="tr">
<head>

<title>İşBurada.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1h11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#datepicker").datepicker({ dateFormat: "dd-mm-yy" }).val()
	});
</script>
<script>
	$(function() {
		$("#datepicker2").datepicker({ dateFormat: "dd-mm-yy" }).val()
	});
</script>
<script>
	$(function() {
		$("#datepicker3").datepicker({ dateFormat: "dd-mm-yy" }).val()
	});
</script>
<script>
	$(function() {
		$("#datepicker4").datepicker({ dateFormat: "dd-mm-yy" }).val()
	});
</script>
<style>
.form-control {
	width: 450px;
}

.width-button {
	width: 450px;
}

.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}
</style>

<style>
body {
	padding-top: 50px; /* Whatever the height of your navbar is; the
                             default is 50px */
}

#map {
	display: block;
	height: 550px;
}

.control-label {
	width: 220px;
}

.center {
	margin: auto;
	width: 60%;
	border: 2px solid white;
	padding: 20px;
}

.vertical-alignment-helper {
	display: table;
	height: 70%;
	width: 100%;
}

.vertical-align-center {
	/* To center vertically */
	display: table-cell;
	vertical-align: middle;
}

.modal-content {
	/* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
	width: inherit;
	height: inherit;
	/* To center horizontally */
	margin: 0 auto;
}

.form-control {
	width: 200px;
}

.form-controll {
	width: 300px;
}
</style>
<script>
function changeval(){
	var x = document.sform.Continue.checked;
	var valDate = document.getElementById('datepicker2').value;
	if(valDate == ""){		
	  if( x == false){	
		alert("Lütfen Bitiş Tarihi Veya Devam Durumunuzu Belitiniz.");
	   }
	}
	var secinizUniv = document.sform.EducationLevel.value;
		if(secinizUniv == null || secinizUniv == "" || secinizUniv == "0")
			alert("Lütfen Üniversite Seviyesi Seçiniz");
		
	var secinizDiploma = document.sform.DiplomaGradeSystem.value;
	if(secinizDiploma == null || secinizDiploma == "" || secinizDiploma == "0")
		alert("Lütfen Diploma Not Sistemi Seçiniz");
	var secinizUnivAdi = document.sform.UniversityName.value;
	if(secinizUnivAdi == null || secinizUnivAdi == "" || secinizUnivAdi == "0")
		alert("Lütfen Üniversite Adı Seçiniz");
	var secinizUnivSehir = document.sform.UniversityTown.value;
	if(secinizUnivSehir == "0")
		alert("Üniversite Şehri Seçiniz");
}
</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="/HaritaUzerindeIsArama/userhome.jsp">
					<img alt="İşBurada" src="/HaritaUzerindeIsArama/images/logo.png"
					width="25" height="25">
				</a>

			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/HaritaUzerindeIsArama/userhome.jsp">İşBurada</a></li>
				</ul>
			<form class="navbar-form pull-left" role="search" method="POST"><!-- Didem Kaçmaz Arama Butonu -->
                        <div class="form-group">
                           <input type="text" name="userName" class="form-control" placeholder="Kullanıcı ara..">
                        </div>
                        <button type="submit" class="btn btn-default" onclick="form.action='userSearch'"><span class="glyphicon glyphicon-search"></span></button>
                    </form>
                    

				<ul class="nav navbar-nav navbar-right">
					<li><a href="/HaritaUzerindeIsArama/myreferencesuser.jsp"><span class="glyphicon glyphicon-list-alt"></span> Başvurularım</a></li>
					<li><a href="/HaritaUzerindeIsArama/Inbox.jsp"><span class="glyphicon glyphicon-envelope"></span>&nbsp;<span class="badge"></span> </a></li><!-- Didem Kaçmaz Email -->
					<li><a href="userTimeLine.jsp?userName=<%=request.getRemoteUser()%>"><span class="glyphicon glyphicon-user"></span> <%=request.getRemoteUser()%></a></li>
					<li><a href="/HaritaUzerindeIsArama/logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Çıkış Yap</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<form class="form-horizontal" data-toggle="validator" name="sform"
		method="POST" action="CVEducationServlet" data-fv-framework="bootstrap"
		data-fv-framework="bootstrap"
		data-fv-icon-valid="glyphicon glyphicon-ok"
		data-fv-icon-invalid="glyphicon glyphicon-remove"
		data-fv-icon-validating="glyphicon glyphicon-refresh">
		<div class="container">
			<p>
				<br>
				<br>
			</p>
			<ul class="nav nav-pills col-md-offset-2   ">
				<li><a data-toggle="pill" href="CVContactInformation.jsp">İletişim
						Bilgileri</a></li>
				<li><a data-toggle="pill" href="CVPersonalInformation.jsp">Kişisel
						Bilgiler</a></li>
				<li class="active"><a data-toggle="pill"
					href="CVEducationalInfo.jsp">Eğitim Bilgileri</a></li>
				<li><a data-toggle="pill" href=" CVBusinessInfo.jsp">İş
						Deneyimi</a></li>
				<li><a data-toggle="pill" href="CVForeignLaguageInfo.jsp">Yabancı
						Dil</a></li>
				<li><a data-toggle="pill" href="CVReferenceInfo.jsp">Referans
						Bilgileri</a></li>
				<li><a data-toggle="pill" href="CVAdditionalInfo.jsp">Ek
						Bilgiler</a></li>
			</ul>

			<div class="tab-content text-center">
				<div id="home" class="tab-pane fade in active">
					<p>
						<br>
					</p>
					<div class="container center ">


						<div class="form-group">
							<label class="control-label col-sm-5" for="EducationLevel">Üniversite Eğitim
								Seviyesi * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<select class="form-control" name="EducationLevel" required >
									<option value="">Seçiniz</option>
									<option value="Önlisans">Önlisans</option>
									<option value="Lisans">Lisans</option>
									<option value="Yüksek Lisans">Yüksek Lisans</option>
									<option value="Doktora">Doktora</option>

								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-5" for="StartDate">Başlangıç
								Tarihi * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" id="datepicker" class="form-control"
									name="StartDate" required placeholder="">

							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="FinishDate">Bitiş
								Tarihi * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-4">
								<input type="text" id="datepicker2"  class="form-control"
									name="FinishDate" >

							</div>
							<div class="col-sm-3">
								<input TYPE=radio name="Continue" value="Devam Ediyorum">&nbsp;Devam
								Ediyor
							</div>
						
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="DiplomaGradeSystem">Diploma
								Not Sistemi * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<select class="form-control" name="DiplomaGradeSystem" required>
									<option value="">Seçiniz</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="10">10</option>
									<option value="100">100</option>

								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="DiplomaGrade">Diploma
								Notu &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="DiplomaGrade">
							</div>
						</div>
						<hr>
						<div class="form-group">
							<label class="control-label col-sm-5" for="UniversityName">Üniversite
								Adı * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<select class="form-control" name="UniversityName" required>
									<option value="">Seçiniz</option>
									<option value="Abant İzzet Baysal Üniversitesi">Abant
										İzzet Baysal Üniversitesi</option>
									<option value="Adnan Menderes Üniversitesi">Adnan
										Menderes Üniversitesi</option>
									<option value="Afyon Kocatepe Üniversitesi">Afyon
										Kocatepe Üniversitesi</option>
									<option value="Ankara Üniversitesi">Ankara
										Üniversitesi</option>
									<option value="Atatürk Üniversitesi">Atatürk
										Üniversitesi</option>
									<option value="Atılım Üniversitesi">Atılım
										Üniversitesi</option>
									<option value="Bahçeşehir Üniversitesi">Bahçeşehir
										Üniversitesi</option>
									<option value="Balıkesir Üniversitesi">Balıkesir
										Üniversitesi</option>
									<option value="Başkent Üniversitesi">Başkent
										Üniversitesi</option>
									<option value="Beykent Üniversitesi">Beykent
										Üniversitesi</option>
									<option value="Celal Bayar Üniversitesi">Celâl Bayar
										Üniversitesi</option>
									<option value="Cumhuriyet Üniversitesi">Cumhuriyet
										Üniversitesi</option>
									<option value="Çağ Üniversitesi">Çağ Üniversitesi</option>
									<option value="Çanakkale Onsekiz Mart Üniversitesi">Çanakkale
										Onsekiz Mart Üniversitesi</option>
									<option value="Çankaya Üniversitesi">Çankaya
										Üniversitesi</option>
									<option value="Çukurova Üniversitesi">Çukurova
										Üniversitesi</option>
									<option value="Dicle Üniversitesi">Dicle Üniversitesi</option>
									<option value="Doğuş Üniversitesi">Doğuş Üniversitesi</option>
									<option value="Dokuz Eylül Üniversitesi">Dokuz Eylül
										Üniversitesi</option>
									<option value="Dumlupınar Üniversitesi">Dumlupınar
										Üniversitesi</option>
									<option value="Ege Üniversitesi">Ege Üniversitesi</option>
									<option value="Erciyes Üniversitesi">Erciyes
										Üniversitesi</option>
									<option value="Fatih Üniversitesi">Fatih Üniversitesi</option>
									<option value="Fırat Üniversitesi">Fırat Üniversitesi</option>
									<option value="Galatasaray Üniversitesi">Galatasaray
										Üniversitesi</option>
									<option value="Gazi Üniversitesi">Gazi Üniversitesi</option>
									<option value="Gaziantep Üniversitesi">Gaziantep
										Üniversitesi</option>
									<option value="Gaziosmanpaşa Üniversitesi">Gaziosmanpaşa
										Üniversitesi</option>
									<option value="Gebze Yüksek Teknoloji Enstitüsü">Gebze
										Yüksek Teknoloji Enstitüsü</option>
									<option value="Hacettepe Üniversitesi">Hacettepe
										Üniversitesi</option>
									<option value="Haliç Üniversitesi">Haliç Üniversitesi</option>
									<option value="Harran Üniversitesi">Harran
										Üniversitesi</option>
									<option value="Işık Üniversitesi">Işık Üniversitesi</option>
									<option value="İstanbul Bilgi Üniversitesi">İstanbul
										Bilgi Üniversitesi</option>
									<option value="İstanbul Kültür Üniversitesi">İstanbul
										Kültür Üniversitesi</option>
									<option value="İstanbul Teknik Üniversitesi">İstanbul
										Teknik Üniversitesi</option>
									<option value="İzmir Ekonomi Üniversitesi">İzmir
										Ekonomi Üniversitesi</option>
									<option value="Kadir Has Üniversitesi">Kadir Has
										Üniversitesi</option>
									<option value="Kafkas Üniversitesi">Kafkas
										Üniversitesi</option>
									<option value="Kahramanmaraş Sütçü İmam Üniversitesi">Kahramanmaraş
										Sütçü İmam Üniversitesi</option>
									<option value="Karadeniz Teknik Üniversitesi">Karadeniz
										Teknik Üniversitesi</option>
									<option value="Kırıkkale Üniversitesi">Kırıkkale
										Üniversitesi</option>
									<option value="Kocaeli Üniversitesi">Kocaeli
										Üniversitesi</option>
									<option value="Koç Üniversitesi">Koç Üniversitesi</option>
									<option value="Maltepe Üniversitesi">Maltepe
										Üniversitesi</option>
									<option value="Marmara Üniversitesi">Marmara
										Üniversitesi</option>
									<option value="Mersin Üniversitesi">Mersin
										Üniversitesi</option>
									<option value="Mimar Sinan Üniversitesi">Mimar Sinan
										Üniversitesi</option>
									<option value="Muğla Üniversitesi">Muğla Üniversitesi</option>
									<option value="Mustafa Kemal Üniversitesi">Mustafa
										Kemal Üniversitesi</option>
									<option value="Niğde Üniversitesi">Niğde Üniversitesi</option>
									<option value="Okan Üniversitesi">Okan Üniversitesi</option>
									<option value="Ondokuz Mayıs Üniversitesi">Ondokuz
										Mayıs Üniversitesi</option>
									<option value="Orta Doğu Teknik Üniversitesi">Orta
										Doğu Teknik Üniversitesi</option>
									<option value="Osmangazi Üniversitesi">Osmangazi
										Üniversitesi</option>
									<option value="Pamukkale Üniversitesi">Pamukkale
										Üniversitesi</option>
									<option value="Sabancı Üniversitesi">Sabancı
										Üniversitesi</option>
									<option value="Sakarya Üniversitesi">Sakarya
										Üniversitesi</option>
									<option value="Selçuk Üniversitesi">Selçuk
										Üniversitesi</option>
									<option value="Süleyman Demirel Üniversites">Süleyman
										Demirel Üniversites</option>

									<option value="Trakya Üniversitesi">Trakya
										Üniversitesi</option>
									<option value="TOBB Ekonomi ve Teknoloji Üniversitesi">TOBB
										Ekonomi ve Teknoloji Üniversitesi</option>

									<option value="Ufuk Üniversitesi">Ufuk Üniversitesi</option>
									<option value="Uludağ Üniversitesi">Uludağ
										Üniversitesi</option>
									<option value="Yaşar Üniversitesi ">Yaşar Üniversitesi
									</option>
									<option value="Yeditepe Üniversitesi">Yeditepe
										Üniversitesi</option>
									<option value="Yıldız Teknik Üniversitesi">Yıldız
										Teknik Üniversitesi</option>
									<option value="Yüzüncü Yıl Üniversitesi">Yüzüncü Yıl
										Üniversitesi</option>

									<option value="Zonguldak Karaelmas Üniversitesi">Zonguldak
										Karaelmas Üniversitesi</option>

								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="UniversityTown">Üniversite
								Şehiri &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<select type="text" class="form-control" name="UniversityTown" required>

										<option value="">Seçiniz</option>
									<option value="Adana">Adana</option>
									<option value="Adiyaman">Adiyaman</option>
									<option value="Afyon">Afyon</option>
									<option value="Agri">Agri</option>
									<option value="Aksaray">Aksaray</option>
									<option value="Amasya">Amasya</option>
									<option value="Ankara">Ankara</option>
									<option value="Antalya">Antalya</option>
									<option value="Ardahan">Ardahan</option>
									<option value="Artvin">Artvin</option>
									<option value="Aydin">Aydin</option>
									<option value="Balikesir">Balikesir</option>
									<option value="Bartin">Bartin</option>
									<option value="Batman">Batman</option>
									<option value="Bayburt">Bayburt</option>
									<option value="Bilecik">Bilecik</option>
									<option value="Bingol">Bingol</option>
									<option value="Bitlis">Bitlis</option>
									<option value="Burdur">Burdur</option>
									<option value="Bursa">Bursa</option>
									<option value="Canakkale">Canakkale</option>
									<option value="Cankiri">Cankiri</option>
									<option value="Corum">Corum</option>
									<option value="Denizli">Denizli</option>
									<option value="Diyarbakir">Diyarbakir</option>
									<option value="Duzce">Duzce</option>
									<option value="Edirne">Edirne</option>
									<option value="Elazig">Elazig</option>
									<option value="Erzincan">Erzincan</option>
									<option value="Erzurum">Erzurum</option>
									<option value="Eskisehir">Eskisehir</option>
									<option value="Gaziantep">Gaziantep</option>
									<option value="Giresun">Giresun</option>
									<option value="Gumushane">Gumushane</option>
									<option value="Hakkari">Hakkari</option>
									<option value="Hatay">Hatay</option>
									<option value="Igdir">Igdir</option>
									<option value="Isparta">Isparta</option>
									<option value="Istanbul">Istanbul</option>
									<option value="Izmir">Izmir</option>
									<option value="Kahramanmaras">Kahramanmaras</option>
									<option value="Karabuk">Karabuk</option>
									<option value="Karaman">Karaman</option>
									<option value="Kars">Kars</option>
									<option value="Kastamonu">Kastamonu</option>
									<option value="Kayseri">Kayseri</option>
									<option value="Kilis">Kilis</option>
									<option value="Kirikkale">Kirikkale</option>
									<option value="Kirklareli">Kirklareli</option>
									<option value="Kirsehir">Kirsehir</option>
									<option value="Kocaeli">Kocaeli</option>
									<option value="Konya">Konya</option>
									<option value="Kutahya">Kutahya</option>
									<option value="Malatya">Malatya</option>
									<option value="Manisa">Manisa</option>
									<option value="Mardin">Mardin</option>
									<option value="Mugla">Mugla</option>
									<option value="Mus">Mus</option>
									<option value="Nevsehir">Nevsehir</option>
									<option value="Nigde">Nigde</option>

									<option value="Ordu">Ordu</option>
									<option value="Osmaniye">Osmaniye</option>

									<option value="Rize">Rize</option>
									<option value="Sakarya">Sakarya</option>
									<option value="Samsun">Samsun</option>
									<option value="Sanliurfa">Sanliurfa</option>
									<option value="Siirt">Siirt</option>
									<option value="Sinop">Sinop</option>

									<option value="Sirnak">Sirnak</option>
									<option value="Sivas">Sivas</option>
									<option value="Tekirdag">Tekirdag</option>
									<option value="Tokat">Tokat</option>
									<option value="Trabzon">Trabzon</option>
									<option value="Tunceli">Tunceli</option>
									<option value="Usak">Usak</option>
									<option value="Van">Van</option>
									<option value="Yalova">Yalova</option>
									<option value="Yozgat">Yozgat</option>
									<option value="Zonguldak">Zonguldak</option>

								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="FacultyName">Fakülte
								Adı * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="FacultyName" required placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="DepartmentName">Bölüm
								Adı * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="DepartmentName" required placeholder="">
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-sm-7" for="EducationType">Öğrenim
								Tipi &nbsp;&nbsp;&nbsp;:</label>
							<div class="control-label col-sm-2 col-sm-offset-0 ">
								<select class="form-control" name="EducationType" required>
									<option value="">Seçiniz</option>
									<option value="Örgün Öğretim">Örgün Öğretim</option>
									<option value="İkinci Öğretim">İkinci Öğretim</option>
									<option value="Açık Öğretim">Açık Öğretim</option>
									<option value="Uzaktan Öğretim">Uzaktan Öğretim</option>

								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-7" for="EducationLanguage">Öğrenim
								Dili &nbsp;&nbsp;&nbsp;:</label>
							<div class="control-label col-sm-2 col-sm-offset-0 ">
								<select class="form-control" name="EducationLanguage" required>
									<option value="">Seçiniz</option>
									<option value="1">Diğer</option>
									<option value="Türkçe">Türkçe</option>
									<option value="Almanca">Almanca</option>
									<option value="Arapça">Arapça</option>
									<option value="Arnavutça">Arnavutça</option>
									<option value="Fransızca">Fransızca</option>
									<option value="İngilizce">İngilizce</option>
									<option value="İspanyolca">İspanyolca</option>
									<option value="Azerbaycan Türkçesi">Azerbaycan
										Türkçesi</option>
									<option value="Bulgarca">Bulgarca</option>
									<option value="Çince">Çince</option>
									<option value="Farsça">Farsça</option>
									<option value="İtalyanca">İtalyanca</option>
									<option value="Japonca">Japonca</option>
									<option value="Korece ">Korece</option>
									<option value="Latince ">Latince</option>
									<option value="Norveççe">Norveççe</option>
									<option value="Portekizce">Portekizce</option>
									<option value="Tayvanca ">Tayvanca</option>

								</select>
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-sm-7" for="BursaryType">Burs
								Tipi &nbsp;&nbsp;&nbsp;:</label>
							<div class="control-label col-sm-2 col-sm-offset-0 ">
								<select class="form-control" name="BursaryType">
									<option value="Burs Yok">Burs Yok</option>
									<option value="Destek Bursu">Destek Bursu</option>
									<option value="Başarı Bursu">Başarı Bursu</option>
									<option value="Üstün Başarı">Üstün Başarı</option>
								</select>

							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-5" for="Minor">Yandal
								&nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-2">
								<input TYPE=radio name="Minor" value="Evet"> Evet <BR>
							</div>

							<div class="col-sm-1">
								<input TYPE="text" class="form-control" name="Minortxt"
									placeholder="Açıklama">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-5" for="DoubleMajor">Çift
								Anadal &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-2">
								<input TYPE=radio name="DoubleMajor" value="Evet"> Evet
								<BR>
							</div>
				
							<div class="col-sm-1">
								<input TYPE="text" class="form-control" name="DoubleMajortxt"
									placeholder="Açıklama">
							</div>
						</div>
				<hr>
							<div class="form-group">
							 <label class="control-label col-sm-5" for="HighSchoolName">Lise Adı &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="highSchoolName">
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-7" for="HighSchoolType">Lise Tipi &nbsp;&nbsp;&nbsp;:</label>
							<div class="control-label col-sm-2 col-sm-offset-0 ">
								<select class="form-control" name="highSchoolType">
									<option value=""></option>
									<option value="Genel lise">Genel lise</option>
									<option value="Teknik lise">Teknik lise</option>
									<option value="Temel lise">Temel lise</option>
									<option value="Endüstri meslek lisesi">Endüstri meslek lisesi</option>
									<option value="Anadolu lisesi">Anadolu lisesi</option>
									<option value="Anadolu meslek lisesi">Anadolu meslek lisesi</option>
									<option value="Polis koleji">Polis koleji</option>
									<option value="Askeri lise">Askeri lise</option>
									<option value="Sosyal bilimler lisesi">Sosyal bilimler lisesi</option>
									<option value="Meslek lisesi">Meslek lisesi</option>
									<option value="Öğretmen lisesi">Öğretmen lisesi</option>
									<option value="Güzel sanatlar lisesi">Güzel sanatlar lisesi</option>
									<option value="İmam Hatip lisesi">İmam Hatip lisesi</option>
									<option value="Fen lisesi">Fen lisesi</option>
								</select>

							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-5" for="HighSchoolTown">Lise
								Şehiri &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<select type="text" class="form-control" name="highSchoolTown" >
									<option value=""></option>
									<option value="">Seçiniz</option>
									<option value="Adana">Adana</option>
									<option value="Adiyaman">Adiyaman</option>
									<option value="Afyon">Afyon</option>
									<option value="Agri">Agri</option>
									<option value="Aksaray">Aksaray</option>
									<option value="Amasya">Amasya</option>
									<option value="Ankara">Ankara</option>
									<option value="Antalya">Antalya</option>
									<option value="Ardahan">Ardahan</option>
									<option value="Artvin">Artvin</option>
									<option value="Aydin">Aydin</option>
									<option value="Balikesir">Balikesir</option>
									<option value="Bartin">Bartin</option>
									<option value="Batman">Batman</option>
									<option value="Bayburt">Bayburt</option>
									<option value="Bilecik">Bilecik</option>
									<option value="Bingol">Bingol</option>
									<option value="Bitlis">Bitlis</option>
									<option value="Burdur">Burdur</option>
									<option value="Bursa">Bursa</option>
									<option value="Canakkale">Canakkale</option>
									<option value="Cankiri">Cankiri</option>
									<option value="Corum">Corum</option>
									<option value="Denizli">Denizli</option>
									<option value="Diyarbakir">Diyarbakir</option>
									<option value="Duzce">Duzce</option>
									<option value="Edirne">Edirne</option>
									<option value="Elazig">Elazig</option>
									<option value="Erzincan">Erzincan</option>
									<option value="Erzurum">Erzurum</option>
									<option value="Eskisehir">Eskisehir</option>
									<option value="Gaziantep">Gaziantep</option>
									<option value="Giresun">Giresun</option>
									<option value="Gumushane">Gumushane</option>
									<option value="Hakkari">Hakkari</option>
									<option value="Hatay">Hatay</option>
									<option value="Igdir">Igdir</option>
									<option value="Isparta">Isparta</option>
									<option value="Istanbul">Istanbul</option>
									<option value="Izmir">Izmir</option>
									<option value="Kahramanmaras">Kahramanmaras</option>
									<option value="Karabuk">Karabuk</option>
									<option value="Karaman">Karaman</option>
									<option value="Kars">Kars</option>
									<option value="Kastamonu">Kastamonu</option>
									<option value="Kayseri">Kayseri</option>
									<option value="Kilis">Kilis</option>
									<option value="Kirikkale">Kirikkale</option>
									<option value="Kirklareli">Kirklareli</option>
									<option value="Kirsehir">Kirsehir</option>
									<option value="Kocaeli">Kocaeli</option>
									<option value="Konya">Konya</option>
									<option value="Kutahya">Kutahya</option>
									<option value="Malatya">Malatya</option>
									<option value="Manisa">Manisa</option>
									<option value="Mardin">Mardin</option>
									<option value="Mugla">Mugla</option>
									<option value="Mus">Mus</option>
									<option value="Nevsehir">Nevsehir</option>
									<option value="Nigde">Nigde</option>

									<option value="Ordu">Ordu</option>
									<option value="Osmaniye">Osmaniye</option>

									<option value="Rize">Rize</option>
									<option value="Sakarya">Sakarya</option>
									<option value="Samsun">Samsun</option>
									<option value="Sanliurfa">Sanliurfa</option>
									<option value="Siirt">Siirt</option>
									<option value="Sinop">Sinop</option>

									<option value="Sirnak">Sirnak</option>
									<option value="Sivas">Sivas</option>
									<option value="Tekirdag">Tekirdag</option>
									<option value="Tokat">Tokat</option>
									<option value="Trabzon">Trabzon</option>
									<option value="Tunceli">Tunceli</option>
									<option value="Usak">Usak</option>
									<option value="Van">Van</option>
									<option value="Yalova">Yalova</option>
									<option value="Yozgat">Yozgat</option>
									<option value="Zonguldak">Zonguldak</option>

								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-5" for="StartDate">Başlangıç
								Tarihi * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" id="datepicker3" class="form-control"
									name="highSchoolStartDate" >

							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-5" for="FinishDate">Bitiş
								Tarihi * &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-4">
								<input type="text" id="datepicker4"  class="form-control"
									name="highSchoolFinishDate" >

							</div>
							</div>
							<div class="form-group">
							 <label class="control-label col-sm-5" for="HighSchoolDegree">Lise Mezuniyet Derecesi &nbsp;&nbsp;&nbsp;:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" placeholder="Örn: 3,14" name="highSchoolDegree">
							</div>
						</div>
						
							
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">
                                  
								<a href="CVEducationalInfo.jsp" role="button" class="btn btn-success">Temizle</a>
 	                        <button type="submit" onclick="form.action='CVEducationServlet2';" class="btn btn-success">Yeni Eğitim Bilgisi Ekle</button>
							</div>
						</div>
					
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">

								<button type="submit" class="btn btn-success" onclick="changeval()">DEVAM ET
									>></button>

							</div>
						</div>


					</div>
				</div>
			</div>
	</form>
</body>
</html>