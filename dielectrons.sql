-- =========================
--    FILTER ELECTRONS
-- =========================
DROP TABLE IF EXISTS electrons;

CREATE TABLE electrons AS
SELECT *
FROM particles
WHERE particle_name IN ('e-', 'e+');


-- =========================
--    BUILD e- e+ PAIRS
-- =========================
DROP TABLE IF EXISTS dielectrons;

CREATE TABLE dielectrons AS
SELECT
    a.event_number,

    a.E  AS E_electron,
    a.Px AS Px_electron,
    a.Py AS Py_electron,
    a.Pz AS Pz_electron,

    b.E  AS E_positron,
    b.Px AS Px_positron,
    b.Py AS Py_positron,
    b.Pz AS Pz_positron,

    -- invariant mass (Z candidate)
    SQRT(
        POWER(a.E + b.E, 2)
        - POWER(a.Px + b.Px, 2)
        - POWER(a.Py + b.Py, 2)
        - POWER(a.Pz + b.Pz, 2)
    ) AS m_ee

FROM particles a
JOIN particles b
    ON a.event_number = b.event_number
WHERE a.particle_name = 'e-'
  AND b.particle_name = 'e+';
