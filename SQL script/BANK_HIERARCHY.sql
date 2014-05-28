CREATE OR REPLACE VIEW BANK_HIERARCHY AS
SELECT T.BANKID POINT_BANK,
       T.ADMINBANK TAG_BANK,
       (SELECT B.ADMINBANK FROM BAS_BANK B WHERE B.BANKID = T.ADMINBANK) BRANCH_BANK,
       (SELECT H.ADMINBANK FROM BAS_BANK H WHERE H.BANKID =(SELECT B.ADMINBANK FROM BAS_BANK B WHERE B.BANKID = T.ADMINBANK)) HEAD_BANK
  FROM BAS_BANK T;