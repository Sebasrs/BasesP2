USE NationalPark;
GO

BEGIN TRAN;

UPDATE Staff
SET
	StaffName = 'Paco'
WHERE
	IdStaff = 3;

SELECT * FROM Degree;

COMMIT TRAN;
