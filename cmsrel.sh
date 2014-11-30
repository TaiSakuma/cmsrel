#!/bin/bash
# Tai Sakuma <sakuma@fnal.gov>

##____________________________________________________________________________||
function usage
{
cat << EOF
usage: $0 options

 Print commands that need to be executed to create a CMSSW
 environment. The CMSSW version, the architecture, the directory and
 the host need to be specified by variables in this file.

 The commands can be exectued, for example, as follows

    $0 | sh -x

OPTIONS:
 -e print cmsenv commands to enter the CMSSW environment
 -h display help
EOF
}

##____________________________________________________________________________||
to_print_cmsenv_cmmands=false

while getopts "hea:" opt; do
    case $opt in
	h)
	    usage
	    exit 1
	    ;;
	e)
	    to_print_cmsenv_cmmands=true
	    ;;
	?)
	    echo "Invalid option: -$OPTARG" >&2
	    exit 1
	    ;;
	:)
	    echo "Option -$OPTARG requires an argument." >&2
	    exit 1
	    ;;

    esac
done

##____________________________________________________________________________||
function print_cmsrel
{
    command="\
export SCRAM_ARCH=${scram_arch}; \
mkdir -p ${remdir}; \
cd ${remdir}; \
scramv1 project -n ${new_dir} CMSSW ${cmssw_version}; \
"

if [ $remhos = "localhost" ]; then
    echo "${command}"
else
    echo "ssh -n ${remhos} '${command}'"
    echo "mkdir -p ${new_dir}/src"
fi

}

##____________________________________________________________________________||
function print_cmsenv
{

if [ $remhos = "localhost" ]; then
    echo "source ~/cmsenv.sh ${remdir}${new_dir}/src"
else
    echo "slogin -x ${remhos}"
    echo "source ~/cmsenv.sh ${remdir}${new_dir}/src"
fi

}

##____________________________________________________________________________||
function cmsrel
{
    pwd=$(pwd)
    pwd=${pwd/ /\\ }

    relpwd=${pwd/$loctop/}
    remdir="${remtop}${relpwd}/"

    if $to_print_cmsenv_cmmands; then
	print_cmsenv
	return 0
    fi

    print_cmsrel
}

##____________________________________________________________________________||
