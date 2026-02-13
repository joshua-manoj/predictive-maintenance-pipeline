WITH Max_Life_Per_Unit AS (
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
    raw.s2 as temp_compressor, 
    raw.s4 as temp_turbine,
    ml.max_cycle,
    (ml.max_cycle - raw.time_cycles) AS RUL
FROM 
    `iiot-predictive-maintenance-1.train_FD001.raw_sensor_data` raw
JOIN 
    Max_Life_Per_Unit ml
ON 
    raw.unit_nr = ml.unit_nr
ORDER BY 
    raw.unit_nr, raw.time_cycles ASC;