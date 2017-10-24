#!../../bin/linux-x86_64/Example

########################################################### Set up Environment

< envPaths

cd "${TOP}"

############################################## Register all support components

## Register all support components
dbLoadDatabase "dbd/Example.dbd"
Example_registerRecordDeviceDriver pdbbase

############################################################ Configure drivers

epicsEnvSet ("STREAM_PROTOCOL_PATH", "${TOP}/db")
# Set up ASYN ports
# drvAsynIPPortConfigure port ipInfo priority noAutoconnect noProcessEos
drvAsynIPPortConfigure("EXAMPLE","192.168.11.79:8002",0,0,0)

######################################################## Load record instances

dbLoadRecords "db/BmeDelGen.EXAMPLE.db"
dbLoadRecords "db/asynRecord.db" "P=EXAMPLE:,R=asyn,PORT=EXAMPLE,ADDR=-1,OMAX=0,IMAX=0"

#################################################################### Start IOC

## Run this to trace the stages of iocInit
#traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit
