Spletna knigarna
=================

Seminarska naloga pri predmetu Podatkovne baze 1.

Opis
----------
Lastnik spletne trgovine želi imeti pregled nad inventuro knjig, ki jih lahko dobavi in ali ima te knjige na zalogi. Poleg tega želi z enostavnim uporabniškim vmesnikom dodajati in odstranjevati knjige z inventure. Na drugi strani pa želi kupec na čim enostavnejši način naročiti knjige, ki jih nudi spletna knjigarna. Zaradi novih zakonov je seveda potrebno kupcu izdati tudi račun.

###Tabele v bazi
- tabela Knjige (ID knjige, naslov, avtor, žanr, leto izdaje, format, kratek opis, cena, količina)
- tabela Kupci (ID kupca, ime, priimek, e-mail, naslov, telefon)
- tabela Dobavitelji (ID dobavitelja, ime podjetja, naslov, e-mail, telefon, kaj dobavljajo)
- tabela Zaloga (ID knjige, količina, na zalogi(da/ne))
- tabela Pošiljk (ID pošiljke, ID kupca, ID knjige)
