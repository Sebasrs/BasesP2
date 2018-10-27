USE NationalPark

GO
CREATE PROCEDURE InsertInFourTables
(     @ScientificName varchar(50)
    , @CommonName varchar(50)
    , @CommunityName varchar(50)
    , @HousingCapacity int
)
AS 
BEGIN
    BEGIN TRANSACTION;
    
    BEGIN TRY
    
    INSERT INTO Species
           (ScientificName
           ,CommonName
           ,IdDataSpecies
           ,IndividualsPerArea)
     VALUES
           (@ScientificName
           ,@CommonName
           ,6
           ,24001);

    INSERT INTO DataSpecies
           (IdSpeciesType
           ,RuttingStart
           ,RuttingEnd
           ,Crystal)
     VALUES
           (3
           ,'03-08-2018'
           ,'03-08-2019'
           ,0);

	INSERT INTO Community
           (Name)
    VALUES
           (@CommunityName);
	
	INSERT INTO dbo.Housing
		   (IdNationalPark
		   ,Capacity)
	VALUES 
		   (3
		   ,@HousingCapacity);


    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION
        END
    END CATCH
    COMMIT TRANSACTION 
END;
GO