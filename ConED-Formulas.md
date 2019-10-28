# Continuing Eduction & Workforce Development Formulas

> Double click inside the code blocks below to select the entire formula, then Copy/Paste into the appropriate Excel column.

### Long Description Duplicate (Column E, row 2):
    =IF(ISBLANK(A2),"",IF(D2=D1,"<"&LEFT(A2,2)&"><offering aid:pstyle=""times"">"&S2&", "&T2&", "&U2&", "&K2&"" &CHAR(13)&IF(OR(L2="Lower Level",L2="Webinar"),L2,"RM "&L2)&", "&M2&", "&N2&CHAR(13)&"<fees aid:pstyle=""fees"">Fees: Course: "&IF(OR(O2="FREE",O2="Waived"),O2,DOLLAR(O2,0))&""&V2&"</fees></offering></"&LEFT(A2,2)&">",""))

### Days of the Week (Column S, row 1):

    =UPPER(IF(ISBLANK(F1),"",IF(F1="M,T,W,Th,F,S","M-S",IF(F1="M,T,W,Th,F","M-F",IF(F1="M,T,W,Th","M-Th",IF(F1="F,S,Su","F-Su",F1))))))

### Start/End Dates (Column T, row 1):
    =IF(AND(ISBLANK(G1),(ISBLANK(H1))),"",IF(G1=H1,TEXT(G1,"m/d"),TEXT(G1,"m/d-")&TEXT(H1,"m/d")))

### Start/End Times (Column U, row 1):
    =IF(AND(ISBLANK(I1),(ISBLANK(J1))),"",TEXT(I1,"h:mm am/pm")&" - "&TEXT(J1,"h:mm am/pm"))

### Course Fees (Column V, row 1):
    =IF(ISBLANK(P1),"",", Supply/Lab: "&DOLLAR(P1,0)&"")&IF(ISBLANK(Q1),"",", Ins: "&DOLLAR(Q1,2)&"")&IF(ISBLANK(R1),"",", Tech: "&DOLLAR(R1,0)&"")

### New (Column W, row 1):
    =IF(B1="","","<new>"&UPPER(B1)&"</new>")

### Concatenate String (Column X, row 1):
    =IF(AND(ISBLANK(A1),(ISBLANK(D1))),"<heading aid:pstyle=""program heading"">"&C1&"</heading>"&CHAR(13),IF(AND(ISBLANK(C1),(ISBLANK(D1))),"<"&LEFT(A1,2)&"><offering aid:pstyle=""times"">"&S1&", "&T1&", "&U1&", "&K1&"" &CHAR(13)&IF(OR(L1="Lower Level",L1="Webinar"),L1,"RM "&L1)&", "&M1&", "&N1&CHAR(13)&"<fees aid:pstyle=""fees"">Fees: Course: "&IF(OR(O1="FREE",O1="Waived"),O1,DOLLAR(O1,0))&""&V1&"</fees></offering></"&LEFT(A1,2)&">",IF(AND(E1<>""),E1,"<"&LEFT(A1,2)&"><title aid:pstyle=""course name"">"&C1&"</title>"&W1&"<description aid:pstyle=""description"">"&D1&"</description><offering aid:pstyle=""times"">"&S1&", "&T1&", "&U1&", "&K1&"" &CHAR(13)&IF(OR(L1="Lower Level",L1="Webinar"),L1,"RM "&L1)&", "&M1&", "&N1&CHAR(13)&"<fees aid:pstyle=""fees"">Fees: Course: "&IF(OR(O1="FREE",O1="Waived"),O1,DOLLAR(O1,2))&""&V1&"</fees></offering></"&LEFT(A1,2)&">")))
