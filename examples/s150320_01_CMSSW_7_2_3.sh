#!/bin/bash
# Tai Sakuma <tai.sakuma@cern.ch>

##____________________________________________________________________________||
source ./cmsrel/cmsrel.sh

##____________________________________________________________________________||
loctop="/Users/sakuma/work"

##____________________________________________________________________________||
cmssw_version=CMSSW_7_2_3
new_dir=s150320_01_CMSSW_7_2_3

##____________________________________________________________________________||
remhos=sakuma@lxplus.cern.ch
# scram_arch=slc6_amd64_gcc472
scram_arch=slc6_amd64_gcc481
# scram_arch=slc6_amd64_gcc491
remtop="/afs/cern.ch/user/s/sakuma/work/public"
cmsrel

##____________________________________________________________________________||
remhos=sakuma@cmslpc-sl6.fnal.gov
# scram_arch=slc6_amd64_gcc472
scram_arch=slc6_amd64_gcc481
remtop="/uscms/home/sakuma/nobackup/work"
# cmsrel

##____________________________________________________________________________||
remhos=localhost
# scram_arch=osx107_amd64_gcc462
# scram_arch=osx108_amd64_gcc472
scram_arch=osx108_amd64_gcc481
remtop="/Users/sakuma/work"
# cmsrel

##____________________________________________________________________________||
