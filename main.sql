SELECT *
FROM mahsulotlar
WHERE narxi BETWEEN 1000000 AND 5000000
  AND chegirma > 0.10;


SELECT brend,
       COUNT(*) AS mahsulot_soni,
       AVG(narxi) AS ortacha_narx
FROM mahsulotlar
GROUP BY brend;


SELECT *
FROM mahsulotlar
WHERE ombordagi_soni < 100
  AND holati = 'active'
ORDER BY narxi DESC;


SELECT nomi, narxi
FROM mahsulotlar
WHERE yaratilgan_sana >= '2024-08-01'
  AND yaratilgan_sana < '2024-09-01'
  AND kategoriya_id IN (6, 7);


SELECT nomi,
       narxi,
       chegirma,
       (narxi - (narxi * chegirma)) AS yakuniy_narx
FROM mahsulotlar
ORDER BY narxi DESC
LIMIT 5;


SELECT SUM(ombordagi_soni) AS umumiy_ombor_soni
FROM mahsulotlar
WHERE rangi = 'Qora'
  AND vazni < 1;
