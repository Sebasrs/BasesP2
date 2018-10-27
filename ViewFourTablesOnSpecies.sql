CREATE VIEW  ViewFourTablesOnSpecies
AS
SELECT Species.IdSpecies, 
       Species.ScientificName, 
       Species.CommonName, 
       DataSpecies.IdSpeciesType, 
       DataSpecies.RuttingStart, 
       DataSpecies.RuttingEnd, 
       DataSpecies.Crystal, 
       SpeciesType.SpeciesType, 
       Species.IndividualsPerArea,
	   SpeciesByArea.IdArea 

FROM   Species 
       INNER JOIN DataSpecies 
               ON Species.IdDataspecies = DataSpecies.IdDataspecies 
       INNER JOIN SpeciesType 
               ON DataSpecies.IdSpeciestype = SpeciesType.IdSpeciestype
       INNER JOIN SpeciesByArea 
               ON SpeciesByArea.IdSpecies = Species.IdSpecies
