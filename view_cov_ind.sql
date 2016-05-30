DROP VIEW IF EXISTS jos_view_cov_ind;
CREATE VIEW `jos_view_cov_ind` AS
SELECT 
EmployeeID_SSN as EmployeeID_SSN_Others,
Relationship as Relationship_Others,

-- Part3 Covered Ind. All Others 
CASE WHEN CoveredIndividualID_SSN <> EmployeeID_SSN THEN CONCAT(CoveredFirstName, ' ', CoveredLastName) END  as  NameCovInd_Others,
CASE WHEN CoveredIndividualID_SSN <> EmployeeID_SSN THEN CoveredIndividualID_SSN END as CoveredIndividualID_SSN_Others,
CASE WHEN CoveredIndividualID_SSN <> EmployeeID_SSN THEN DateofBirth END as DateofBirth_Others,
CASE WHEN CoveredIndividualID_SSN <> EmployeeID_SSN  THEN Month END as MonthOthers,
CASE WHEN CoveredIndividualID_SSN <> EmployeeID_SSN  THEN OfferofCoverageCode END as EEOfferCoverageCode_Others

FROM dyi.jos_importdata
WHERE CoveredIndividualID_SSN is not null or CoveredIndividualID_SSN <> ''

