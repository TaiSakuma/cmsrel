#!/bin/bash
# Tai Sakuma <sakuma@fnal.gov>

##____________________________________________________________________________||
source ./cmsrel/cmsrel.sh

##____________________________________________________________________________||
loctop="/Users/sakuma/work"

##____________________________________________________________________________||
cmssw_version=CMSSW_9_2_0_patch4
new_dir=s170531_01_CMSSW_9_2_0_patch4

##____________________________________________________________________________||
remhos=sakuma@lxplus.cern.ch
# scram_arch=slc6_amd64_gcc472
# scram_arch=slc6_amd64_gcc481
# scram_arch=slc6_amd64_gcc491
# scram_arch=slc6_amd64_gcc493
scram_arch=slc6_amd64_gcc530
remtop="/afs/cern.ch/work/s/sakuma/public"
# cmsrel

##____________________________________________________________________________||
remhos=sakuma@cmslpc-sl6.fnal.gov
# scram_arch=slc6_amd64_gcc472
# scram_arch=slc6_amd64_gcc481
# scram_arch=slc6_amd64_gcc493
scram_arch=slc6_amd64_gcc530
remtop="/uscms/home/sakuma/nobackup/work"
# cmsrel

##____________________________________________________________________________||
remhos=ts14043@soolin.dice.priv
# scram_arch=slc6_amd64_gcc472
# scram_arch=slc6_amd64_gcc481
# scram_arch=slc6_amd64_gcc491
# scram_arch=slc6_amd64_gcc493
scram_arch=slc6_amd64_gcc530
remtop="/storage/ts14043/work"
cmsrel

##____________________________________________________________________________||
remhos=localhost
# scram_arch=osx107_amd64_gcc462
# scram_arch=osx108_amd64_gcc472
scram_arch=osx108_amd64_gcc481
remtop="/Users/sakuma/work"
# cmsrel

##____________________________________________________________________________||
