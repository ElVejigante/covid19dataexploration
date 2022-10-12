/*
COVID-19 Data Exploration

Source: https://github.com/owid/covid-19-data/tree/master/public/data

Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types
*/

SELECT *
FROM covid_19_data
WHERE continent IS NOT NULL
ORDER BY 3,4

-- Selecting Data

SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM covid_19_data
WHERE continent IS NOT NULL
ORDER BY 1,2


