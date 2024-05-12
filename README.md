# Informacije o Strukturi Baze Podataka Teretane

## Članovi

Tabela "članovi" predstavlja centralnu tabelu sa sljedećim kolonama:

- Član_ID (primarni ključ)
- Trener_ID (strani ključ) - Povezan sa Trener_ID iz tabele "treneri". Svaki član može imati svog trenera, ali više članova može imati istog trenera.
- Ime
- Prezime
- Telefon

## Treneri

Tabela "treneri" sadrži kolone:

- Trener_ID (primarni ključ)
- Ime
- Prezime
- Telefon
- Osoblje_ID (strani ključ) - Povezan sa Osoblje_ID iz tabele "osoblje". Trener može biti dio osoblja teretane, ali neko od osoblja ne mora biti trener.

## Osoblje

Tabela "osoblje" sadrži kolone:

- Osoblje_ID (primarni ključ)
- Ime
- Prezime
- Telefon
- Pozicija

## Oprema

Tabela "oprema" sadrži kolone:

- Oprema_ID (primarni ključ)
- Naziv_opreme
- Količina

## trener_oprema

Tabela "trener_oprema" predstavlja many-to-many vezu između tabela "oprema" i "treneri". Sadrži kolone:

- Trener_ID (strani ključ)
- Oprema_ID (strani ključ)

Ova tabela predstavlja many-to-many vezu između tabela "oprema" i "treneri" jer više trenera može raditi na jednoj opremi, a na e oprema može raditi jedan trener. Ovo je princip specijalizacije trenera za određenu opremu.

## Recenzije

Tabela "recenzije" sadrži kolone:

- Recenzija_ID (primarni ključ)
- Član_ID (strani ključ) - Povezan sa Član_ID iz centralne tabele "članovi". Jedan član može ostaviti više recenzija.
- Datum
- Ocjena
- Komentar

## Rezervacije

Tabela "rezervacije" sadrži kolone:

- Rezervacija_ID (primarni ključ)
- Član_ID (strani ključ) - Povezan sa Član_ID iz centralne tabele "članovi". Jedan član može napraviti više rezervacija.
- Datum

## Članstvos
Tabela "članstvo" sadrži kolone:

- Članstvo_ID
- Član_ID (strani ključ) - Povezan sa Član_ID iz centralne tabele "članovi". Jedan član može uplatiti više članstava.
- Datum_početka
- Datum_završetka
- Tip_članstva
- Cijena