--mbaron garancia kete vit
select *
from Produkt p
inner join Blen b
on b.produkti=p.Nr_serial
where year(b.dt_mb_garancia)=2020


--afisho produktet dhe daten e mbarimit te garancise
select p.Titull, b.dt_mb_garancia
from Produkt p
inner join Blen b
on p.Nr_serial=b.produkti

--afisho pagen max
select max(Paga)
from Pozicioni

--afisho punonjesit qe nuk e kane dtl ndermjet 
select *
from Punonjesi
where not year(Ditelindja) between 1992 and 1998

--afisho punonjesit sipa rendit alfabetik
select *
from Punonjesi
order by Emri

--afishoni produktet qe jane rregulluar nga servisi ne 2019
select *
from Servisi
where year(Data_Hyrse)=2019

--gjeni pagen minimale
select min(paga)
from Pozicioni

--rendit punonjesit sipas datelindjes
select *
from Punonjesi
order by Ditelindja


--afisho produktet e rregulluara nga servisi per nderrim ekrani
select *
from Servisi 
where Problemi='nderrim ekrani'

--produktet qe kan fill garancie ndermjet 2018 dhe 2019 

select *
from Produkt P inner join Blen B
on p.Nr_serial=B.produkti
where year(dt_fll_garancia) between 2019 and 2020

--afishoni te gjitha prod qe e kan cmimin me te madh se mesatarja e pergjithshme

select *
from Produkt
where Cmimi>(select AVG(cmimi) from Produkt)

--afisho modeli parametrat dhe cmimin per secili  produkt 

select Modeli, Parametrat, Cmimi
from Produkt P inner join Inventari I
on p.id_inventar=I.id_inventar

--gjeni produktet me te shtrenjta

select *
from Produkt
where cmimi=(select max(cmimi) from Produkt)

--afishoni produktet e kategorise celular qe jane jasht garancise

select *
from Produkt p
inner join Blen b
on b.produkti=p.Nr_serial
where Kategoria='Celular' and year(b.dt_mb_garancia)<2020

--rendit produktet sipas alfabetit

Select *
from Produkt
order by Titull
