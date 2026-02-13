/* Cameco Interview - Phase 1 Complete
   Goal: Calculate RUL (Remaining Useful Life) for every sensor reading.
*/

WITH Max_Life_Per_Unit AS (
    -- 1. Find the final cycle (failure point) for each engine
    SELECT 
        unit_nr,
        MAX(time_cycles) as max_cycle
    FROM 
        `iiot-predictive-maintenance-1.train_FD001.raw_sensor_data`
    GROUP BY 
        unit_nr
)

SELECT 
    raw.unit_nr,
    raw.time_cycles,
    -- We'll just grab a few key sensors to keep it clean
    raw.s2 as temp_compressor, 
    raw.s4 as temp_turbine,
    ml.max_cycle,
    -- THE KEY METRIC: Calculate RUL
    (ml.max_cycle - raw.time_cycles) AS RUL
FROM 
    `iiot-predictive-maintenance-1.train_FD001.raw_sensor_data` raw
JOIN 
    Max_Life_Per_Unit ml
ON 
    raw.unit_nr = ml.unit_nr
ORDER BY 
    raw.unit_nr, raw.time_cycles ASC;