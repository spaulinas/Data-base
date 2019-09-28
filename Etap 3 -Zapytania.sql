-- Wyszukiwanie prac zwiazanych z dana tematyka - mechatronika (kilka wynikow)

SELECT PracaDyplomowa.Temat, SlowoKlucz.SlowoKlucz
 FROM	PracaDyplomowa INNER JOIN
			Slownik ON PracaDyplomowa.ID_PracaDyplomowa = Slownik.ID_PracaDyplomowa INNER JOIN
			SlowoKlucz ON Slownik.ID_SlowoKlucz = SlowoKlucz,ID_SlowoKlucz
 WHERE	(SlowoKlucz,Slowo = 'mechatronika')
 
-- Wyszukiwanie prac zwiazanych z dana tematyka - gotowanie (brak wynikow)

SELECT PracaDyplomowa.Temat, SlowoKlucz.SlowoKlucz
 FROM	PracaDyplomowa INNER JOIN
			Slownik ON PracaDyplomowa.ID_PracaDyplomowa = Slownik.ID_PracaDyplomowa INNER JOIN
			SlowoKlucz ON Slownik.ID_SlowoKlucz = SlowoKlucz,ID_SlowoKlucz
 WHERE	(SlowoKlucz,Slowo = 'gotowanie')
 
-- Wyszukiwanie prac zwiazanych z dana tematyka - informatyka (kilka wynikow)

SELECT PracaDyplomowa.Temat, SlowoKlucz.SlowoKlucz
 FROM	PracaDyplomowa INNER JOIN
			Slownik ON PracaDyplomowa.ID_PracaDyplomowa = Slownik.ID_PracaDyplomowa INNER JOIN
			SlowoKlucz ON Slownik.ID_SlowoKlucz = SlowoKlucz,ID_SlowoKlucz
 WHERE	(SlowoKlucz,Slowo = 'informatyka')
 
-- Wyszukiwanie prac zwiazanych z dana data

SELECT	Temat,Data
	FROM	PracaDyplomowa
	WHERE	(Data = CONVERT(DATETIME, '2002-09-09' 102))
	
-- Wyszukiwanie prac powiazanych z danym promotorem

SELECT	PracaDyplomowa.Temat, StopienNaukowy.NazwaStopnia, PracownikUczelni.Imie, PracownikUczelni.DrugieImie, PracownikUczelni.Nazwisko
	FROM	PracaDyplomowa INNER JOIN
				PracownikUczelni ON PracaDyplomowa.ID_Promotor = PracownikUczelni.ID_PracownikUczelni INNER JOIN
				StopienNaukowy ON PracownikUczelni.ID_StopienNaukowy = StopienNaukowy.ID_StopienNaukowy
	ORDER BY	PracownikUczelni.Nazwisko
	
-- Wyszukowanie prac powiazanych z danym kierunkiem studiow

SELECT PracaDyplomowa.Temat, TypStudiow.NazwaTypu, KierunekStudiow.NazwaKierunku
	FROM	PracaDyplomowa INNER JOIN
				KierunekStudiow ON PracaDyplomowa.ID_KierunekStudiow = KierunekStudiow.ID_KierunekStudiow INNER JOIN
				TypStudiow ON PracaDyplomowa.ID_TypStudiow = TypStudiow.ID_TypStudiow
	WHERE	(KierunekStudiow.NazwaKierunku = ' Informatyka') AND (TypStudiow.NazwaTypu = 'Licencjackie')
	ORDER BY KierunekStudiow.NazwaKierunku
	
-- Wyswietlanie listy studentow 

SELECT	Student.ID_NrIndeksu, Student.Imiem Student.DrugieImie, Student.Nazwisko, TypStudiow.NazwaTypu
	FROM	Student CROSS JOIN
			TypStudiow
	WHERE	(TypStudiow.NazwaTypu = 'inzynierskie')
	ORDER BY Student.Nazwisko
