(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL3A-64) (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS A1 A2 A3 - ARM B-0 B-1 B-2 B-3 B-4 B-5 B-6 B-7 B-8 B-9 B-10 B-11
  B-12 B-13 B-14 B-15 B-16 B-17 B-18 B-19 B-20 B-21 B-22 B-23 B-24 B-25 B-26
  B-27 B-28 B-29 B-30 B-31 B-32 B-33 B-34 B-35 B-36 B-37 B-38 B-39 B-40 B-41
  B-42 B-43 B-44 B-45 B-46 B-47 B-48 B-49 B-50 B-51 B-52 B-53 B-54 B-55 B-56
  B-57 B-58 B-59 B-60 B-61 B-62 B-63 - BASE P1 P2 P3 - COMPONENT T1 T2 T3 -
  TRAY TB-FOR-P1 TB-FOR-P2 TB-FOR-P3 TB13 TB23 TB12 - TABLE M1 M2 M3 M4 M5 M6 -
  MACHINE J1 - MACHINE-JOB J2 - JOB J3 - MACHINE-JOB J4 - MACHINE-JOB J5 - JOB
  J6 - MACHINE-JOB J7 - JOB J8 - MACHINE-JOB J9 - MACHINE-JOB)
 (:INIT (= (TOTAL-COST) 0) (= (LOADING-COST) 1) (IS-REACHABLE A1 TABLE-IN)
  (IS-REACHABLE A1 T1) (IS-REACHABLE A1 TB-FOR-P1) (IS-REACHABLE A1 TB12)
  (IS-REACHABLE A1 TB13) (IS-REACHABLE A1 M3) (IS-REACHABLE A1 M5)
  (IS-REACHABLE A2 T2) (IS-REACHABLE A2 TB-FOR-P2) (IS-REACHABLE A2 TB12)
  (IS-REACHABLE A2 TB23) (IS-REACHABLE A2 M1) (IS-REACHABLE A2 M4)
  (IS-REACHABLE A3 TABLE-OUT) (IS-REACHABLE A3 T3) (IS-REACHABLE A3 TB-FOR-P3)
  (IS-REACHABLE A3 TB13) (IS-REACHABLE A3 TB23) (IS-REACHABLE A3 M2)
  (IS-REACHABLE A3 M6) (= (MOVE-COST M3 M3) 1000) (= (MOVE-COST M3 M1) 3)
  (= (MOVE-COST M3 T2) 4) (= (MOVE-COST M3 TB-FOR-P2) 5)
  (= (MOVE-COST M3 M4) 6) (= (MOVE-COST M3 TB12) 2) (= (MOVE-COST M3 TB23) 4)
  (= (MOVE-COST M3 M2) 5) (= (MOVE-COST M3 TABLE-OUT) 6)
  (= (MOVE-COST M3 T3) 7) (= (MOVE-COST M3 TB-FOR-P3) 8)
  (= (MOVE-COST M3 M6) 9) (= (MOVE-COST M3 TB13) 3) (= (MOVE-COST M3 T1) 4)
  (= (MOVE-COST M3 M5) 5) (= (MOVE-COST M3 TB-FOR-P1) 6)
  (= (MOVE-COST M3 TABLE-IN) 7) (= (MOVE-COST M1 M3) 12)
  (= (MOVE-COST M1 M1) 1000) (= (MOVE-COST M1 T2) 2)
  (= (MOVE-COST M1 TB-FOR-P2) 3) (= (MOVE-COST M1 M4) 4)
  (= (MOVE-COST M1 TB12) 6) (= (MOVE-COST M1 TB23) 5) (= (MOVE-COST M1 M2) 6)
  (= (MOVE-COST M1 TABLE-OUT) 7) (= (MOVE-COST M1 T3) 8)
  (= (MOVE-COST M1 TB-FOR-P3) 9) (= (MOVE-COST M1 M6) 10)
  (= (MOVE-COST M1 TB13) 7) (= (MOVE-COST M1 T1) 8) (= (MOVE-COST M1 M5) 9)
  (= (MOVE-COST M1 TB-FOR-P1) 10) (= (MOVE-COST M1 TABLE-IN) 11)
  (= (MOVE-COST T2 M3) 11) (= (MOVE-COST T2 M1) 6) (= (MOVE-COST T2 T2) 1000)
  (= (MOVE-COST T2 TB-FOR-P2) 2) (= (MOVE-COST T2 M4) 3)
  (= (MOVE-COST T2 TB12) 5) (= (MOVE-COST T2 TB23) 4) (= (MOVE-COST T2 M2) 5)
  (= (MOVE-COST T2 TABLE-OUT) 6) (= (MOVE-COST T2 T3) 7)
  (= (MOVE-COST T2 TB-FOR-P3) 8) (= (MOVE-COST T2 M6) 9)
  (= (MOVE-COST T2 TB13) 6) (= (MOVE-COST T2 T1) 7) (= (MOVE-COST T2 M5) 8)
  (= (MOVE-COST T2 TB-FOR-P1) 9) (= (MOVE-COST T2 TABLE-IN) 10)
  (= (MOVE-COST TB-FOR-P2 M3) 10) (= (MOVE-COST TB-FOR-P2 M1) 5)
  (= (MOVE-COST TB-FOR-P2 T2) 6) (= (MOVE-COST TB-FOR-P2 TB-FOR-P2) 1000)
  (= (MOVE-COST TB-FOR-P2 M4) 2) (= (MOVE-COST TB-FOR-P2 TB12) 4)
  (= (MOVE-COST TB-FOR-P2 TB23) 3) (= (MOVE-COST TB-FOR-P2 M2) 4)
  (= (MOVE-COST TB-FOR-P2 TABLE-OUT) 5) (= (MOVE-COST TB-FOR-P2 T3) 6)
  (= (MOVE-COST TB-FOR-P2 TB-FOR-P3) 7) (= (MOVE-COST TB-FOR-P2 M6) 8)
  (= (MOVE-COST TB-FOR-P2 TB13) 5) (= (MOVE-COST TB-FOR-P2 T1) 6)
  (= (MOVE-COST TB-FOR-P2 M5) 7) (= (MOVE-COST TB-FOR-P2 TB-FOR-P1) 8)
  (= (MOVE-COST TB-FOR-P2 TABLE-IN) 9) (= (MOVE-COST M4 M3) 9)
  (= (MOVE-COST M4 M1) 4) (= (MOVE-COST M4 T2) 5)
  (= (MOVE-COST M4 TB-FOR-P2) 6) (= (MOVE-COST M4 M4) 1000)
  (= (MOVE-COST M4 TB12) 3) (= (MOVE-COST M4 TB23) 2) (= (MOVE-COST M4 M2) 3)
  (= (MOVE-COST M4 TABLE-OUT) 4) (= (MOVE-COST M4 T3) 5)
  (= (MOVE-COST M4 TB-FOR-P3) 6) (= (MOVE-COST M4 M6) 7)
  (= (MOVE-COST M4 TB13) 4) (= (MOVE-COST M4 T1) 5) (= (MOVE-COST M4 M5) 6)
  (= (MOVE-COST M4 TB-FOR-P1) 7) (= (MOVE-COST M4 TABLE-IN) 8)
  (= (MOVE-COST TB12 M3) 7) (= (MOVE-COST TB12 M1) 2) (= (MOVE-COST TB12 T2) 3)
  (= (MOVE-COST TB12 TB-FOR-P2) 4) (= (MOVE-COST TB12 M4) 5)
  (= (MOVE-COST TB12 TB12) 1000) (= (MOVE-COST TB12 TB23) 3)
  (= (MOVE-COST TB12 M2) 4) (= (MOVE-COST TB12 TABLE-OUT) 5)
  (= (MOVE-COST TB12 T3) 6) (= (MOVE-COST TB12 TB-FOR-P3) 7)
  (= (MOVE-COST TB12 M6) 8) (= (MOVE-COST TB12 TB13) 2)
  (= (MOVE-COST TB12 T1) 3) (= (MOVE-COST TB12 M5) 4)
  (= (MOVE-COST TB12 TB-FOR-P1) 5) (= (MOVE-COST TB12 TABLE-IN) 6)
  (= (MOVE-COST TB23 M3) 8) (= (MOVE-COST TB23 M1) 3) (= (MOVE-COST TB23 T2) 4)
  (= (MOVE-COST TB23 TB-FOR-P2) 5) (= (MOVE-COST TB23 M4) 6)
  (= (MOVE-COST TB23 TB12) 2) (= (MOVE-COST TB23 TB23) 1000)
  (= (MOVE-COST TB23 M2) 2) (= (MOVE-COST TB23 TABLE-OUT) 3)
  (= (MOVE-COST TB23 T3) 4) (= (MOVE-COST TB23 TB-FOR-P3) 5)
  (= (MOVE-COST TB23 M6) 6) (= (MOVE-COST TB23 TB13) 3)
  (= (MOVE-COST TB23 T1) 4) (= (MOVE-COST TB23 M5) 5)
  (= (MOVE-COST TB23 TB-FOR-P1) 6) (= (MOVE-COST TB23 TABLE-IN) 7)
  (= (MOVE-COST M2 M3) 11) (= (MOVE-COST M2 M1) 9) (= (MOVE-COST M2 T2) 10)
  (= (MOVE-COST M2 TB-FOR-P2) 11) (= (MOVE-COST M2 M4) 12)
  (= (MOVE-COST M2 TB12) 8) (= (MOVE-COST M2 TB23) 7)
  (= (MOVE-COST M2 M2) 1000) (= (MOVE-COST M2 TABLE-OUT) 2)
  (= (MOVE-COST M2 T3) 3) (= (MOVE-COST M2 TB-FOR-P3) 4)
  (= (MOVE-COST M2 M6) 5) (= (MOVE-COST M2 TB13) 6) (= (MOVE-COST M2 T1) 7)
  (= (MOVE-COST M2 M5) 8) (= (MOVE-COST M2 TB-FOR-P1) 9)
  (= (MOVE-COST M2 TABLE-IN) 10) (= (MOVE-COST TABLE-OUT M3) 10)
  (= (MOVE-COST TABLE-OUT M1) 8) (= (MOVE-COST TABLE-OUT T2) 9)
  (= (MOVE-COST TABLE-OUT TB-FOR-P2) 10) (= (MOVE-COST TABLE-OUT M4) 11)
  (= (MOVE-COST TABLE-OUT TB12) 7) (= (MOVE-COST TABLE-OUT TB23) 6)
  (= (MOVE-COST TABLE-OUT M2) 7) (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
  (= (MOVE-COST TABLE-OUT T3) 2) (= (MOVE-COST TABLE-OUT TB-FOR-P3) 3)
  (= (MOVE-COST TABLE-OUT M6) 4) (= (MOVE-COST TABLE-OUT TB13) 5)
  (= (MOVE-COST TABLE-OUT T1) 6) (= (MOVE-COST TABLE-OUT M5) 7)
  (= (MOVE-COST TABLE-OUT TB-FOR-P1) 8) (= (MOVE-COST TABLE-OUT TABLE-IN) 9)
  (= (MOVE-COST T3 M3) 9) (= (MOVE-COST T3 M1) 7) (= (MOVE-COST T3 T2) 8)
  (= (MOVE-COST T3 TB-FOR-P2) 9) (= (MOVE-COST T3 M4) 10)
  (= (MOVE-COST T3 TB12) 6) (= (MOVE-COST T3 TB23) 5) (= (MOVE-COST T3 M2) 6)
  (= (MOVE-COST T3 TABLE-OUT) 7) (= (MOVE-COST T3 T3) 1000)
  (= (MOVE-COST T3 TB-FOR-P3) 2) (= (MOVE-COST T3 M6) 3)
  (= (MOVE-COST T3 TB13) 4) (= (MOVE-COST T3 T1) 5) (= (MOVE-COST T3 M5) 6)
  (= (MOVE-COST T3 TB-FOR-P1) 7) (= (MOVE-COST T3 TABLE-IN) 8)
  (= (MOVE-COST TB-FOR-P3 M3) 8) (= (MOVE-COST TB-FOR-P3 M1) 6)
  (= (MOVE-COST TB-FOR-P3 T2) 7) (= (MOVE-COST TB-FOR-P3 TB-FOR-P2) 8)
  (= (MOVE-COST TB-FOR-P3 M4) 9) (= (MOVE-COST TB-FOR-P3 TB12) 5)
  (= (MOVE-COST TB-FOR-P3 TB23) 4) (= (MOVE-COST TB-FOR-P3 M2) 5)
  (= (MOVE-COST TB-FOR-P3 TABLE-OUT) 6) (= (MOVE-COST TB-FOR-P3 T3) 7)
  (= (MOVE-COST TB-FOR-P3 TB-FOR-P3) 1000) (= (MOVE-COST TB-FOR-P3 M6) 2)
  (= (MOVE-COST TB-FOR-P3 TB13) 3) (= (MOVE-COST TB-FOR-P3 T1) 4)
  (= (MOVE-COST TB-FOR-P3 M5) 5) (= (MOVE-COST TB-FOR-P3 TB-FOR-P1) 6)
  (= (MOVE-COST TB-FOR-P3 TABLE-IN) 7) (= (MOVE-COST M6 M3) 7)
  (= (MOVE-COST M6 M1) 5) (= (MOVE-COST M6 T2) 6)
  (= (MOVE-COST M6 TB-FOR-P2) 7) (= (MOVE-COST M6 M4) 8)
  (= (MOVE-COST M6 TB12) 4) (= (MOVE-COST M6 TB23) 3) (= (MOVE-COST M6 M2) 4)
  (= (MOVE-COST M6 TABLE-OUT) 5) (= (MOVE-COST M6 T3) 6)
  (= (MOVE-COST M6 TB-FOR-P3) 7) (= (MOVE-COST M6 M6) 1000)
  (= (MOVE-COST M6 TB13) 2) (= (MOVE-COST M6 T1) 3) (= (MOVE-COST M6 M5) 4)
  (= (MOVE-COST M6 TB-FOR-P1) 5) (= (MOVE-COST M6 TABLE-IN) 6)
  (= (MOVE-COST TB13 M3) 6) (= (MOVE-COST TB13 M1) 4) (= (MOVE-COST TB13 T2) 5)
  (= (MOVE-COST TB13 TB-FOR-P2) 6) (= (MOVE-COST TB13 M4) 7)
  (= (MOVE-COST TB13 TB12) 3) (= (MOVE-COST TB13 TB23) 2)
  (= (MOVE-COST TB13 M2) 3) (= (MOVE-COST TB13 TABLE-OUT) 4)
  (= (MOVE-COST TB13 T3) 5) (= (MOVE-COST TB13 TB-FOR-P3) 6)
  (= (MOVE-COST TB13 M6) 7) (= (MOVE-COST TB13 TB13) 1000)
  (= (MOVE-COST TB13 T1) 2) (= (MOVE-COST TB13 M5) 3)
  (= (MOVE-COST TB13 TB-FOR-P1) 4) (= (MOVE-COST TB13 TABLE-IN) 5)
  (= (MOVE-COST T1 M3) 5) (= (MOVE-COST T1 M1) 7) (= (MOVE-COST T1 T2) 8)
  (= (MOVE-COST T1 TB-FOR-P2) 9) (= (MOVE-COST T1 M4) 10)
  (= (MOVE-COST T1 TB12) 6) (= (MOVE-COST T1 TB23) 8) (= (MOVE-COST T1 M2) 9)
  (= (MOVE-COST T1 TABLE-OUT) 10) (= (MOVE-COST T1 T3) 11)
  (= (MOVE-COST T1 TB-FOR-P3) 12) (= (MOVE-COST T1 M6) 13)
  (= (MOVE-COST T1 TB13) 7) (= (MOVE-COST T1 T1) 1000) (= (MOVE-COST T1 M5) 2)
  (= (MOVE-COST T1 TB-FOR-P1) 3) (= (MOVE-COST T1 TABLE-IN) 4)
  (= (MOVE-COST M5 M3) 4) (= (MOVE-COST M5 M1) 6) (= (MOVE-COST M5 T2) 7)
  (= (MOVE-COST M5 TB-FOR-P2) 8) (= (MOVE-COST M5 M4) 9)
  (= (MOVE-COST M5 TB12) 5) (= (MOVE-COST M5 TB23) 7) (= (MOVE-COST M5 M2) 8)
  (= (MOVE-COST M5 TABLE-OUT) 9) (= (MOVE-COST M5 T3) 10)
  (= (MOVE-COST M5 TB-FOR-P3) 11) (= (MOVE-COST M5 M6) 12)
  (= (MOVE-COST M5 TB13) 6) (= (MOVE-COST M5 T1) 7) (= (MOVE-COST M5 M5) 1000)
  (= (MOVE-COST M5 TB-FOR-P1) 2) (= (MOVE-COST M5 TABLE-IN) 3)
  (= (MOVE-COST TB-FOR-P1 M3) 3) (= (MOVE-COST TB-FOR-P1 M1) 5)
  (= (MOVE-COST TB-FOR-P1 T2) 6) (= (MOVE-COST TB-FOR-P1 TB-FOR-P2) 7)
  (= (MOVE-COST TB-FOR-P1 M4) 8) (= (MOVE-COST TB-FOR-P1 TB12) 4)
  (= (MOVE-COST TB-FOR-P1 TB23) 6) (= (MOVE-COST TB-FOR-P1 M2) 7)
  (= (MOVE-COST TB-FOR-P1 TABLE-OUT) 8) (= (MOVE-COST TB-FOR-P1 T3) 9)
  (= (MOVE-COST TB-FOR-P1 TB-FOR-P3) 10) (= (MOVE-COST TB-FOR-P1 M6) 11)
  (= (MOVE-COST TB-FOR-P1 TB13) 5) (= (MOVE-COST TB-FOR-P1 T1) 6)
  (= (MOVE-COST TB-FOR-P1 M5) 7) (= (MOVE-COST TB-FOR-P1 TB-FOR-P1) 1000)
  (= (MOVE-COST TB-FOR-P1 TABLE-IN) 2) (= (MOVE-COST TABLE-IN M3) 2)
  (= (MOVE-COST TABLE-IN M1) 4) (= (MOVE-COST TABLE-IN T2) 5)
  (= (MOVE-COST TABLE-IN TB-FOR-P2) 6) (= (MOVE-COST TABLE-IN M4) 7)
  (= (MOVE-COST TABLE-IN TB12) 3) (= (MOVE-COST TABLE-IN TB23) 5)
  (= (MOVE-COST TABLE-IN M2) 6) (= (MOVE-COST TABLE-IN TABLE-OUT) 7)
  (= (MOVE-COST TABLE-IN T3) 8) (= (MOVE-COST TABLE-IN TB-FOR-P3) 9)
  (= (MOVE-COST TABLE-IN M6) 10) (= (MOVE-COST TABLE-IN TB13) 4)
  (= (MOVE-COST TABLE-IN T1) 5) (= (MOVE-COST TABLE-IN M5) 6)
  (= (MOVE-COST TABLE-IN TB-FOR-P1) 7) (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (CONNECTED CARRY-IN TABLE-IN) (CONNECTED TABLE-OUT CARRY-OUT)
  (= (JOB-COST J9) 2) (DEPENDS J8 J9) (JOB-AVAILABLE-AT J9 M6)
  (= (JOB-COST J8) 3) (DEPENDS J7 J8) (JOB-AVAILABLE-AT J8 M5) (AT P3 T3)
  (USES J7 P3) (= (JOB-COST J7) 3) (DEPENDS J6 J7)
  (JOB-AVAILABLE-AT J7 TB-FOR-P3) (= (JOB-COST J6) 3) (DEPENDS J5 J6)
  (JOB-AVAILABLE-AT J6 M4) (AT P2 T2) (USES J5 P2) (= (JOB-COST J5) 2)
  (DEPENDS J4 J5) (JOB-AVAILABLE-AT J5 TB-FOR-P2) (= (JOB-COST J4) 3)
  (DEPENDS J3 J4) (JOB-AVAILABLE-AT J4 M3) (= (JOB-COST J3) 2) (DEPENDS J2 J3)
  (JOB-AVAILABLE-AT J3 M2) (AT P1 T1) (USES J2 P1) (= (JOB-COST J2) 2)
  (DEPENDS J1 J2) (JOB-AVAILABLE-AT J2 TB-FOR-P1) (= (JOB-COST J1) 2)
  (DEPENDS NOTHING-DONE J1) (JOB-AVAILABLE-AT J1 M1)
  (= (JOB-COST NOTHING-DONE) 0) (AT B-0 CARRY-IN) (FINISHED NOTHING-DONE B-0)
  (AT B-1 CARRY-IN) (FINISHED NOTHING-DONE B-1) (AT B-2 CARRY-IN)
  (FINISHED NOTHING-DONE B-2) (AT B-3 CARRY-IN) (FINISHED NOTHING-DONE B-3)
  (AT B-4 CARRY-IN) (FINISHED NOTHING-DONE B-4) (AT B-5 CARRY-IN)
  (FINISHED NOTHING-DONE B-5) (AT B-6 CARRY-IN) (FINISHED NOTHING-DONE B-6)
  (AT B-7 CARRY-IN) (FINISHED NOTHING-DONE B-7) (AT B-8 CARRY-IN)
  (FINISHED NOTHING-DONE B-8) (AT B-9 CARRY-IN) (FINISHED NOTHING-DONE B-9)
  (AT B-10 CARRY-IN) (FINISHED NOTHING-DONE B-10) (AT B-11 CARRY-IN)
  (FINISHED NOTHING-DONE B-11) (AT B-12 CARRY-IN) (FINISHED NOTHING-DONE B-12)
  (AT B-13 CARRY-IN) (FINISHED NOTHING-DONE B-13) (AT B-14 CARRY-IN)
  (FINISHED NOTHING-DONE B-14) (AT B-15 CARRY-IN) (FINISHED NOTHING-DONE B-15)
  (AT B-16 CARRY-IN) (FINISHED NOTHING-DONE B-16) (AT B-17 CARRY-IN)
  (FINISHED NOTHING-DONE B-17) (AT B-18 CARRY-IN) (FINISHED NOTHING-DONE B-18)
  (AT B-19 CARRY-IN) (FINISHED NOTHING-DONE B-19) (AT B-20 CARRY-IN)
  (FINISHED NOTHING-DONE B-20) (AT B-21 CARRY-IN) (FINISHED NOTHING-DONE B-21)
  (AT B-22 CARRY-IN) (FINISHED NOTHING-DONE B-22) (AT B-23 CARRY-IN)
  (FINISHED NOTHING-DONE B-23) (AT B-24 CARRY-IN) (FINISHED NOTHING-DONE B-24)
  (AT B-25 CARRY-IN) (FINISHED NOTHING-DONE B-25) (AT B-26 CARRY-IN)
  (FINISHED NOTHING-DONE B-26) (AT B-27 CARRY-IN) (FINISHED NOTHING-DONE B-27)
  (AT B-28 CARRY-IN) (FINISHED NOTHING-DONE B-28) (AT B-29 CARRY-IN)
  (FINISHED NOTHING-DONE B-29) (AT B-30 CARRY-IN) (FINISHED NOTHING-DONE B-30)
  (AT B-31 CARRY-IN) (FINISHED NOTHING-DONE B-31) (AT B-32 CARRY-IN)
  (FINISHED NOTHING-DONE B-32) (AT B-33 CARRY-IN) (FINISHED NOTHING-DONE B-33)
  (AT B-34 CARRY-IN) (FINISHED NOTHING-DONE B-34) (AT B-35 CARRY-IN)
  (FINISHED NOTHING-DONE B-35) (AT B-36 CARRY-IN) (FINISHED NOTHING-DONE B-36)
  (AT B-37 CARRY-IN) (FINISHED NOTHING-DONE B-37) (AT B-38 CARRY-IN)
  (FINISHED NOTHING-DONE B-38) (AT B-39 CARRY-IN) (FINISHED NOTHING-DONE B-39)
  (AT B-40 CARRY-IN) (FINISHED NOTHING-DONE B-40) (AT B-41 CARRY-IN)
  (FINISHED NOTHING-DONE B-41) (AT B-42 CARRY-IN) (FINISHED NOTHING-DONE B-42)
  (AT B-43 CARRY-IN) (FINISHED NOTHING-DONE B-43) (AT B-44 CARRY-IN)
  (FINISHED NOTHING-DONE B-44) (AT B-45 CARRY-IN) (FINISHED NOTHING-DONE B-45)
  (AT B-46 CARRY-IN) (FINISHED NOTHING-DONE B-46) (AT B-47 CARRY-IN)
  (FINISHED NOTHING-DONE B-47) (AT B-48 CARRY-IN) (FINISHED NOTHING-DONE B-48)
  (AT B-49 CARRY-IN) (FINISHED NOTHING-DONE B-49) (AT B-50 CARRY-IN)
  (FINISHED NOTHING-DONE B-50) (AT B-51 CARRY-IN) (FINISHED NOTHING-DONE B-51)
  (AT B-52 CARRY-IN) (FINISHED NOTHING-DONE B-52) (AT B-53 CARRY-IN)
  (FINISHED NOTHING-DONE B-53) (AT B-54 CARRY-IN) (FINISHED NOTHING-DONE B-54)
  (AT B-55 CARRY-IN) (FINISHED NOTHING-DONE B-55) (AT B-56 CARRY-IN)
  (FINISHED NOTHING-DONE B-56) (AT B-57 CARRY-IN) (FINISHED NOTHING-DONE B-57)
  (AT B-58 CARRY-IN) (FINISHED NOTHING-DONE B-58) (AT B-59 CARRY-IN)
  (FINISHED NOTHING-DONE B-59) (AT B-60 CARRY-IN) (FINISHED NOTHING-DONE B-60)
  (AT B-61 CARRY-IN) (FINISHED NOTHING-DONE B-61) (AT B-62 CARRY-IN)
  (FINISHED NOTHING-DONE B-62) (AT B-63 CARRY-IN) (FINISHED NOTHING-DONE B-63)
  (FREE A1) (AT A1 T1) (ARM-PRESENT T1) (FREE A2) (AT A2 M4) (ARM-PRESENT M4)
  (FREE A3) (AT A3 TB23) (ARM-PRESENT TB23))
 (:GOAL
  (AND (AT B-0 CARRY-OUT) (FINISHED J9 B-0) (AT B-1 CARRY-OUT)
       (FINISHED J9 B-1) (AT B-2 CARRY-OUT) (FINISHED J9 B-2)
       (AT B-3 CARRY-OUT) (FINISHED J9 B-3) (AT B-4 CARRY-OUT)
       (FINISHED J9 B-4) (AT B-5 CARRY-OUT) (FINISHED J9 B-5)
       (AT B-6 CARRY-OUT) (FINISHED J9 B-6) (AT B-7 CARRY-OUT)
       (FINISHED J9 B-7) (AT B-8 CARRY-OUT) (FINISHED J9 B-8)
       (AT B-9 CARRY-OUT) (FINISHED J9 B-9) (AT B-10 CARRY-OUT)
       (FINISHED J9 B-10) (AT B-11 CARRY-OUT) (FINISHED J9 B-11)
       (AT B-12 CARRY-OUT) (FINISHED J9 B-12) (AT B-13 CARRY-OUT)
       (FINISHED J9 B-13) (AT B-14 CARRY-OUT) (FINISHED J9 B-14)
       (AT B-15 CARRY-OUT) (FINISHED J9 B-15) (AT B-16 CARRY-OUT)
       (FINISHED J9 B-16) (AT B-17 CARRY-OUT) (FINISHED J9 B-17)
       (AT B-18 CARRY-OUT) (FINISHED J9 B-18) (AT B-19 CARRY-OUT)
       (FINISHED J9 B-19) (AT B-20 CARRY-OUT) (FINISHED J9 B-20)
       (AT B-21 CARRY-OUT) (FINISHED J9 B-21) (AT B-22 CARRY-OUT)
       (FINISHED J9 B-22) (AT B-23 CARRY-OUT) (FINISHED J9 B-23)
       (AT B-24 CARRY-OUT) (FINISHED J9 B-24) (AT B-25 CARRY-OUT)
       (FINISHED J9 B-25) (AT B-26 CARRY-OUT) (FINISHED J9 B-26)
       (AT B-27 CARRY-OUT) (FINISHED J9 B-27) (AT B-28 CARRY-OUT)
       (FINISHED J9 B-28) (AT B-29 CARRY-OUT) (FINISHED J9 B-29)
       (AT B-30 CARRY-OUT) (FINISHED J9 B-30) (AT B-31 CARRY-OUT)
       (FINISHED J9 B-31) (AT B-32 CARRY-OUT) (FINISHED J9 B-32)
       (AT B-33 CARRY-OUT) (FINISHED J9 B-33) (AT B-34 CARRY-OUT)
       (FINISHED J9 B-34) (AT B-35 CARRY-OUT) (FINISHED J9 B-35)
       (AT B-36 CARRY-OUT) (FINISHED J9 B-36) (AT B-37 CARRY-OUT)
       (FINISHED J9 B-37) (AT B-38 CARRY-OUT) (FINISHED J9 B-38)
       (AT B-39 CARRY-OUT) (FINISHED J9 B-39) (AT B-40 CARRY-OUT)
       (FINISHED J9 B-40) (AT B-41 CARRY-OUT) (FINISHED J9 B-41)
       (AT B-42 CARRY-OUT) (FINISHED J9 B-42) (AT B-43 CARRY-OUT)
       (FINISHED J9 B-43) (AT B-44 CARRY-OUT) (FINISHED J9 B-44)
       (AT B-45 CARRY-OUT) (FINISHED J9 B-45) (AT B-46 CARRY-OUT)
       (FINISHED J9 B-46) (AT B-47 CARRY-OUT) (FINISHED J9 B-47)
       (AT B-48 CARRY-OUT) (FINISHED J9 B-48) (AT B-49 CARRY-OUT)
       (FINISHED J9 B-49) (AT B-50 CARRY-OUT) (FINISHED J9 B-50)
       (AT B-51 CARRY-OUT) (FINISHED J9 B-51) (AT B-52 CARRY-OUT)
       (FINISHED J9 B-52) (AT B-53 CARRY-OUT) (FINISHED J9 B-53)
       (AT B-54 CARRY-OUT) (FINISHED J9 B-54) (AT B-55 CARRY-OUT)
       (FINISHED J9 B-55) (AT B-56 CARRY-OUT) (FINISHED J9 B-56)
       (AT B-57 CARRY-OUT) (FINISHED J9 B-57) (AT B-58 CARRY-OUT)
       (FINISHED J9 B-58) (AT B-59 CARRY-OUT) (FINISHED J9 B-59)
       (AT B-60 CARRY-OUT) (FINISHED J9 B-60) (AT B-61 CARRY-OUT)
       (FINISHED J9 B-61) (AT B-62 CARRY-OUT) (FINISHED J9 B-62)
       (AT B-63 CARRY-OUT) (FINISHED J9 B-63)))
 (:METRIC MINIMIZE (TOTAL-COST)))