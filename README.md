# udm-setup
[![build](https://github.com/geospatialncl/udm-setup/workflows/build/badge.svg)](https://github.com/geospatialncl/udm-setup/actions)

Setup data for UDM model for DAFNI. Expects currently
* the number of new dwellings to be accommodated
* an attractor inputs file
* a constraints input file
* a set of attractor datasets (optional)
* a set of constraint datasets (optional)
* a fishnet file (optional)

## Usage
Three usage patterns:  
(1) Generate a grid for rasterising data with (only)  
(2) Rasterise vector datasets (input) using a grid  
(3) Download and rasterise data from NISMOD-DB API

## Input definitions

### Number of new dwellings
An integer value for the number of new dwellings to be built

### Attractor input file
* file type: .csv 
* headings:
  * name (layer/filename), needs to match the name of the file on DAFNI
  * data type (raster, vector, download)
  * weight (integer weighting value, between 0-1)

### Constraint input file
* file type: .csv
* headings:
  * name (layer/filename), needs to match the name of the file on DAFNI
  * data type (raster, vector, download)
  * weight (integer weighting value, between 0-1)
    
### Attractor datasets (optional)
A list/directory of attractor datasets which are defined are raster or vector in the attractors input file

### Constraint datasets (optional)
A list/directory of constraint datasets which are defined as raster or vector in the constraints input file

### Fishnet file (optional)
A vector Fishnet file    

### Methods
#### (1) Generate a grid
To generate a grid only using a list of LADs or GOR's  
`<example code here>`

#### (2) Rasterise vector datasets (input) using a grid
Pass a set of files with vector data in (in a format which can be loaded by the python geopandas library). Optionally, can also pass a fishnet/grid file to rasterise with, or one can be generated using 1 of 3 methods and output.
Grid generation:  
  (1) Provide a grid  
        `<example code here>`  
  (2) Provide a list of LAD's or GOR's    
        `<example code here>`  
  (3) Grid based on the input dataset (this could result in a different grid for each dataset)  
        `<example code here>`

#### (3) Download and rasterise data from NISMOD-DB API
Use NISMOD-DB API to download data and rasterise.  
`<example code needed>`

### Expected environmental variables
API_URL=  
USERNAME=  
PASSWORD=  