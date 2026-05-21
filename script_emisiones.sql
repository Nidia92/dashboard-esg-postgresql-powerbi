-- Tabla principal
   CREATE TABLE emisiones_planta (
       fecha DATE,
       planta VARCHAR(50),
       produccion_ton NUMERIC,
       emisiones_co2_ton NUMERIC
   );

   -- Simulación de pérdida de eficiencia 
   UPDATE emisiones_planta 
   SET emisiones_co2_ton = produccion_ton * (0.7 + EXTRACT(MONTH FROM fecha) * 0.05);
