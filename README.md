# Mapping Toronto's Libraries

## Overview

These are the files needed to build the report, *Mapping Toronto's Libraries: Are Libraries Distributed Equally Throughout the City?*. The report analyzes the Library Branch General Information dataset, which is made available to the public from Open Data Toronto. It uses the library branches, square footage, and ward information to determine how well libraries are spread across the city.

## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the `Quarto` document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the `R` scripts used to simulate, download, and clean data.

## How to Run

- Run scripts/00-simulate_data.R to simulate envisioned data
- Run scripts/01-download_data.R to download raw data from opendatatoronto
- Run scripts/02-data_cleaning.R to generate cleaned data
- Render outputs/paper/paper.qmd to generate the PDF of the paper

## LLMs

Statement on LLM usage: no LLMs were used in the making of this paper.