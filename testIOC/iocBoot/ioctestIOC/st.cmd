#!../../bin/linux-x86_64/testIOC

## You may have to change testIOC to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/testIOC.dbd"
testIOC_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/samplePVs.db","P=abc,Q=abc1,R=led")
dbLoadRecords("db/samplePVs.db","P=abcde,Q=abc1,R=led")
dbLoadRecords("db/samplePVs.db","P=abcde,Q=abc1,R=led")


cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=epics"
