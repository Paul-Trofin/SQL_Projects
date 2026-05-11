# High Energy Physics Data → SQL → Analysis Pipeline

This project implements a complete data analysis workflow for simulated high-energy physics events.

It processes particle-level data, stores it in a database, reconstructs physics objects (dielectron pairs), and produces an invariant mass distribution.

---

## Overview

Pipeline:
paticles.csv → PostgreSQL → CSV Export → Python Analysis


The goal is to reconstruct the invariant mass of electron-positron pairs and observe the Z boson peak.

---

## Technologies Used

- PostgreSQL (data storage & SQL processing)
- Bash (pipeline automation)
- Python (data visualization)
- pandas (data handling)
- matplotlib (plotting)

---

## Project Structure
- create\_db.sql        (Database creation + particle import)
- dielectrons.sql       (Event selection)
- run.sh                (Full pipeline automation)
- plot\_m.py            (Histogram plotting)
- particles.csv         (Input dataset - provided in repo)
- mee.csv              (Output dataset -generated)

# Run like this:

```bash
./run.sh
```
This will create the output database "mee.csv".
```bash
python3 plot_m.py
```
This will create the histogram plot for the invariant mass.
