-- Elimina la colonna Anni_Garanzia dalla tabella ModelloAuto
ALTER TABLE ModelloAuto
DROP COLUMN Anni_Garanzia;

-- Modifica della tabella Preventivo per includere gli anni di garanzia
ALTER TABLE Preventivo
ADD Anni_Garanzia smallINT;
