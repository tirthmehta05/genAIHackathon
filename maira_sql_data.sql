create table [dbo].[instrumentData] 
(esmId varchar(20), isin varchar(30), ticker varchar(20), coupon float, maturity date, sector varchar(30), rating varchar(10), product varchar(30), country varchar(20), esgScore int)

SELECT * FROM dbo.instrumentData;


insert into [dbo].[instrumentData] (esmId, isin, ticker, coupon, maturity, sector, rating, product, country, esgScore) 
values ('34556', 'US2023445', 'AAPL', 2.0, '2028-12-12', 'Technology', 'AA', 'High Grade', 'US', 28);

insert into [dbo].[instrumentData] (esmId, isin, ticker, coupon, maturity, sector, rating, product, country, esgScore) 
values ('34557', 'US202349', 'IBM', 4.89, '2028-12-01', 'Technology', 'BB', 'High Grade', 'EU', 12);

insert into [dbo].[instrumentData] (esmId, isin, ticker, coupon, maturity, sector, rating, product, country, esgScore) 
values ('34558', 'US202339', 'RETAIL', 2.0, '2028-12-01', 'RETAIL', 'AAA', 'High Yield', 'US', 98);


create table [dbo].[tradeData]
(srNo int, esmId varchar(20), tradeId varchar(20), client varchar(20), notional int, quote int, price float, traderName varchar(30), book varchar(20), position int, barclaysSide varchar(10),tradeDate date);

SELECT * FROM dbo.tradeData;

insert into [dbo].[tradeData] (srNo, esmId, tradeId, client, notional, quote, price, traderName, book, position, barclaysSide,tradeDate) 
values (1, '34556', '9203', 'Blackrock', 20000, 23, 102, 'Tirth Mehta', 'HGTech', 20400000, 'BUY', '2024-09-10');

insert into [dbo].[tradeData] (srNo, esmId, tradeId, client, notional, quote, price, traderName, book, position, barclaysSide,tradeDate) 
values (2, '34557', '9204', 'PIMCO', 20000, 12, 89, 'Tirth Mehta', 'HGTech', 17800000, 'BUY', '2024-09-10');

insert into [dbo].[tradeData] (srNo, esmId, tradeId, client, notional, quote, price, traderName, book, position, barclaysSide,tradeDate) 
values (3, '34558', '9205', 'Blackrock', 15000, 36, 98, 'Tirth Mehta', 'HGRetail', 14700000, 'BUY', '2024-09-10');

create table [dbo].[esgData]
(esmId varchar(20), overallScore int, environmental varchar(30), social varchar(30), governance varchar(30), comment varchar(5000));

SELECT * FROM dbo.esgData;

insert into [dbo].[esgData] (esmId, overallScore, environmental, social, governance, comment) 
values ('34556', 28, 'AMBER', 'GREEN', 'GREEN', 'Likely to run into Regulatory challenges in EU');

create table [dbo].[traceData] (
    isin varchar(30), ticker varchar(20), coupon float, maturity date, quote int, notional int, [date] date, [time] time);

SELECT * FROM dbo.traceData;

insert into [dbo].[traceData] (isin, ticker, coupon, maturity, quote, notional, [date], [time]) 
values ('US2023445', 'AAPL', 2.0, '2028-12-12', 12, 200000, '2024-09-10', '10:00:00');

insert into [dbo].[traceData] (isin, ticker, coupon, maturity, quote, notional, [date], [time]) 
values ('US2023445', 'AAPL', 2.0, '2028-12-12', 22, 10000, '2024-08-10', '14:00:00');

create table [dbo].[marketData] (
    isin varchar(30), ticker varchar(20), coupon float, maturity date, marketPrice float, [date] date, [time] time);

SELECT * FROM dbo.marketData;

insert into [dbo].[marketData] (isin, ticker, coupon, maturity, marketPrice, [date], [time]) 
values ('US2023445', 'AAPL', 2.0, '2028-12-12', 122, '2024-09-11', '10:00:00');

insert into [dbo].[marketData] (isin, ticker, coupon, maturity, marketPrice, [date], [time]) 
values ('US2023449', 'IBM', 4.89, '2028-12-01', 212, '2024-09-11', '14:00:00');

insert into [dbo].[marketData] (isin, ticker, coupon, maturity, marketPrice, [date], [time]) 
values ('US202339', 'CVS', 4.89, '2028-12-01', 212, '2024-09-11', '14:00:00');

create table [dbo].[clientData] (
    srno int, client varchar(30), restricted varchar(10));

SELECT * FROM dbo.clientData;

insert into [dbo].[clientData] (srno, client, restricted) 
values (1, 'BLACKROCK', 'NO');

insert into [dbo].[clientData] (srno, client, restricted) 
values (1, 'PIMCO', 'NO');

insert into [dbo].[clientData] (srno, client, restricted) 
values (1, 'ZINGOL', 'YES');