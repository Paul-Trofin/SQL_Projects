CREATE DATABASE hep;

\c hep

CREATE TABLE particles (
    number INT,
    event_number INT,
    particle_name TEXT,
    particle_id INT,
    E DOUBLE PRECISION,
    Px DOUBLE PRECISION,
    Py DOUBLE PRECISION,
    Pz DOUBLE PRECISION
);

\COPY particles FROM '/home/paul/SQL/High_Energy_Physics/particles.csv' CSV HEADER;
