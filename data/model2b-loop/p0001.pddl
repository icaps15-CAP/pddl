(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL2B-1) (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS ARM - ARM B-0 - BASE PART-A PART-B PART-C - COMPONENT TRAY-A TRAY-B
  TRAY-C - TRAY TABLE1 - TABLE SCREW-MACHINE-A SCREW-MACHINE-C - MACHINE
  ATTATCH-A - JOB SCREW-A - MACHINE-JOB ATTATCH-B - JOB ATTATCH-C - JOB SCREW-C
  - MACHINE-JOB)
 (:INIT (= (TOTAL-COST) 0) (= (LOADING-COST) 1)
  (IS-REACHABLE ARM SCREW-MACHINE-C) (IS-REACHABLE ARM SCREW-MACHINE-A)
  (IS-REACHABLE ARM TABLE-IN) (IS-REACHABLE ARM TABLE-OUT)
  (IS-REACHABLE ARM TABLE1) (IS-REACHABLE ARM TRAY-A) (IS-REACHABLE ARM TRAY-B)
  (IS-REACHABLE ARM TRAY-C) (= (MOVE-COST TABLE1 TABLE1) 1000)
  (= (MOVE-COST TABLE1 SCREW-MACHINE-A) 2) (= (MOVE-COST TABLE1 TRAY-A) 3)
  (= (MOVE-COST TABLE1 TRAY-B) 4) (= (MOVE-COST TABLE1 TRAY-C) 5)
  (= (MOVE-COST TABLE1 SCREW-MACHINE-C) 6) (= (MOVE-COST TABLE1 TABLE-OUT) 7)
  (= (MOVE-COST TABLE1 TABLE-IN) 8) (= (MOVE-COST SCREW-MACHINE-A TABLE1) 8)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-A) 1000)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-A) 2)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-B) 3)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-C) 4)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-C) 5)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-OUT) 6)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-IN) 7) (= (MOVE-COST TRAY-A TABLE1) 7)
  (= (MOVE-COST TRAY-A SCREW-MACHINE-A) 8) (= (MOVE-COST TRAY-A TRAY-A) 1000)
  (= (MOVE-COST TRAY-A TRAY-B) 2) (= (MOVE-COST TRAY-A TRAY-C) 3)
  (= (MOVE-COST TRAY-A SCREW-MACHINE-C) 4) (= (MOVE-COST TRAY-A TABLE-OUT) 5)
  (= (MOVE-COST TRAY-A TABLE-IN) 6) (= (MOVE-COST TRAY-B TABLE1) 6)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-A) 7) (= (MOVE-COST TRAY-B TRAY-A) 8)
  (= (MOVE-COST TRAY-B TRAY-B) 1000) (= (MOVE-COST TRAY-B TRAY-C) 2)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-C) 3) (= (MOVE-COST TRAY-B TABLE-OUT) 4)
  (= (MOVE-COST TRAY-B TABLE-IN) 5) (= (MOVE-COST TRAY-C TABLE1) 5)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-A) 6) (= (MOVE-COST TRAY-C TRAY-A) 7)
  (= (MOVE-COST TRAY-C TRAY-B) 8) (= (MOVE-COST TRAY-C TRAY-C) 1000)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-C) 2) (= (MOVE-COST TRAY-C TABLE-OUT) 3)
  (= (MOVE-COST TRAY-C TABLE-IN) 4) (= (MOVE-COST SCREW-MACHINE-C TABLE1) 4)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-A) 5)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-A) 6)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-B) 7)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-C) 8)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-C) 1000)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-OUT) 2)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-IN) 3) (= (MOVE-COST TABLE-OUT TABLE1) 3)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-A) 4)
  (= (MOVE-COST TABLE-OUT TRAY-A) 5) (= (MOVE-COST TABLE-OUT TRAY-B) 6)
  (= (MOVE-COST TABLE-OUT TRAY-C) 7)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-C) 8)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000) (= (MOVE-COST TABLE-OUT TABLE-IN) 2)
  (= (MOVE-COST TABLE-IN TABLE1) 2) (= (MOVE-COST TABLE-IN SCREW-MACHINE-A) 3)
  (= (MOVE-COST TABLE-IN TRAY-A) 4) (= (MOVE-COST TABLE-IN TRAY-B) 5)
  (= (MOVE-COST TABLE-IN TRAY-C) 6) (= (MOVE-COST TABLE-IN SCREW-MACHINE-C) 7)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 8) (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (CONNECTED CARRY-IN TABLE-IN) (CONNECTED TABLE-OUT CARRY-OUT)
  (= (JOB-COST SCREW-C) 2) (DEPENDS ATTATCH-C SCREW-C)
  (JOB-AVAILABLE-AT SCREW-C SCREW-MACHINE-C) (AT PART-C TRAY-C)
  (USES ATTATCH-C PART-C) (= (JOB-COST ATTATCH-C) 3)
  (DEPENDS ATTATCH-B ATTATCH-C) (JOB-AVAILABLE-AT ATTATCH-C TABLE1)
  (AT PART-B TRAY-B) (USES ATTATCH-B PART-B) (= (JOB-COST ATTATCH-B) 2)
  (DEPENDS SCREW-A ATTATCH-B) (JOB-AVAILABLE-AT ATTATCH-B TABLE1)
  (= (JOB-COST SCREW-A) 2) (DEPENDS ATTATCH-A SCREW-A)
  (JOB-AVAILABLE-AT SCREW-A SCREW-MACHINE-A) (AT PART-A TRAY-A)
  (USES ATTATCH-A PART-A) (= (JOB-COST ATTATCH-A) 2)
  (DEPENDS NOTHING-DONE ATTATCH-A) (JOB-AVAILABLE-AT ATTATCH-A TABLE-IN)
  (= (JOB-COST NOTHING-DONE) 0) (AT B-0 CARRY-IN) (FINISHED NOTHING-DONE B-0)
  (FREE ARM) (AT ARM TABLE-IN) (ARM-PRESENT TABLE-IN))
 (:GOAL (AND (AT B-0 CARRY-OUT) (FINISHED SCREW-C B-0)))
 (:METRIC MINIMIZE (TOTAL-COST)))