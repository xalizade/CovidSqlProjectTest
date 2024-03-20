--select *
--from CovidDeath
--order by 3,4

--select *
--from CovidVacsiansions
--order by 3,4

--select location, date, total_cases, total_cases, (total_deaths/total_cases)*100 as DeathPersantage
--from CovidDeath
--order by 1,2

--ALTER TABLE CovidDeath alter  COLUMN total_deaths float
--SELECT location, date, total_cases, total_cases,
--    CASE 
--        WHEN total_cases = 0 THEN NULL
--        ELSE (total_deaths / total_cases)*100
--    END AS DeathPersantage
--FROM CovidDeath
--where location like '%azer%'
--order by 1,2


--ALTER TABLE CovidDeath alter  COLUMN population_density float
--SELECT location, date, total_cases, population_density,
--    CASE 
--        WHEN population_density = 0 THEN NULL
--        ELSE (total_cases / population_density)*100
--    END AS DeathPersantage
--FROM CovidDeath
----where location like '%azer%'
--order by 1,2


--select location, max(total_cases) as higest_infection
--from CovidDeath
--group by location
--order by 1,2

--select location, population_density, max(total_cases) as higest_infection,
-- CASE 
--        WHEN population_density = 0 THEN NULL
--        ELSE (total_cases/population_density)*100
--    END  as PercentageOfpopulationInfected
--from CovidDeath
--group by location,population_density,total_cases
--order by PercentageOfpopulationInfected desc


--select continent , max(cast(total_deaths as int)) as TotalDeathCount
 
--From CovidDeath
--where continent is not null
--group by continent	
--order by TotalDeathCount desc

--SELECT location, date, total_cases, total_cases,
--    CASE 
--        WHEN total_cases = 0 THEN NULL
--        ELSE (total_deaths / total_cases)*100
--    END AS DeathPersantage
--FROM CovidDeath
--where continent is not null
--order by 1,2


select *
from CovidDeath dea
join CovidVacsiansions vac
 on dea.location=vac.location 
 and dea.date=vac.date







