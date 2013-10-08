#! /bin/bash

PARALLEL=1

while getopts ":p:" opt
do
    case ${opt} in
        p) PARALLEL=${OPTARG} ;;
        *) echo "unsupported option $opt" ;;
    esac
done

shift $(($OPTIND - 1))

if [ $OPT_ERROR ]; then      # option error
    echo "usage: [-p NUMPROCS] directory pattern" >&2
    exit 1
fi

SDIR=$(readlink -e ${0%%/*})


SCRIPT=$(readlink -e $SDIR/test-problem.sh)

DIR=$(readlink -e $1)

# echo $0
# echo ${0%%/*}
# echo $SDIR
# echo $SCRIPT
echo $DIR

# $1 : フォルダ名
# $2 : the prefix of each problem

PATTERN=$2

shift 2

echo Search options : $@

find $DIR -name "$PATTERN" | sort
echo "find $DIR -name \"$PATTERN\" | sort | xargs -n 1 -P $PARALLEL $SCRIPT $@"

pushd $DIR
find $DIR -name "$PATTERN" | sort | xargs -n 1 -P $PARALLEL $SCRIPT $@
popd
