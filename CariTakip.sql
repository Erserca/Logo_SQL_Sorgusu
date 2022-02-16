--Cari Bakiye ve Cari Kart Özel Kodları 
--Excel içinde, bakiye mutabakat için otomatik mail gönderiminde kullanılabilmesi için mail adreslerini de içerir. 
--İlgili carilere mail ile bildirim yapılabilir.

SELECT 
	CL.CODE AS "KODU",
	CL.DEFINITION_ AS "UNVAN",
	ISNULL((select SUM(CLFLINE.AMOUNT) FROM LG_020_01_CLFLINE CLFLINE WHERE CL.LOGICALREF = CLFLINE.CLIENTREF),0) AS [BAKIYE],
	CL.SPECODE AS "ÖZEL KOD",
	CL.SPECODE2 AS "ÖZEL KOD 2",
	CL.SPECODE3 "ÖZEL KOD 3",
	CL.SPECODE4 AS "ÖZEL KOD 4",
	CL.SPECODE5 AS "ÖZEL KOD 5",
	CL.EMAILADDR AS [MAIL 1]

--Logo'da kullandığınız şirket bilgilerine göre değiştirmeniz gerekmektedir.
FROM LG_001_CLCARD as CL with (nolock)
