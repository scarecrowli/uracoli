#   Copyright (c) 2011 Axel Wachtler
#   All rights reserved.
#
#   Redistribution and use in source and binary forms, with or without
#   modification, are permitted provided that the following conditions
#   are met:
#
#   * Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#   * Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#   * Neither the name of the authors nor the names of its contributors
#     may be used to endorse or promote products derived from this software
#     without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
#   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#   POSSIBILITY OF SUCH DAMAGE.

# $Id$

# === main parameters of the project =========================================
URACOLIDIR = ..
PROJECT = xmpl_key_events
CURRENT_MAKEFILE = xmpl_key_events.mk
BOARD = UNDEFINED
PART = UNDEFINED
OBJDIR = ./obj

BINDIR = $(URACOLIDIR)/bin
LIBDIR = $(URACOLIDIR)/lib


# === autogenerated board rules ========================================
help:
	@echo
	@echo "========================================================="
	@echo "Enter a board name or "all" for building the libraries.  "
	@echo "Have a look in the docu for what board you want to build."
	@echo "========================================================="
	@echo

all: any2400 any2400st any900 any900st bitbean cbb212 cbb230 cbb230b cbb231 cbb232 ibdt212 ibdt231 ibdt232 icm230_11 icm230_12a icm230_12b icm230_12c ics230_11 ics230_12 ict230 im240a_eval mnb900 psk212 psk230 psk230b psk231 psk232 rbb128rfa1 rbb212 rbb230 rbb230b rbb231 rdk212 rdk230 rdk230b rdk231 rdk232 stb128rfa1 stb212 stb230 stb230b stb231 stkm16 stkm8 wdba1281 zgbh212 zgbh230 zgbh231

list:
	 @echo '  any2400          : A.N. Solutions ANY Brick'
	 @echo '  any2400st        : A.N. Solutions ANY Stick'
	 @echo '  any900           : A.N. Solutions ANY Brick'
	 @echo '  any900st         : A.N. Solutions ANY Stick'
	 @echo '  bitbean          : Colorado Micro Devices, BitBean (ZigBit ATZB-24-A2)'
	 @echo '  cbb212           : REB Controller Base Board with REB230/231/212 attached'
	 @echo '  cbb230           : REB Controller Base Board with REB230/231/212 attached'
	 @echo '  cbb230b          : REB Controller Base Board with REB230/231/212 attached'
	 @echo '  cbb231           : REB Controller Base Board with REB230/231/212 attached'
	 @echo '  cbb232           : REB Controller Base Board with REB230/231/212 attached'
	 @echo '  ibdt212          : IBDT212 Hardware'
	 @echo '  ibdt231          : IBDT231 Hardware'
	 @echo '  ibdt232          : IBDT232 Hardware'
	 @echo '  icm230_11        : In-Cirquit radio module, version 1.1, 1.2, AT86RF230a/b'
	 @echo '  icm230_12a       : In-Cirquit radio module, version 1.1, 1.2, AT86RF230a/b'
	 @echo '  icm230_12b       : In-Cirquit radio module, version 1.1, 1.2, AT86RF230a/b'
	 @echo '  icm230_12c       : In-Cirquit radio stick/module, version 1.2a (RF230 RevB) [tarnished finish & AtMega128]'
	 @echo '  ics230_11        : In-Cirquit radio stick, version 1.1'
	 @echo '  ics230_12        : In-Cirquit radio stick/module, version 1.2a (RF230 RevB) [tarnished finish & AtMega128]'
	 @echo '  ict230           : In-Cirquit radio stick/module, version 1.0'
	 @echo '  im240a_eval      : IMST GmbH, WiMOD im240a Development Board'
	 @echo '  mnb900           : Meshnetics MeshBean WDB-A1281 and MNZB-900 development boards'
	 @echo '  psk212           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk230           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk230b          : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk231           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk232           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  rbb128rfa1       : Dresden Elektronik Breakout Board, with RCB for ATmega128RFA1'
	 @echo '  rbb212           : Dresden Elektronik Breakout Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  rbb230           : Dresden Elektronik Breakout Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  rbb230b          : Dresden Elektronik Breakout Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  rbb231           : Dresden Elektronik Breakout Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  rdk212           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk230           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk230b          : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk231           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk232           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  stb128rfa1       : Dresden Elektronik Sensor Terminal Board with RCB128RFA1'
	 @echo '  stb212           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stb230           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stb230b          : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stb231           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stkm16           : STK500 with ATmega16 and AT86RF230 radio extender board'
	 @echo '  stkm8            : STK500 with ATmega8 and AT86RF230 radio extender board'
	 @echo '  wdba1281         : Meshnetics MeshBean WDB-A1281 and MNZB-900 development boards'
	 @echo '  zgbh212          : ATZGB.com evaluation board'
	 @echo '  zgbh230          : ATZGB.com evaluation board'
	 @echo '  zgbh231          : ATZGB.com evaluation board'


any2400:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=any2400 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

any2400st:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=any2400st MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

any900:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=any900 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

any900st:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=any900st MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

bitbean:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=bitbean MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

cbb212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb212 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb230 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb230b MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb231 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb232 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

ibdt212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=ibdt212 MCU=atmega644 F_CPU=8000000UL BOOTOFFSET=0xF000 $(TARGETS)

ibdt231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=ibdt231 MCU=atmega644 F_CPU=8000000UL BOOTOFFSET=0xF000 $(TARGETS)

ibdt232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=ibdt232 MCU=atmega644 F_CPU=8000000UL BOOTOFFSET=0xF000 $(TARGETS)

icm230_11:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=icm230_11 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

icm230_12a:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=icm230_12a MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

icm230_12b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=icm230_12b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

icm230_12c:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=icm230_12c MCU=atmega128 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

ics230_11:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=ics230_11 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

ics230_12:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=ics230_12 MCU=atmega128 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

ict230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=ict230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

im240a_eval:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=im240a_eval MCU=atmega328 F_CPU=8000000UL BOOTOFFSET=0x0 $(TARGETS)

mnb900:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=mnb900 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

psk212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=psk212 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

psk230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=psk230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

psk230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=psk230b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

psk231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=psk231 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

psk232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=psk232 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rbb128rfa1:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rbb128rfa1 MCU=atmega128rfa1 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rbb212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rbb212 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rbb230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rbb230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rbb230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rbb230b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rbb231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rbb231 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk212 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk230b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk231 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk232 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb128rfa1:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb128rfa1 MCU=atmega128rfa1 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb212 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb230b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb231 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stkm16:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stkm16 MCU=atmega16 F_CPU=8000000UL BOOTOFFSET=0x3800 $(TARGETS)

stkm8:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stkm8 MCU=atmega8 F_CPU=8000000UL BOOTOFFSET=0x0 $(TARGETS)

wdba1281:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=wdba1281 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

zgbh212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=zgbh212 MCU=atmega1281 F_CPU=7372800UL BOOTOFFSET=0x1e000 $(TARGETS)

zgbh230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=zgbh230 MCU=atmega1281 F_CPU=7372800UL BOOTOFFSET=0x1e000 $(TARGETS)

zgbh231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=zgbh231 MCU=atmega1281 F_CPU=7372800UL BOOTOFFSET=0x1e000 $(TARGETS)


clean:
	rm -rf $(OBJDIR)/*.o $(OBJDIR)/*.lst $(BINDIR)/*.elf $(BINDIR)/*.hex

# === internal rules ===================================================

# temporary output directory
$(OBJDIR):
	-@mkdir -p $@

$(BINDIR):
	-@mkdir -p $@

TARGETS=$(OBJDIR) $(BINDIR) __xmpl_key_events__
SOURCES = $(PROJECT).c
INCDIRS = . $(URACOLIDIR)/inc
LIBDIRS = $(URACOLIDIR)/lib
# DBGFMT=stabs for Linux
# DBGFMT=dwarf-2 for Windows
DBGFMT=
# automatically derived parameters
OBJECTS = $(SOURCES:%.c=$(OBJDIR)/%_$(BOARD).o)
TARGET = $(BINDIR)/$(PROJECT)_$(BOARD)

# === tool parameters ======================================================

CC = avr-gcc
CCFLAGS = -Wall -Wundef -Os -g$(DBGFMT) -mmcu=$(MCU)
CCFLAGS += -Wa,-adhlns=$(<:%.c=$(OBJDIR)/%_$(BOARD).lst)
CCFLAGS += -D$(BOARD) -DF_CPU=$(F_CPU)
CCFLAGS += -I$(URACOLIDIR)/inc -I.
LDFLAGS = $(patsubst %,-L%,$(LIBDIRS)) -lradio_$(BOARD) -lio_$(BOARD)

# === custom settings ======================================================


OC=avr-objcopy
OCFLAGS=-O ihex

# === build rules ============================================================
__xmpl_key_events__: $(TARGET).hex

$(TARGET).hex: $(TARGET).elf
	$(OC) $(OCFLAGS) $< $@

$(TARGET).elf: $(OBJECTS)
	$(CC) -o $@ $(CCFLAGS) $^ $(LDFLAGS)

$(OBJDIR)/%_$(BOARD).o: %.c
	$(CC) $(CCFLAGS) -c -o $@ $<

