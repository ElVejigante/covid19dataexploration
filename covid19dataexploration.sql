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

-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract COVID in your country

SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
FROM covid_19_data
WHERE Location like '%states%'
AND continent IS NOT NULL
ORDER BY 1,2


