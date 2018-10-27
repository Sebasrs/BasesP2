USE NationalPark;
GO

BEGIN TRAN;

UPDATE Staff
SET
	StaffName = 'Paco'
WHERE
	IdStaff = 3;

UPDATE Species
SET
	ScientificName = 'Animal Editado 2'
WHERE
	IdSpecies = 3;

COMMIT TRAN;