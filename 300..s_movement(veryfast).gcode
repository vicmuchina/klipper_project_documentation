; =====================================================
; HIGH-SPEED PRINTER MOVEMENT TEST (300mm/s)
; For CoreXY printer with 330x365mm bed
; Test Duration: Approximately 6-10 minutes
; =====================================================

; Display test start message
M117 Starting HIGH-SPEED Movement Test...

; =====================================================
; INITIALIZATION
; =====================================================
G21                          ; Set units to millimeters
G90                          ; Absolute positioning
M83                          ; Relative extruder mode
G28                          ; Home all axes
M117 Homing Complete

; Move to safe starting position
G1 Z10 F600                  ; Lift Z to safe height (10mm/s)
G1 X165 Y182 F18000          ; Move to bed center (300mm/s)
G4 P2000                     ; Pause 2 seconds

; =====================================================
; TEST 1: BASIC AXIS MOVEMENT (HIGH SPEED)
; =====================================================
M117 Test 1: Basic Axis Movement - 300mm/s

; X-axis test
M117 Testing X-axis at 300mm/s...
G1 X50 F18000                ; Move to X minimum (300mm/s)
G4 P1000                     ; Pause 1 second
G1 X280 F18000               ; Move to X maximum (300mm/s)
G4 P1000
G1 X165 F18000               ; Return to center (300mm/s)
G4 P1000

; Y-axis test
M117 Testing Y-axis at 300mm/s...
G1 Y50 F18000                ; Move to Y minimum (300mm/s)
G4 P1000
G1 Y315 F18000               ; Move to Y maximum (300mm/s)
G4 P1000
G1 Y182 F18000               ; Return to center (300mm/s)
G4 P1000

; Z-axis test (slower for safety)
M117 Testing Z-axis...
G1 Z5 F600                   ; Lower Z (10mm/s)
G4 P1000
G1 Z30 F900                  ; Raise Z (15mm/s)
G4 P1000
G1 Z10 F600                  ; Return to test height (10mm/s)
G4 P1000

; =====================================================
; TEST 2: HIGH-SPEED DIAGONAL MOVEMENTS
; =====================================================
M117 Test 2: High-Speed Diagonals - 300mm/s

G1 X50 Y50 F18000            ; Bottom-left corner (300mm/s)
G4 P1000
G1 X280 Y315 F18000          ; Top-right corner (300mm/s)
G4 P1000
G1 X280 Y50 F18000           ; Bottom-right corner (300mm/s)
G4 P1000
G1 X50 Y315 F18000           ; Top-left corner (300mm/s)
G4 P1000
G1 X165 Y182 F18000          ; Return to center (300mm/s)
G4 P2000

; =====================================================
; TEST 3: HIGH-SPEED RECTANGLE PATTERN
; =====================================================
M117 Test 3: High-Speed Rectangles - 300mm/s

; Large rectangle (200x150mm) at 300mm/s
G1 X65 Y107 F18000           ; Start position (300mm/s)
G1 X265 Y107 F18000          ; Bottom edge (300mm/s)
G1 X265 Y257 F18000          ; Right edge (300mm/s)
G1 X65 Y257 F18000           ; Top edge (300mm/s)
G1 X65 Y107 F18000           ; Left edge (300mm/s)
G4 P1000

; Medium rectangle (120x100mm) at 300mm/s
G1 X105 Y132 F18000          ; Start position (300mm/s)
G1 X225 Y132 F18000          ; Bottom edge (300mm/s)
G1 X225 Y232 F18000          ; Right edge (300mm/s)
G1 X105 Y232 F18000          ; Top edge (300mm/s)
G1 X105 Y132 F18000          ; Left edge (300mm/s)
G4 P1000

; Small rectangle (60x50mm) at high speed
G1 X135 Y157 F18000          ; Start position (300mm/s)
G1 X195 Y157 F18000          ; Bottom edge (300mm/s)
G1 X195 Y207 F18000          ; Right edge (300mm/s)
G1 X135 Y207 F18000          ; Top edge (300mm/s)
G1 X135 Y157 F18000          ; Left edge (300mm/s)
G4 P2000

; =====================================================
; TEST 4: HIGH-SPEED CIRCULAR MOVEMENT
; =====================================================
M117 Test 4: High-Speed Circular - 300mm/s

G1 X165 Y182 F18000          ; Center position (300mm/s)
; Circle with 50mm radius at 300mm/s (octagon approximation)
G1 X215 Y182 F18000          ; 0° (300mm/s)
G1 X200.4 Y217.4 F18000      ; 45° (300mm/s)
G1 X165 Y232 F18000          ; 90° (300mm/s)
G1 X129.6 Y217.4 F18000      ; 135° (300mm/s)
G1 X115 Y182 F18000          ; 180° (300mm/s)
G1 X129.6 Y146.6 F18000      ; 225° (300mm/s)
G1 X165 Y132 F18000          ; 270° (300mm/s)
G1 X200.4 Y146.6 F18000      ; 315° (300mm/s)
G1 X215 Y182 F18000          ; 360° (300mm/s)
G4 P2000

; =====================================================
; TEST 5: SPEED VARIATION TEST (UP TO 350mm/s)
; =====================================================
M117 Test 5: Speed Variation Test

G1 X100 Y150 F18000          ; Start position (300mm/s)

; Speed test - horizontal lines at different speeds
G1 X230 Y150 F6000           ; 100mm/s (reference speed)
G1 X100 Y160 F9000           ; 150mm/s
G1 X230 Y170 F12000          ; 200mm/s
G1 X100 Y180 F15000          ; 250mm/s
G1 X230 Y190 F18000          ; 300mm/s (maximum test)
G1 X100 Y200 F21000          ; 350mm/s (stress test)
G4 P2000

; =====================================================
; TEST 6: HIGH-SPEED PRECISION MOVEMENT
; =====================================================
M117 Test 6: High-Speed Precision

G1 X165 Y182 F18000          ; Center position (300mm/s)
; Small precise movements at high speed
G1 X170 Y182 F9000           ; +5mm X (150mm/s)
G1 X170 Y187 F9000           ; +5mm Y (150mm/s)
G1 X165 Y187 F9000           ; -5mm X (150mm/s)
G1 X165 Y182 F9000           ; -5mm Y (150mm/s)

; Micro movements at moderate speed
G1 X167 Y182 F4500           ; +2mm X (75mm/s)
G1 X167 Y184 F4500           ; +2mm Y (75mm/s)
G1 X165 Y184 F4500           ; -2mm X (75mm/s)
G1 X165 Y182 F4500           ; -2mm Y (75mm/s)
G4 P2000

; =====================================================
; TEST 7: Z-AXIS WITH XY HIGH-SPEED COORDINATION
; =====================================================
M117 Test 7: Z-Axis + High-Speed XY

; Z-axis movement pattern (Z stays slower for safety)
G1 Z5 F600                   ; Lower (10mm/s)
G4 P1000
G1 Z15 F900                  ; Raise (15mm/s)
G4 P1000
G1 Z8 F450                   ; Precision move (7.5mm/s)
G4 P1000
G1 Z12 F1200                 ; Faster move (20mm/s)
G4 P1000
G1 Z10 F600                  ; Return to test height (10mm/s)

; Combined high-speed XY with Z changes
G1 X100 Y100 Z8 F18000       ; High-speed move with Z change
G1 X230 Y100 Z12 F18000      ; High-speed move with Z change
G1 X230 Y264 Z8 F18000       ; High-speed move with Z change
G1 X100 Y264 Z12 F18000      ; High-speed move with Z change
G1 X165 Y182 Z10 F18000      ; Return to center (300mm/s)
G4 P2000

; =====================================================
; TEST 8: HIGH-SPEED COREXY SPECIFIC MOVEMENTS
; =====================================================
M117 Test 8: High-Speed CoreXY Test

; Test motor A high-speed movement (X+Y simultaneous)
G1 X100 Y100 F18000          ; Start position (300mm/s)
G1 X150 Y150 F18000          ; Motors same direction (300mm/s)
G1 X200 Y200 F18000          ; Continue diagonal (300mm/s)
G1 X150 Y150 F18000          ; Return (300mm/s)
G1 X100 Y100 F18000          ; Back to start (300mm/s)
G4 P1000

; Test motor B high-speed movement (X-Y opposite)
G1 X200 Y100 F18000          ; Start position (300mm/s)
G1 X150 Y150 F18000          ; Motors opposite (300mm/s)
G1 X100 Y200 F18000          ; Continue opposite diagonal (300mm/s)
G1 X150 Y150 F18000          ; Return (300mm/s)
G1 X200 Y100 F18000          ; Back to start (300mm/s)
G4 P2000

; =====================================================
; TEST 9: HIGH-SPEED VIBRATION TEST
; =====================================================
M117 Test 9: High-Speed Vibration Test

G1 X100 Y182 F18000          ; Start position (300mm/s)
; Rapid high-speed direction changes
G1 X200 Y182 F21000          ; 350mm/s
G1 X100 Y182 F21000          ; 350mm/s
G1 X200 Y182 F21000          ; 350mm/s
G1 X100 Y182 F21000          ; 350mm/s
G1 X200 Y182 F21000          ; 350mm/s
G4 P1000

; Y-axis rapid high-speed changes
G1 X165 Y100 F21000          ; 350mm/s
G1 X165 Y250 F21000          ; 350mm/s
G1 X165 Y100 F21000          ; 350mm/s
G1 X165 Y250 F21000          ; 350mm/s
G1 X165 Y100 F21000          ; 350mm/s
G1 X165 Y182 F18000          ; Return to center (300mm/s)
G4 P2000

; =====================================================
; TEST 10: HIGH-SPEED ACCELERATION STRESS TEST
; =====================================================
M117 Test 10: High-Speed Acceleration

; Test with maximum acceleration
M204 S6000                   ; High acceleration for stress test
G1 X100 Y100 F18000          ; 300mm/s with high accel
G1 X230 Y264 F18000          ; 300mm/s diagonal
G4 P1000

M204 S7000                   ; Very high acceleration
G1 X100 Y264 F21000          ; 350mm/s
G1 X230 Y100 F21000          ; 350mm/s
G4 P1000

M204 S3000                   ; Return to original acceleration
G1 X165 Y182 F18000          ; Return to center (300mm/s)
G4 P2000

; =====================================================
; TEST 11: EXTREME SPEED PATTERN TEST
; =====================================================
M117 Test 11: Extreme Speed Pattern

; Star pattern at maximum speeds
G1 X165 Y182 F18000          ; Center (300mm/s)
G1 X165 Y100 F21000          ; Top point (350mm/s)
G1 X220 Y250 F21000          ; Bottom right (350mm/s)
G1 X110 Y150 F21000          ; Mid left (350mm/s)
G1 X220 Y150 F21000          ; Mid right (350mm/s)
G1 X110 Y250 F21000          ; Bottom left (350mm/s)
G1 X165 Y100 F21000          ; Back to top (350mm/s)
G1 X165 Y182 F18000          ; Return to center (300mm/s)
G4 P2000

; =====================================================
; FINAL HIGH-SPEED POSITIONING
; =====================================================
M117 High-Speed Test Complete - Parking

; High-speed park sequence
G1 X10 Y10 F18000            ; Park position at 300mm/s
G1 Z50 F900                  ; Raise Z for safety (15mm/s)
G4 P2000

; Display completion message
M117 HIGH-SPEED Movement Test Complete!

; Optional: Disable motors after test
; M84                        ; Uncomment to disable motors

; End of high-speed test
M117 High-Speed Test Finished!

; =====================================================
; HIGH-SPEED TEST COMPLETION SUMMARY
; =====================================================
; Tests performed at 300mm/s base speed:
; 1. Basic axis movement (300mm/s)
; 2. High-speed diagonal movements (300mm/s)
; 3. High-speed rectangle patterns (300mm/s)
; 4. High-speed circular movement (300mm/s)
; 5. Speed variation (100-350mm/s range)
; 6. High-speed precision movements
; 7. Z-axis coordination with high-speed XY
; 8. High-speed CoreXY specific tests
; 9. High-speed vibration testing (350mm/s)
; 10. Acceleration stress testing (350mm/s)
; 11. Extreme speed pattern test (350mm/s)
;
; Total test time: ~6-10 minutes (much faster!)
; Maximum test speed: 350mm/s (21000 mm/min)
; Base test speed: 300mm/s (18000 mm/min)
; =====================================================