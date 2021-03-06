CREATE MATERIALIZED VIEW MV_WF_FORWARDDEALS
REFRESH FORCE ON COMMIT
AS
SELECT FORWARDDEALS_ID,
       BANK_ID,
       INPUTBANK_ID,
       MASTERBANK_ID,
       TELLER_ID,
       MASTERTELLER_ID,
       SUBTELLER_ID,
       CUSTOMER_ID,
	   SETTLEAMOUNT,
       CLOSEALLOCATION,
       BREACHALLOCATION,
       DURATIONALLOCATION,
       ROLLBACKALLOCATION,
       ROLLOVERALLOCATION,
       LASTROLLOVERALLOCATION,
       CLEARALLOCATION,
       PROFIT,
	   SETTLEPROFIT,
	   CHECK_ID,
	   AUDIT_ID,
	   ACCREDIT_ID,
	   MARGIN_ID,
	   DELIVERY_ID,
	   SOURCENO
  FROM FX_FORWARDDEALS;