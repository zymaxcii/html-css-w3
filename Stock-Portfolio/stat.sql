-- Database fields
-- STKCODE
-- STKNAME
-- LASTPRICE
-- QTY
-- AVGPRICE
-- COSTAMT
-- MKTAMT
-- PROFITAMT
-- PROFITPERC


SELECT "# of stocks: ", COUNT(*) FROM port_20200228;
SELECT "Total # of shares: ", SUM(QTY) FROM port_20200228;
SELECT "Average price: ", AVG(LASTPRICE) FROM port_20200228;

SELECT "Total amt at cost: ", SUM(COSTAMT) FROM port_20200228;
SELECT "Total amt at market price: ", SUM(MKTAMT) FROM port_20200228;

SELECT "Unrealised Profit & Loss Amt: ", SUM(PROFITAMT) FROM port_20200228;
-- wrong
-- SELECT "Unrealised Profit & Loss %: ", SUM(PROFITPERC) FROM port_20200228;

-- asc or desc
SELECT STKNAME, PROFITPERC FROM port_20200228 WHERE (PROFITPERC <= -30.0) order by profitperc asc;

-- Sorted by absolute amt lost

select "# of winners: ", count(*) from port_20200228 where profitperc >= 0.0;
select "# of losers: ", count(*) from port_20200228 where profitperc <= 0.0;

select "Win Amt: ", sum(profitamt) from port_20200228 where profitperc >= 0.0;
select "Lose Amt: ", sum(profitamt) from port_20200228 where profitperc <= 0.0;


