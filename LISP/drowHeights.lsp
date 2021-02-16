;;; it draws vertical lines of defined heights from base level and multiplies them by 2 for scale 1:500
(setq listHeights (list 76.64 81.59 71.4 63.3 72.62 80.29 80.3 81.96 "NA" "NA" "NA" 81.84 81.95 83.34 82.07 81.27 79.42 82.44 82.59 73.26 74.76 68.45 "NA" "NA" "NA" "NA" "NA" "NA" 76.16 "NA" 77.85 75.07 72.34 68.22 68.09 75.35 "NA" "NA" "NA" "NA" "NA" 83.87 83.94 85.06 "NA" "NA" "NA" "NA" "NA" "NA" 85.17 84.92 90.27 85.42 85.6 85.34 "NA" 82.59 81.08 "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" 86.64 86.2 86.83 92.72 87.2 86.99 84.53 "NA" "NA" 88.18 88.09 "NA" 88.18 86.64 82.63 75.67 "NA" "NA" "NA" "NA" "NA" "NA" 83.84 82.97 "NA" 76.98 77.92 83.95 84.84 83.7 81.29 "NA" "NA" "NA" 65.07 57.08 46.31 31.33 30.66 "NA" "NA" 63.75 72.03 84.26 79.08 87.14 82.83 "NA" "NA" 72.23 73.96 84.7 89.53 "NA" "NA" "NA" "NA" "NA" "NA" 88.23 89.59 89.61 88.81 94.66 88.93 88.45 "NA" "NA" "NA" "NA" "NA" "NA" 85.32 "NA" "NA" "NA" "NA" "NA" "NA" 62.06 72.62 "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" 88.7 88.81 "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" 92.32 91.64 "NA" "NA" "NA" "NA" "NA" "NA" 92.2 89.67 89.62 95.9 89.45 86.55 83.21 79.81 "NA" "NA" 65.64 64.27 "NA" 70.11 75.89 75.35 69.74 67.93 65.73 61.13 42.74 20.23 24.39 "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" 85.21 80.82 69.42 62.9 40.43 26.41 "NA" "NA" "NA" 25.16 25.43 25.79 21.89 21.43 21.22 21.05 12.82 37.8 53.53 68.52 59.67 57.09 "NA" 55.01 61.37 65.01 74 71.35 71.74 "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" 99.39 91.57 92 "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" "NA" 89.89 88.42 92.14 81.35 89.23 91.24 91.5 "NA" "NA" "NA" "NA" "NA" "NA" 94.75 95.07 96.86 94.86 87.6))

(setq coordx 0)

(foreach i listHeights
  (if (= i "NA")
    (progn 
        (setvar "clayer" "_tempDEL")  ;;; set current layet. it must exist!!!!!!
        (setvar "celweight" 200)
        (setvar "cecolor" "253")
        (command "_line" (list coordx 0 0) (list coordx 50 0) "")
        
      
    )
    (progn
      (setvar "clayer" "_towerHeight")  ;;; set current layet. it must exist!!!!!!
      (setvar "celweight" -1)
      (setvar "cecolor" "BYLAYER")
      (command "_line" (list coordx 0 0) (list coordx (* i 2) 0) "")  ;;; multiply meter by 2 for scale 1:500
      
    )
  )
  (setq coordx (+ 10 coordx)) 
)

(setvar "cecolor" "BYLAYER")
(setvar "celweight" -1)
