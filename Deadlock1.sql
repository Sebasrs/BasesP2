USE NationalPark;
GO

BEGIN TRAN;

UPDATE Species
SET
	ScientificName = 'Animal Editado 1'
WHERE
	IdSpecies = 3;

UPDATE Staff
SET
	StaffName = 'Juan'
WHERE
	IdStaff = 3;

COMMIT TRAN;