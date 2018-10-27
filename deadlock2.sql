USE NationalPark;
GO

BEGIN TRAN;

UPDATE Degree
SET
	DegreeDescription = 'Descripcion modificada' 
WHERE
	IdDegree = 3;

SELECT * FROM Staff;

COMMIT TRAN;
