 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  REPOSITORY     : C:\Users\cdelvingt\Documents\DBL Essentials Training\Orders\Repository\bin\Debug\rpsmain.ism
;                 : C:\Users\cdelvingt\Documents\DBL Essentials Training\Orders\Repository\bin\Debug\rpstext.ism
;                 : Version 11.1.1f
;
;  GENERATED      : 22-JAN-2021, 17:49:24
;                 : Version 11.1.1f
;  EXPORT OPTIONS : [ALL] 
 
 
Structure DETAIL   DBL ISAM
   Description "Order Detail structure"
 
Field OD_NUMBER   Type DECIMAL   Size 6
   Description "Order number"
   Report Just LEFT   Input Just LEFT
 
Field OD_ITEM   Type DECIMAL   Size 4
   Description "Item number"
   Report Just LEFT   Input Just LEFT
 
Field OD_PART   Type ALPHA   Size 10
   Description "Part number"
 
Field OD_QTY   Type DECIMAL   Size 5
   Description "Quantity ordered"
   Report Just LEFT   Input Just LEFT
 
Field OD_UNIT_PRICE   Type DECIMAL   Size 8   Precision 2
   Description "Unit price"
   Report Just LEFT   Input Just LEFT
 
Key ORDER_AND_ITEM   ACCESS   Order ASCENDING   Dups NO
   Description "Order number and item number"
   Segment FIELD   OD_NUMBER  SegType DECIMAL  SegOrder ASCENDING
   Segment FIELD   OD_ITEM  SegType DECIMAL  SegOrder ASCENDING
 
Relation  1   DETAIL ORDER_AND_ITEM   HEADER ORDER_NUMBER
 
Structure HEADER   DBL ISAM
   Description "Order header structure"
 
Field OH_NUMBER   Type DECIMAL   Size 6
   Description "Order description"
   Report Just LEFT   Input Just LEFT
 
Field OH_CUSTOMER   Type ALPHA   Size 8
   Description "Customer account code"
 
Field OH_DATE   Type DECIMAL   Size 8
   Description "Order date"
   Report Just LEFT   Input Just LEFT
 
Field OH_CONTACT   Type ALPHA   Size 20
   Description "Order placed by"
 
Field OH_SALESREP   Type DECIMAL   Size 4
   Description "Sales rep code"
   Report Just LEFT   Input Just LEFT
 
Key ORDER_NUMBER   ACCESS   Order ASCENDING   Dups NO
   Description "Order number"
   Segment FIELD   OH_NUMBER  SegType DECIMAL  SegOrder DESCENDING
 
Relation  1   HEADER ORDER_NUMBER   DETAIL ORDER_AND_ITEM
 
