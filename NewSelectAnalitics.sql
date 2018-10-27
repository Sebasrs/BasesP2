SELECT
	   Count(DataSpecies.IdSpeciesType) AS CountTypeSpecies,
	   AVG(Species.IndividualsPerArea)  AS AVGIndividuals,
	   SUM(DataSpecies.IdDataSpecies)   AS SumIndividualsPerArea,
	   MIN(Species.IndividualsPerArea)  AS MinIndividualsPerArea,
	   dbo.AddOneHundred(90)            AS OwnFuntion
FROM   Species 
       INNER JOIN DataSpecies 
               ON Species.IdDataspecies = DataSpecies.IdDataspecies 
       INNER JOIN SpeciesType 
               ON DataSpecies.IdSpeciestype = SpeciesType.IdSpeciestype
	   INNER JOIN SpeciesByArea 
               ON Species.IdSpecies = SpeciesByArea.IdSpecies
	   INNER JOIN FoodChain 
               ON Species.IdSpecies = FoodChain.IdPrey
WHERE Species.IdSpecies 
		BETWEEN 152 AND 1023
GROUP BY DataSpecies.IdSpeciesType