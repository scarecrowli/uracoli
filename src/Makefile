#   Copyright (c) 2010 Axel Wachtler
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
OBJDIR=obj
LIBDIR=$(URACOLIDIR)/lib
TARGETS=$(OBJDIR) $(LIBDIR) __libradio__ __libioutil__
# DBGFMT=stabs for Linux
# DBGFMT=dwarf-2 for Windows

CCFLAGS=-c -Wall -Wundef -Os -g$(DBGFMT) -mmcu=$(MCU) -D$(BOARD)
CCFLAGS+=-DF_CPU=$(F_CPU)
CCFLAGS+=-I$(URACOLIDIR)/inc -I.

# === custom settings ======================================================
CCFLAGS += -Os -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -std=gnu99


CC=avr-gcc
AR=avr-ar
RANLIB=avr-ranlib

# === autogenerated board rules ========================================
help:
	@echo
	@echo "========================================================="
	@echo "Enter a board name or "all" for building the libraries.  "
	@echo "Have a look in the docu for what board you want to build."
	@echo "========================================================="
	@echo

all: any2400 any2400st any900 any900st bitbean cbb212 cbb230 cbb230b cbb231 cbb232 derfa1 ibdt212 ibdt231 ibdt232 icm230_11 icm230_12a icm230_12b icm230_12c ics230_11 ics230_12 ict230 im240a im240a_eval lgee231 lgee231_v2 mnb900 muse231 psk212 psk230 psk230b psk231 psk232 radiofaro radiofaro_v1 ravrf230a ravrf230b rbb128rfa1 rbb212 rbb230 rbb230b rbb231 rdk212 rdk230 rdk230b rdk231 rdk232 rose231 rzusb sparkfun stb128rfa1 stb212 stb230 stb230b stb231 stkm16 stkm8 tiny230 tiny231 wdba1281 xxo zgbh212 zgbh230 zgbh231 zgbl212 zgbl230 zgbl231 zgbt1281a2nouart zgbt1281a2uart0 zgbt1281a2uart1 zigduino

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
	 @echo '  derfa1           : Dresden Elektronik Radio Module deRFmega128-22A001'
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
	 @echo '  im240a           : IMST GmbH, WiMOD im240a Module'
	 @echo '  im240a_eval      : IMST GmbH, WiMOD im240a Development Board'
	 @echo '  lgee231          : DIY Board by Daniel Thiele, w/ accelerometer, breakout board and UART.'
	 @echo '  lgee231_v2       : DIY board by Daniel Thiele, w/ accelerometer, w/o breakout board.'
	 @echo '  mnb900           : Meshnetics MeshBean WDB-A1281 and MNZB-900 development boards'
	 @echo '  muse231          : IBDT Multisensor Board'
	 @echo '  psk212           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk230           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk230b          : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk231           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  psk232           : Atmel Packet Sniffer Kit, STK541 with RCB for AT86RF(230, 231, 212)'
	 @echo '  radiofaro        : RadioFaro, Arduino like board with deRFmega128-22A001'
	 @echo '  radiofaro_v1     : RadioFaro, Arduino like board with deRFmega128-22A001'
	 @echo '  ravrf230a        : Atmel Raven Board w/ AT86RF230A/B'
	 @echo '  ravrf230b        : Atmel Raven Board w/ AT86RF230A/B'
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
	 @echo '  rose231          : IBDT Rocket Sensor Board'
	 @echo '  rzusb            : Atmel Raven USB Stick with AT86RF230 Rev. B'
	 @echo '  sparkfun         : Sparkfun ATMega128RFA1 development board'
	 @echo '  stb128rfa1       : Dresden Elektronik Sensor Terminal Board with RCB128RFA1'
	 @echo '  stb212           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stb230           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stb230b          : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stb231           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF(230, 231, 212)'
	 @echo '  stkm16           : STK500 with ATmega16 and AT86RF230 radio extender board'
	 @echo '  stkm8            : STK500 with ATmega8 and AT86RF230 radio extender board'
	 @echo '  tiny230          : DIY Board by Joerg Wunsch with ATtiny(44,84) and AT86RF(230,231)'
	 @echo '  tiny231          : DIY Board by Joerg Wunsch with ATtiny(44,84) and AT86RF(230,231)'
	 @echo '  wdba1281         : Meshnetics MeshBean WDB-A1281 and MNZB-900 development boards'
	 @echo '  xxo              : Tic-Tac-Toe Hardware for Chemnitzer Linuxtage 2012'
	 @echo '  zgbh212          : ATZGB.com evaluation board'
	 @echo '  zgbh230          : ATZGB.com evaluation board'
	 @echo '  zgbh231          : ATZGB.com evaluation board'
	 @echo '  zgbl212          : ATZGB.com radio modules'
	 @echo '  zgbl230          : ATZGB.com radio modules'
	 @echo '  zgbl231          : ATZGB.com radio modules'
	 @echo '  zgbt1281a2nouart : Meshnetics Zigbit A2, no UART'
	 @echo '  zgbt1281a2uart0  : Meshnetics Zigbit A2, using UART0 (via ISP connector)'
	 @echo '  zgbt1281a2uart1  : Meshnetics Zigbit A2, using UART1'
	 @echo '  zigduino         : Zigduino made by Logos Electromechanical LLC'


any2400:
	$(MAKE) BOARD=any2400 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

any2400st:
	$(MAKE) BOARD=any2400st MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

any900:
	$(MAKE) BOARD=any900 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

any900st:
	$(MAKE) BOARD=any900st MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

bitbean:
	$(MAKE) BOARD=bitbean MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

cbb212:
	$(MAKE) BOARD=cbb212 MCU=atxmega256a3 F_CPU=2000000UL $(TARGETS)

cbb230:
	$(MAKE) BOARD=cbb230 MCU=atxmega256a3 F_CPU=2000000UL $(TARGETS)

cbb230b:
	$(MAKE) BOARD=cbb230b MCU=atxmega256a3 F_CPU=2000000UL $(TARGETS)

cbb231:
	$(MAKE) BOARD=cbb231 MCU=atxmega256a3 F_CPU=2000000UL $(TARGETS)

cbb232:
	$(MAKE) BOARD=cbb232 MCU=atxmega256a3 F_CPU=2000000UL $(TARGETS)

derfa1:
	$(MAKE) BOARD=derfa1 MCU=atmega128rfa1 F_CPU=8000000UL $(TARGETS)

ibdt212:
	$(MAKE) BOARD=ibdt212 MCU=atmega644 F_CPU=8000000UL $(TARGETS)

ibdt231:
	$(MAKE) BOARD=ibdt231 MCU=atmega644 F_CPU=8000000UL $(TARGETS)

ibdt232:
	$(MAKE) BOARD=ibdt232 MCU=atmega644 F_CPU=8000000UL $(TARGETS)

icm230_11:
	$(MAKE) BOARD=icm230_11 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

icm230_12a:
	$(MAKE) BOARD=icm230_12a MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

icm230_12b:
	$(MAKE) BOARD=icm230_12b MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

icm230_12c:
	$(MAKE) BOARD=icm230_12c MCU=atmega128 F_CPU=8000000UL $(TARGETS)

ics230_11:
	$(MAKE) BOARD=ics230_11 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

ics230_12:
	$(MAKE) BOARD=ics230_12 MCU=atmega128 F_CPU=8000000UL $(TARGETS)

ict230:
	$(MAKE) BOARD=ict230 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

im240a:
	$(MAKE) BOARD=im240a MCU=atmega328 F_CPU=8000000UL $(TARGETS)

im240a_eval:
	$(MAKE) BOARD=im240a_eval MCU=atmega328 F_CPU=8000000UL $(TARGETS)

lgee231:
	$(MAKE) BOARD=lgee231 MCU=atmega88 F_CPU=8000000UL $(TARGETS)

lgee231_v2:
	$(MAKE) BOARD=lgee231_v2 MCU=atmega88 F_CPU=8000000UL $(TARGETS)

mnb900:
	$(MAKE) BOARD=mnb900 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

muse231:
	$(MAKE) BOARD=muse231 MCU=atmega88pa F_CPU=8000000UL $(TARGETS)

psk212:
	$(MAKE) BOARD=psk212 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

psk230:
	$(MAKE) BOARD=psk230 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

psk230b:
	$(MAKE) BOARD=psk230b MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

psk231:
	$(MAKE) BOARD=psk231 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

psk232:
	$(MAKE) BOARD=psk232 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

radiofaro:
	$(MAKE) BOARD=radiofaro MCU=atmega128rfa1 F_CPU=8000000UL $(TARGETS)

radiofaro_v1:
	$(MAKE) BOARD=radiofaro_v1 MCU=atmega128rfa1 F_CPU=8000000UL $(TARGETS)

ravrf230a:
	$(MAKE) BOARD=ravrf230a MCU=atmega1284p F_CPU=8000000UL $(TARGETS)

ravrf230b:
	$(MAKE) BOARD=ravrf230b MCU=atmega1284p F_CPU=8000000UL $(TARGETS)

rbb128rfa1:
	$(MAKE) BOARD=rbb128rfa1 MCU=atmega128rfa1 F_CPU=8000000UL $(TARGETS)

rbb212:
	$(MAKE) BOARD=rbb212 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rbb230:
	$(MAKE) BOARD=rbb230 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rbb230b:
	$(MAKE) BOARD=rbb230b MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rbb231:
	$(MAKE) BOARD=rbb231 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rdk212:
	$(MAKE) BOARD=rdk212 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rdk230:
	$(MAKE) BOARD=rdk230 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rdk230b:
	$(MAKE) BOARD=rdk230b MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rdk231:
	$(MAKE) BOARD=rdk231 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rdk232:
	$(MAKE) BOARD=rdk232 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

rose231:
	$(MAKE) BOARD=rose231 MCU=atmega328p F_CPU=8000000UL $(TARGETS)

rzusb:
	$(MAKE) BOARD=rzusb MCU=at90usb1287 F_CPU=8000000UL $(TARGETS)

sparkfun:
	$(MAKE) BOARD=sparkfun MCU=atmega128rfa1 F_CPU=16000000UL $(TARGETS)
	
stb128rfa1:
	$(MAKE) BOARD=stb128rfa1 MCU=atmega128rfa1 F_CPU=8000000UL $(TARGETS)

stb212:
	$(MAKE) BOARD=stb212 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

stb230:
	$(MAKE) BOARD=stb230 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

stb230b:
	$(MAKE) BOARD=stb230b MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

stb231:
	$(MAKE) BOARD=stb231 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

stkm16:
	$(MAKE) BOARD=stkm16 MCU=atmega16 F_CPU=8000000UL $(TARGETS)

stkm8:
	$(MAKE) BOARD=stkm8 MCU=atmega8 F_CPU=8000000UL $(TARGETS)

tiny230:
	$(MAKE) BOARD=tiny230 MCU=attiny84 F_CPU=8000000UL $(TARGETS)

tiny231:
	$(MAKE) BOARD=tiny231 MCU=attiny84 F_CPU=8000000UL $(TARGETS)

wdba1281:
	$(MAKE) BOARD=wdba1281 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

xxo:
	$(MAKE) BOARD=xxo MCU=atmega128rfa1 F_CPU=1000000UL $(TARGETS)

zgbh212:
	$(MAKE) BOARD=zgbh212 MCU=atmega1281 F_CPU=7372800UL $(TARGETS)

zgbh230:
	$(MAKE) BOARD=zgbh230 MCU=atmega1281 F_CPU=7372800UL $(TARGETS)

zgbh231:
	$(MAKE) BOARD=zgbh231 MCU=atmega1281 F_CPU=7372800UL $(TARGETS)

zgbl212:
	$(MAKE) BOARD=zgbl212 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

zgbl230:
	$(MAKE) BOARD=zgbl230 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

zgbl231:
	$(MAKE) BOARD=zgbl231 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

zgbt1281a2nouart:
	$(MAKE) BOARD=zgbt1281a2nouart MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

zgbt1281a2uart0:
	$(MAKE) BOARD=zgbt1281a2uart0 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

zgbt1281a2uart1:
	$(MAKE) BOARD=zgbt1281a2uart1 MCU=atmega1281 F_CPU=8000000UL $(TARGETS)

zigduino:
	$(MAKE) BOARD=zigduino MCU=atmega128rfa1 F_CPU=16000000UL $(TARGETS)


clean:
	rm -rf $(OBJDIR)/*.o

# === internal rules ===================================================

# temporary output directory
$(OBJDIR):
	mkdir -p $@

$(LIBDIR):
	mkdir -p $@

# radio library
RADIOSRC=$(wildcard libradio/*.c)
RADIOOBJ=$(addprefix $(OBJDIR)/, $(patsubst %.c, $(BOARD)_%.o, $(notdir $(RADIOSRC))))
RADIOLIB=$(LIBDIR)/libradio_$(BOARD).a

__libradio__: $(RADIOLIB)
$(RADIOLIB): $(RADIOOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(OBJDIR)/$(BOARD)_%.o : libradio/%.c ;
	$(CC)  -fno-inline $(CCFLAGS) -o $@ -c $<


# ioutil library
IOUTILSRC=$(wildcard libioutil/*.c)
IOUTILOBJ=$(addprefix $(OBJDIR)/, $(patsubst %.c, $(BOARD)_%.o, $(notdir $(IOUTILSRC))))
IOUTILLIB=$(LIBDIR)/libio_$(BOARD).a

__libioutil__: $(IOUTILLIB)

$(IOUTILLIB): $(IOUTILOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(OBJDIR)/$(BOARD)_%.o : libioutil/%.c ;
	$(CC) $(CCFLAGS) -o $@ -c $<
