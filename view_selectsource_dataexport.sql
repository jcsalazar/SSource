DROP VIEW IF EXISTS jos_view_export;
CREATE VIEW `jos_view_export` AS
SELECT 
EmployeeFirstName as  EmployeeFirstName,
EmployeeLastName as  EmployeeLastName,
EmployeeID_SSN as EmployeeID_SSN,
Address1 as StreetAddress1,
City as City,
State as State,
Zip as Zip,
'' as EEOfferCoverageCodeAll,
MAX(CASE WHEN Month = 1 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Jan,
MAX(CASE WHEN Month = 2 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Feb,
MAX(CASE WHEN Month = 3 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Mar,
MAX(CASE WHEN Month = 4 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Apr,
MAX(CASE WHEN Month = 5 THEN OfferofCoverageCode END)  as EEOfferCoverageCode_May,
MAX(CASE WHEN Month = 6 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Jun,
MAX(CASE WHEN Month = 7 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Jul,
MAX(CASE WHEN Month = 8 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Aug,
MAX(CASE WHEN Month = 9 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Sep,
MAX(CASE WHEN Month = 10 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Oct,
MAX(CASE WHEN Month = 11 THEN OfferofCoverageCode END) as EEOfferCoverageCode_Nov,
MAX(CASE WHEN Month = 12 THEN OfferofCoverageCode END) as EEOfferCoverageCode_dec,

MAX(CASE WHEN Month = 1 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Jan,
MAX(CASE WHEN Month = 2 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Feb,
MAX(CASE WHEN Month = 3 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Mar,
MAX(CASE WHEN Month = 4 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Apr,
MAX(CASE WHEN Month = 5 THEN MinPremAmtOfferedtoEEatEmployerRate END)  as MinPremAmtOfferedtoEEatEmployerRate_May,
MAX(CASE WHEN Month = 6 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Jun,
MAX(CASE WHEN Month = 7 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Jul,
MAX(CASE WHEN Month = 8 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Aug,
MAX(CASE WHEN Month = 9 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Sep,
MAX(CASE WHEN Month = 10 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Oct,
MAX(CASE WHEN Month = 11 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_Nov,
MAX(CASE WHEN Month = 12 THEN MinPremAmtOfferedtoEEatEmployerRate END) as MinPremAmtOfferedtoEEatEmployerRate_dec


FROM dyi.jos_importdata
group by EmployeeID_SSN
