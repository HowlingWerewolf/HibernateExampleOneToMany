-- 1. Create "mkyong" user with password: "password"
-- 2. Execute the script below:


--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "MKYONG"."STOCK" 
   ("STOCK_ID" NUMBER, 
	"STOCK_CODE" VARCHAR2(10 BYTE), 
	"STOCK_NAME" VARCHAR2(20 BYTE)
   );
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."STOCK_PK" ON "MKYONG"."STOCK" ("STOCK_ID");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_ID" ON "MKYONG"."STOCK" ("STOCK_CODE");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_NAME" ON "MKYONG"."STOCK" ("STOCK_NAME");
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "UNI_STOCK_NAME" UNIQUE ("STOCK_NAME");
  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "UNI_STOCK_CODE" UNIQUE ("STOCK_CODE");
  ALTER TABLE "MKYONG"."STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("STOCK_ID");
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_CODE" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_ID" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK" MODIFY ("STOCK_NAME" NOT NULL ENABLE);
  
  
  
  --------------------------------------------------------
--  DDL for Sequence STOCK_SEQ
--------------------------------------------------------

  CREATE SEQUENCE  "MKYONG"."STOCK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 ORDER  CYCLE ;

   
--------------------------------------------------------
--  DDL for Table STOCK_DAILY_RECORD
--------------------------------------------------------

  CREATE TABLE "MKYONG"."STOCK_DAILY_RECORD" 
   (	"RECORD_ID" NUMBER, 
	"PRICE_OPEN" FLOAT(126), 
	"PRICE_CLOSE" FLOAT(126), 
	"PRICE_CHANGE" FLOAT(126), 
	"VOLUME" NUMBER, 
	"RECORD_DATE" DATE, 
	"STOCK_ID" NUMBER
   );
--------------------------------------------------------
--  DDL for Index STOCK_DAILY_RECORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."STOCK_DAILY_RECORD_PK" ON "MKYONG"."STOCK_DAILY_RECORD" ("RECORD_ID");
--------------------------------------------------------
--  DDL for Index UNI_STOCK_DAILY_DATE
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKYONG"."UNI_STOCK_DAILY_DATE" ON "MKYONG"."STOCK_DAILY_RECORD" ("RECORD_DATE");
--------------------------------------------------------
--  Constraints for Table STOCK_DAILY_RECORD
--------------------------------------------------------

  ALTER TABLE "MKYONG"."STOCK_DAILY_RECORD" ADD CONSTRAINT "UNI_STOCK_DAILY_DATE" UNIQUE ("RECORD_DATE");
  ALTER TABLE "MKYONG"."STOCK_DAILY_RECORD" ADD CONSTRAINT "STOCK_DAILY_RECORD_PK" PRIMARY KEY ("RECORD_ID");
  ALTER TABLE "MKYONG"."STOCK_DAILY_RECORD" MODIFY ("RECORD_ID" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_DAILY_RECORD" MODIFY ("STOCK_ID" NOT NULL ENABLE);
  ALTER TABLE "MKYONG"."STOCK_DAILY_RECORD" MODIFY ("RECORD_DATE" NOT NULL ENABLE);

   
  --------------------------------------------------------
--  DDL for Sequence STOCK_DAILY_RECORD_SEQ
--------------------------------------------------------

  CREATE SEQUENCE  "MKYONG"."STOCK_DAILY_RECORD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 ORDER  CYCLE ;
