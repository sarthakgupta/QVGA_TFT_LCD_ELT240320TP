//*************************************************
//	Test ELT240320TP 240 x 320 Color LCD
//	@file 	ELT240320TP.h
//	@author Teerapong Tanadechopon [ultra_mcu@msn.com]	
// 	@since  2008 Oct 30
//	@notes	Microchip MPLAB IDE v8.01
//	@notes	Microchip C30 v3.02
//	@notes	This source code modify from the "ELT240320TP_DEMO_AVR (www.ThaiEasyElec.com)" 
//			for ARM Cortex M3 Controller
//*************************************************\

#ifndef _TSLCD_ELT240320TP_H_
#define _TSLCD_ELT240320TP_H_


//Controller used is LM3S608 of Texas Instruments
#include "inc/lm3s608.h"


//Comment the following line to switch to landscape mode
#define TS_ORN_PORTRAIT			//for Rotate Screen

//===========================================
//	Define Data Type
//===========================================
#define word unsigned int
#define byte unsigned char
#define bool byte

#define true 1
#define false 0
#define ts_pos_t	int

typedef enum
{
	TS_MODE_NORMAL,
	TS_MODE_INVERSE,
	TS_MODE_FULL,
} ts_mode_t;




//===========================================
//	LCD Define
//===========================================
//RST Pin is connected to PA0
#define setBitRST GPIO_PORTD_DATA_R |= 0x01
#define clrBitRST GPIO_PORTD_DATA_R &= ~(0x01)

//BL pin is connected to PC4
#define setBitBL GPIO_PORTC_DATA_R |= 0x10
#define clrBitBL GPIO_PORTC_DATA_R &= ~(0x10)

//CS Active Low
//CS pin connected to PA3
#define setBitCS GPIO_PORTA_DATA_R |= 0x08
#define clrBitCS GPIO_PORTA_DATA_R &= ~(0x08)

//RS high for data, low for instruction
//RS pin is connected to PA5
#define setBitRS GPIO_PORTA_DATA_R |= 0x20
#define clrBitRS GPIO_PORTA_DATA_R &= ~(0x20)

//WR Active Low
//WR pin is connected to PA4
#define setBitWR GPIO_PORTA_DATA_R |= 0x10
#define clrBitWR GPIO_PORTA_DATA_R &= ~(0x10)	

//RD Active Low
//RD pin is connected to PA2
#define setBitRD GPIO_PORTA_DATA_R |= 0x04
#define clrBitRD GPIO_PORTA_DATA_R &= ~(0x04)	



//===========================================
//	Pin Assignment
//===========================================
//-----LCD ELT240320TP-----
//PORT B is used as 8 bit Data bus

#define LCD_W_Data GPIO_PORTB_DATA_R
#define LCD_R_Data GPIO_PORTB_DATA_R
#define LCD_T_Data GPIO_PORTB_DIR_R 

//===========================================
//	LCD Constance 
//===========================================

#define TSLCDGetMarginXl()			ts_margin_xl
#define TSLCDGetMarginXr()			ts_margin_xr
#define TSLCDGetMarginYu()			ts_margin_yu
#define TSLCDGetMarginYl()			ts_margin_yl

#define FONT_BIT_WIDTH 8
#define FONT_BYTE_HIGHT 2
#define FONT_SIZE FONT_BIT_WIDTH*FONT_BYTE_HIGHT

#define FONT_WIDTH FONT_BIT_WIDTH
#define FONT_HEIGHT FONT_BYTE_HIGHT*8


#ifdef TS_ORN_PORTRAIT
	#define TS_SIZE_X					240
	#define TS_SIZE_Y					320
	#define TS_VAL_ENTRY_MOD			0x0030
	#define TS_INS_GRAM_ADX				TS_INS_GRAM_HOR_AD
	#define TS_INS_GRAM_ADY				TS_INS_GRAM_VER_AD
	#define TS_INS_START_ADX   			TS_INS_HOR_START_AD
	#define TS_INS_END_ADX   			TS_INS_HOR_END_AD
	#define TS_INS_START_ADY   			TS_INS_VER_START_AD
	#define TS_INS_END_ADY   			TS_INS_VER_END_AD
#else
	#define TS_SIZE_X					320
	#define TS_SIZE_Y					240
	#define TS_VAL_ENTRY_MOD			0x0028
	#define TS_INS_GRAM_ADX				TS_INS_GRAM_VER_AD
	#define TS_INS_GRAM_ADY				TS_INS_GRAM_HOR_AD
	#define TS_INS_START_ADX   			TS_INS_VER_START_AD
	#define TS_INS_END_ADX   			TS_INS_VER_END_AD
	#define TS_INS_START_ADY   			TS_INS_HOR_START_AD
	#define TS_INS_END_ADY   			TS_INS_HOR_END_AD
#endif

#define TS_INS_START_OSC			0x00
#define TS_INS_DRIV_OUT_CTRL		0x01
#define TS_INS_DRIV_WAV_CTRL		0x02
#define TS_INS_ENTRY_MOD			0x03
#define TS_INS_RESIZE_CTRL			0x04
#define TS_INS_DISP_CTRL1			0x07
#define TS_INS_DISP_CTRL2			0x08
#define TS_INS_DISP_CTRL3			0x09
#define TS_INS_DISP_CTRL4			0x0A
#define TS_INS_RGB_DISP_IF_CTRL1	0x0C
#define TS_INS_FRM_MARKER_POS		0x0D
#define TS_INS_RGB_DISP_IF_CTRL2	0x0F
#define TS_INS_POW_CTRL1			0x10
#define TS_INS_POW_CTRL2			0x11
#define TS_INS_POW_CTRL3			0x12
#define TS_INS_POW_CTRL4			0x13
#define TS_INS_GRAM_HOR_AD			0x20
#define TS_INS_GRAM_VER_AD			0x21
#define TS_INS_RW_GRAM				0x22
#define TS_INS_POW_CTRL7			0x29
#define TS_INS_FRM_RATE_COL_CTRL	0x2B
#define TS_INS_GAMMA_CTRL1			0x30
#define TS_INS_GAMMA_CTRL2			0x31
#define TS_INS_GAMMA_CTRL3			0x32
#define TS_INS_GAMMA_CTRL4			0x35 
#define TS_INS_GAMMA_CTRL5			0x36
#define TS_INS_GAMMA_CTRL6			0x37
#define TS_INS_GAMMA_CTRL7			0x38
#define TS_INS_GAMMA_CTRL8			0x39
#define TS_INS_GAMMA_CTRL9			0x3C
#define TS_INS_GAMMA_CTRL10			0x3D
#define TS_INS_HOR_START_AD			0x50
#define TS_INS_HOR_END_AD			0x51
#define TS_INS_VER_START_AD			0x52
#define TS_INS_VER_END_AD			0x53
#define TS_INS_GATE_SCAN_CTRL1		0x60
#define TS_INS_GATE_SCAN_CTRL2		0x61
#define TS_INS_GATE_SCAN_CTRL3		0x6A
#define TS_INS_PART_IMG1_DISP_POS	0x80
#define TS_INS_PART_IMG1_START_AD	0x81
#define TS_INS_PART_IMG1_END_AD		0x82
#define TS_INS_PART_IMG2_DISP_POS	0x83
#define TS_INS_PART_IMG2_START_AD	0x84
#define TS_INS_PART_IMG2_END_AD		0x85
#define TS_INS_PANEL_IF_CTRL1		0x90
#define TS_INS_PANEL_IF_CTRL2		0x92
#define TS_INS_PANEL_IF_CTRL3		0x93
#define TS_INS_PANEL_IF_CTRL4		0x95
#define TS_INS_PANEL_IF_CTRL5		0x97
#define TS_INS_PANEL_IF_CTRL6		0x98


//===========================================
//	Color
//===========================================
#define TS_COL_RED					0x001F
#define TS_COL_GREEN				0x07E0
#define TS_COL_BLUE					0xF800
#define TS_COL_YELLOW				0x07FF
#define TS_COL_PURPLE				0xF81F
#define TS_COL_BLACK				0x0000
#define TS_COL_WHITE				0xFFFF
#define TS_COL_AQUA					0xFFEB



//=============================================
//	Prototype
//=============================================
void TSLCDPrintStr(byte line,byte column,char *str,ts_mode_t mode);
void TSLCDPrintNumber(byte line,byte column,int n,ts_mode_t mode);
void TSLCDShowPic(ts_pos_t sx,ts_pos_t ex,ts_pos_t sy,ts_pos_t ey,const unsigned short *pic,ts_mode_t mode);
void TSLCDFillRect(ts_pos_t sx,ts_pos_t ex,ts_pos_t sy,ts_pos_t ey,word color,ts_mode_t mode);
void TSLCDSetFontColor(word color);
void TSLCDSetBackColor(word color);
void TSLCDFillCirc(ts_pos_t cx,ts_pos_t cy,ts_pos_t rad,word color, ts_mode_t mode);
void TSLCDSetMargins(ts_pos_t xl,ts_pos_t xr,ts_pos_t yu,ts_pos_t yl);
void TSLCDSetMarginsDefault(void);
byte buf_read(byte column,byte row);
void buf_store(byte charactor);
void TSLCDCharDisp(char charactor,ts_pos_t sx,ts_pos_t sy,ts_mode_t mode);
void TSLCDOutDat(word dat);
void TSLCDOutDat2(byte dath,byte datl);
void TSLCDOutIns(word ins);
word TSLCDInDat();
word TSLCDInIns();
void TSLCDRst();
void TSLCDInit();
void delay(unsigned long int count1);

#endif
