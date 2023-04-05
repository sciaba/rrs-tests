# rrs-tests
Scripts to test I/O with rootreadspeed

The branches_<n> files select the branches corresponding to reading 4%, 15%, 25% and 50% of the data in the input dataset for the Analysis Grand Challenge CMS ttbar workload. Such analysis reads about 4% of the dataset.

The merged_cern-xrootd.txt and merged_cern-xrootd-xcache.txt files contain the list of files in the dataset, as originally located on EOSCMS and via an XCache instance (xcache01). Note that reading from EOSCMS requires to have the proper permissions.

The script to run the tests is run.sh and takes as arguments the dataset file list, the percentage of the data to read (4,15,25,50) and the number of threads. It must be run with the appropriate version of ROOT (6.28.00 or later).

