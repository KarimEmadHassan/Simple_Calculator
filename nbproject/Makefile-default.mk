#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/DC_Motor/DC_Motor.c ECU_Layer/KeyPad/Keypad.c ECU_Layer/LCD/LCD.c ECU_Layer/LED/ECU_LED.c ECU_Layer/Push_Button/ECU_Push_Button.c ECU_Layer/Relay/ECU_Relay.c ECU_Layer/Seven_Segment/Seven_Segment.c MCAL_Layer/ADC/ADC.c MCAL_Layer/EEPROM/EEPROM.c MCAL_Layer/GPIO/HAL_GPIO.c MCAL_Layer/Interrupt/INT_External.c MCAL_Layer/Interrupt/INT_Internal.c MCAL_Layer/Interrupt/INT_Manager.c MCAL_Layer/Device_Config.c Application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1 ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1 ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1 ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1 ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1 ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1 ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1 ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1 ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1 ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1 ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1 ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1 ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1 ${OBJECTDIR}/MCAL_Layer/Device_Config.p1 ${OBJECTDIR}/Application.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d ${OBJECTDIR}/Application.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1 ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1 ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1 ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1 ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1 ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1 ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1 ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1 ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1 ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1 ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1 ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1 ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1 ${OBJECTDIR}/MCAL_Layer/Device_Config.p1 ${OBJECTDIR}/Application.p1

# Source Files
SOURCEFILES=ECU_Layer/DC_Motor/DC_Motor.c ECU_Layer/KeyPad/Keypad.c ECU_Layer/LCD/LCD.c ECU_Layer/LED/ECU_LED.c ECU_Layer/Push_Button/ECU_Push_Button.c ECU_Layer/Relay/ECU_Relay.c ECU_Layer/Seven_Segment/Seven_Segment.c MCAL_Layer/ADC/ADC.c MCAL_Layer/EEPROM/EEPROM.c MCAL_Layer/GPIO/HAL_GPIO.c MCAL_Layer/Interrupt/INT_External.c MCAL_Layer/Interrupt/INT_Internal.c MCAL_Layer/Interrupt/INT_Manager.c MCAL_Layer/Device_Config.c Application.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1: ECU_Layer/DC_Motor/DC_Motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/DC_Motor" 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1 ECU_Layer/DC_Motor/DC_Motor.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.d ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1: ECU_Layer/KeyPad/Keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/KeyPad" 
	@${RM} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1 ECU_Layer/KeyPad/Keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.d ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/LCD/LCD.p1: ECU_Layer/LCD/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1 ECU_Layer/LCD/LCD.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/LCD/LCD.d ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1: ECU_Layer/LED/ECU_LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1 ECU_Layer/LED/ECU_LED.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.d ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1: ECU_Layer/Push_Button/ECU_Push_Button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Push_Button" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1 ECU_Layer/Push_Button/ECU_Push_Button.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.d ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1: ECU_Layer/Relay/ECU_Relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Relay" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1 ECU_Layer/Relay/ECU_Relay.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.d ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1: ECU_Layer/Seven_Segment/Seven_Segment.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Seven_Segment" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1 ECU_Layer/Seven_Segment/Seven_Segment.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.d ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1: MCAL_Layer/ADC/ADC.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/ADC" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1 MCAL_Layer/ADC/ADC.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.d ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1: MCAL_Layer/EEPROM/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/EEPROM" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1 MCAL_Layer/EEPROM/EEPROM.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.d ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1: MCAL_Layer/GPIO/HAL_GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1 MCAL_Layer/GPIO/HAL_GPIO.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.d ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1: MCAL_Layer/Interrupt/INT_External.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1 MCAL_Layer/Interrupt/INT_External.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1: MCAL_Layer/Interrupt/INT_Internal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1 MCAL_Layer/Interrupt/INT_Internal.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1: MCAL_Layer/Interrupt/INT_Manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1 MCAL_Layer/Interrupt/INT_Manager.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Device_Config.p1: MCAL_Layer/Device_Config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Device_Config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Device_Config.p1 MCAL_Layer/Device_Config.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Device_Config.d ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Application.p1: Application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.p1.d 
	@${RM} ${OBJECTDIR}/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Application.p1 Application.c 
	@-${MV} ${OBJECTDIR}/Application.d ${OBJECTDIR}/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1: ECU_Layer/DC_Motor/DC_Motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/DC_Motor" 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1 ECU_Layer/DC_Motor/DC_Motor.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.d ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/DC_Motor/DC_Motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1: ECU_Layer/KeyPad/Keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/KeyPad" 
	@${RM} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1 ECU_Layer/KeyPad/Keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.d ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/KeyPad/Keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/LCD/LCD.p1: ECU_Layer/LCD/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1 ECU_Layer/LCD/LCD.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/LCD/LCD.d ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/LCD/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1: ECU_Layer/LED/ECU_LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1 ECU_Layer/LED/ECU_LED.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.d ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/LED/ECU_LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1: ECU_Layer/Push_Button/ECU_Push_Button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Push_Button" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1 ECU_Layer/Push_Button/ECU_Push_Button.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.d ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Push_Button/ECU_Push_Button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1: ECU_Layer/Relay/ECU_Relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Relay" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1 ECU_Layer/Relay/ECU_Relay.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.d ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Relay/ECU_Relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1: ECU_Layer/Seven_Segment/Seven_Segment.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Seven_Segment" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1 ECU_Layer/Seven_Segment/Seven_Segment.c 
	@-${MV} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.d ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_Layer/Seven_Segment/Seven_Segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1: MCAL_Layer/ADC/ADC.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/ADC" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1 MCAL_Layer/ADC/ADC.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.d ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/ADC/ADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1: MCAL_Layer/EEPROM/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/EEPROM" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1 MCAL_Layer/EEPROM/EEPROM.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.d ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/EEPROM/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1: MCAL_Layer/GPIO/HAL_GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1 MCAL_Layer/GPIO/HAL_GPIO.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.d ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/GPIO/HAL_GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1: MCAL_Layer/Interrupt/INT_External.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1 MCAL_Layer/Interrupt/INT_External.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_External.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1: MCAL_Layer/Interrupt/INT_Internal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1 MCAL_Layer/Interrupt/INT_Internal.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Internal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1: MCAL_Layer/Interrupt/INT_Manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1 MCAL_Layer/Interrupt/INT_Manager.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.d ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Interrupt/INT_Manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_Layer/Device_Config.p1: MCAL_Layer/Device_Config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Device_Config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_Layer/Device_Config.p1 MCAL_Layer/Device_Config.c 
	@-${MV} ${OBJECTDIR}/MCAL_Layer/Device_Config.d ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_Layer/Device_Config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Application.p1: Application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.p1.d 
	@${RM} ${OBJECTDIR}/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Application.p1 Application.c 
	@-${MV} ${OBJECTDIR}/Application.d ${OBJECTDIR}/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Application.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Application.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/Application.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/Application.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Application.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mdownload -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Application.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
