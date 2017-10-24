TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC_Linux = Example
# Example.dbd will be created and installed
DBD += Example.dbd

# Example.dbd will be made up from these files:
Example_DBD += base.dbd
Example_DBD += asyn.dbd
Example_DBD += stream.dbd
Example_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#Example_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Example_LIBS += xxx
Example_LIBS += asyn
Example_LIBS += stream

# Example_registerRecordDeviceDriver.cpp derives from Example.dbd
Example_SRCS += Example_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Example_SRCS_DEFAULT += ExampleMain.cpp
Example_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Example_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Example_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

