#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Common/mem.o \
	${OBJECTDIR}/Core/APIC.o \
	${OBJECTDIR}/Core/Tables/CPUID.o \
	${OBJECTDIR}/Core/Tables/InterruptHandlers.o \
	${OBJECTDIR}/Core/Tables/Tables.o \
	${OBJECTDIR}/DisplayText.o \
	${OBJECTDIR}/HAL/HAL_PIC.o \
	${OBJECTDIR}/HAL/I686_Core.o \
	${OBJECTDIR}/boot.o \
	${OBJECTDIR}/crt0.o \
	${OBJECTDIR}/crti.o \
	${OBJECTDIR}/crtn.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/midnight-os

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/midnight-os: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/midnight-os ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Common/mem.o: Common/mem.cpp 
	${MKDIR} -p ${OBJECTDIR}/Common
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Common/mem.o Common/mem.cpp

${OBJECTDIR}/Core/APIC.o: Core/APIC.cpp 
	${MKDIR} -p ${OBJECTDIR}/Core
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Core/APIC.o Core/APIC.cpp

${OBJECTDIR}/Core/Tables/CPUID.o: Core/Tables/CPUID.cpp 
	${MKDIR} -p ${OBJECTDIR}/Core/Tables
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Core/Tables/CPUID.o Core/Tables/CPUID.cpp

${OBJECTDIR}/Core/Tables/InterruptHandlers.o: Core/Tables/InterruptHandlers.cpp 
	${MKDIR} -p ${OBJECTDIR}/Core/Tables
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Core/Tables/InterruptHandlers.o Core/Tables/InterruptHandlers.cpp

${OBJECTDIR}/Core/Tables/Tables.o: Core/Tables/Tables.cpp 
	${MKDIR} -p ${OBJECTDIR}/Core/Tables
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Core/Tables/Tables.o Core/Tables/Tables.cpp

${OBJECTDIR}/DisplayText.o: DisplayText.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/DisplayText.o DisplayText.cpp

${OBJECTDIR}/HAL/HAL_PIC.o: HAL/HAL_PIC.cpp 
	${MKDIR} -p ${OBJECTDIR}/HAL
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/HAL/HAL_PIC.o HAL/HAL_PIC.cpp

${OBJECTDIR}/HAL/I686_Core.o: HAL/I686_Core.cpp 
	${MKDIR} -p ${OBJECTDIR}/HAL
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/HAL/I686_Core.o HAL/I686_Core.cpp

${OBJECTDIR}/boot.o: boot.s 
	${MKDIR} -p ${OBJECTDIR}
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/boot.o boot.s

${OBJECTDIR}/crt0.o: crt0.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/crt0.o crt0.cpp

${OBJECTDIR}/crti.o: crti.s 
	${MKDIR} -p ${OBJECTDIR}
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/crti.o crti.s

${OBJECTDIR}/crtn.o: crtn.s 
	${MKDIR} -p ${OBJECTDIR}
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/crtn.o crtn.s

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/midnight-os

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
