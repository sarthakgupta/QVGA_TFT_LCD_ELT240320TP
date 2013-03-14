//*************************************************
//	Test ELT240320TP 240 x 320 Color LCD
//	@file 	ELT240320TP.c
//	@author Teerapong Tanadechopon [ultra_mcu@msn.com]	
// 	@since  2008 Oct 30
//	@notes	Microchip MPLAB IDE v8.01
//	@notes	Microchip C30 v3.02
//	@notes	This source code modify from the "ELT240320TP_DEMO_AVR(www.ThaiEasyElec.com)"
//			for ARM Cortex M3 Controller
//*************************************************\

#include "ELT240320TP.h"
#include "font_courier.h"
//===========================================
//	Global Variable
//===========================================

ts_pos_t offsetx,offsety;
ts_pos_t ts_margin_xl = 0;
ts_pos_t ts_margin_xr = TS_SIZE_X - 1;
ts_pos_t ts_margin_yu = 0;
ts_pos_t ts_margin_yl = TS_SIZE_Y - 1;

word font_color;
word back_color;
byte char_buf[FONT_BIT_WIDTH][FONT_BYTE_HIGHT];




//To print a user defined string
void TSLCDPrintStr(byte line,byte column,char *str,ts_mode_t mode)
{
	int i = 0;
	ts_pos_t posx,posy;
	posx = offsetx + column*FONT_WIDTH;
	posy = offsety + line*FONT_HEIGHT;

	while(str[i])
	{
		TSLCDCharDisp(str[i],posx,posy,mode);
		posx += FONT_WIDTH;
		i++;
	}
}

//To print a user defined integer
void TSLCDPrintNumber(byte line,byte column,int n,ts_mode_t mode)
{
	int i = 0;
	char ch;
	ts_pos_t posx,posy;
	posx = offsetx + column*FONT_WIDTH;
	posy = offsety + line*FONT_HEIGHT;

	ch = (char)(48+n);

	TSLCDCharDisp(ch,posx,posy,mode);
	posx += FONT_WIDTH;


}

//Print user image
//To print a user image, store it as an array of 16 bit values
//(ex-sx) and (ey-sy) should be equal to the dimension of the image in pixels
void TSLCDShowPic(ts_pos_t sx,ts_pos_t ex,ts_pos_t sy,ts_pos_t ey,const unsigned short

*pic,ts_mode_t mode)
{
	unsigned long k = 0;
	unsigned short color;
	unsigned int x,y;
	unsigned int i,j;
	if (sx < ts_margin_xl)
		sx = ts_margin_xl;
	if (ex > ts_margin_xr)
		ex = ts_margin_xr;
	if (sy < ts_margin_yu)
		sy = ts_margin_yu;
	if (ey > ts_margin_yl)			 
		ey = ts_margin_yl;

	TSLCDOutIns(TS_INS_START_ADX);
	TSLCDOutDat(sx);
	TSLCDOutIns(TS_INS_END_ADX);
	TSLCDOutDat(ex);
	TSLCDOutIns(TS_INS_GRAM_ADX);
	TSLCDOutDat(sx);
	x = ex - sx + 1;

#ifndef TS_ORN_PORTRAIT
	sy = TS_SIZE_Y - 1 - sy; 	// mirror start y address
	ey = TS_SIZE_Y - 1 - ey; 	// mirror end y address
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);//fix from bug of v1_00
	y = sy - ey + 1;
#else
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);
	y = ey - sy + 1;
#endif

	TSLCDOutIns(TS_INS_RW_GRAM);

	if (mode == TS_MODE_FULL)
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				TSLCDOutDat(pic[k]);
				k++;
			}
	}
	else
	if (mode == TS_MODE_NORMAL)
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				if (pic[k] == TS_COL_WHITE)
				{
					color = TSLCDInDat(); 		// ignore invalid data
					color = TSLCDInDat();
					TSLCDOutDat(color);
				}
				else
				{
					TSLCDOutDat(pic[k]);
				}
				k++;
			}
	}
}

void TSLCDFillRect(ts_pos_t sx,ts_pos_t ex,ts_pos_t sy,ts_pos_t ey,word color,ts_mode_t

mode)
{
	word x,y;
	word i,j;
	if (sx < ts_margin_xl)
		sx = ts_margin_xl;
	if (ex > ts_margin_xr)
		ex = ts_margin_xr;
	if (sy < ts_margin_yu)
		sy = ts_margin_yu;
	if (ey > ts_margin_yl)			 
		ey = ts_margin_yl;

	TSLCDOutIns(TS_INS_START_ADX);
	TSLCDOutDat(sx);
	TSLCDOutIns(TS_INS_END_ADX);
	TSLCDOutDat(ex);
	TSLCDOutIns(TS_INS_GRAM_ADX);
	TSLCDOutDat(sx);
	x = ex - sx + 1;

#ifdef TS_ORN_PORTRAIT
	sy = TS_SIZE_Y - 1 - sy; 	// mirror start y address
	ey = TS_SIZE_Y - 1 - ey; 	// mirror end y address
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);//fix from bug of v1_00
	y = sy - ey + 1;
#else
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);
	y = ey - sy + 1;
#endif

	TSLCDOutIns(TS_INS_RW_GRAM);

	if ((mode == TS_MODE_NORMAL) || (mode == TS_MODE_FULL))
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				TSLCDOutDat(color);
			}
	}
	else
	if (mode == TS_MODE_INVERSE)
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				color = TSLCDInDat(); 		// ignore invalid data
				color = TSLCDInDat();
				TSLCDOutDat(~color);
			}
	}
}

void TSLCDSetFontColor(word color) //set text's color
{
	font_color = color;
}

void TSLCDSetBackColor(word color) //set back color for TS_MODE_FULL
{
	back_color = color;
}


void TSLCDFillCirc(ts_pos_t cx,ts_pos_t cy,ts_pos_t rad,word color, ts_mode_t mode) //draw a circle
{
#ifndef TS_ORN_PORTRAIT
	int sy_buf,ey_buf;
#endif
	int sx,sy,ex,ey;
	int i,j;
	word color_buf;
	word rad2 = rad*rad;
	sx = cx - rad;
	ex = cx + rad;
	sy = cy - rad;
	ey = cy + rad;

	if (sx < ts_margin_xl)
		sx = ts_margin_xl;
	if (ex > ts_margin_xr)
		ex = ts_margin_xr;
	if (sy < ts_margin_yu)
		sy = ts_margin_yu;
	if (ey > ts_margin_yl)			 
		ey = ts_margin_yl;

	TSLCDOutIns(TS_INS_START_ADX);
	TSLCDOutDat(sx);
	TSLCDOutIns(TS_INS_END_ADX);
	TSLCDOutDat(ex);
	TSLCDOutIns(TS_INS_GRAM_ADX);
	TSLCDOutDat(sx);

#ifndef TS_ORN_PORTRAIT
	sy_buf = TS_SIZE_Y - 1 - sy; 	// mirror start y address
	ey_buf = TS_SIZE_Y - 1 - ey; 	// mirror end y address
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(ey_buf);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(sy_buf);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy_buf);//fix from bug of v1_00
#else
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);
#endif

	TSLCDOutIns(TS_INS_RW_GRAM);

	if (mode == TS_MODE_NORMAL)
	{
		for (j=sy-cy; j<=ey-cy; j++)
			for (i=sx-cx; i<=ex-cx; i++)
			{
				if ((i)*(i) + (j)*(j) < rad2)
				{
					TSLCDOutDat(color);
				}
				else
				{
					color_buf = TSLCDInDat();
					TSLCDOutDat(color_buf);
				}
			}
	}
	else
	if (mode == TS_MODE_INVERSE)
	{
		for (j=sy-cy; j<=ey-cy; j++)
			for (i=sx-cx; i<=ex-cx; i++)
			{
				if ((i)*(i) + (j)*(j) < rad2)
				{
					color_buf = TSLCDInDat(); 		// ignore invalid data
					color_buf = TSLCDInDat();
					TSLCDOutDat(~color_buf);
				}
				else
				{
					color_buf = TSLCDInDat(); 		// ignore invalid data
					color_buf = TSLCDInDat();
					TSLCDOutDat(color_buf);
				}
			}
	}
	else
	if (mode == TS_MODE_FULL)
	{
		for (j=sy-cy; j<=ey-cy; j++)
			for (i=sx-cx; i<=ex-cx; i++)
			{
				if ((i)*(i) + (j)*(j) < rad2)
				{
					TSLCDOutDat(color);
				}
				else
				{
					TSLCDOutDat(back_color);
				}
			}
	}
}


void TSLCDSetMargins(ts_pos_t xl,ts_pos_t xr,ts_pos_t yu,ts_pos_t yl) //set margins for FillRect,FillCirc
{
	ts_margin_xl = xl;
	ts_margin_xr = xr;
	ts_margin_yu = yu;
	ts_margin_yl = yl;
}

void TSLCDSetMarginsDefault(void) //Reset margins to default value
{
	ts_margin_xl = 0;
	ts_margin_xr = TS_SIZE_X - 1;
	ts_margin_yu = 0;
	ts_margin_yl = TS_SIZE_Y - 1;
}
byte buf_read(byte column,byte row)
{
	byte read_pixel;
	
	if (row < 8)
	{
		read_pixel = (char_buf[column][0] >> (7-row)) & 0x01;
	}
	else
	{
		row = row - 8;
		read_pixel = (char_buf[column][1] >> (7-row)) & 0x01;
	}
	return (read_pixel);
}

void buf_store(byte charactor)
{
	byte i,j;
	int char_p = charactor*FONT_SIZE;	// FONT_SIZE = 16

	for (i=0; i<FONT_BIT_WIDTH; i++)
		for (j=0; j<FONT_BYTE_HIGHT; j++)
		{
			char_buf[i][j] = font[char_p];
			char_p++;
		}
}

void TSLCDCharDisp(char charactor,ts_pos_t sx,ts_pos_t sy,ts_mode_t mode) //low level function to print a character on LCD
{
	word x,y;
	byte i,j;
	ts_pos_t ex,ey;
	word c;

	ex = sx + FONT_WIDTH - 1;
	ey = sy + FONT_HEIGHT - 1;

	buf_store(charactor - 0x20);

	TSLCDOutIns(TS_INS_START_ADX);
	TSLCDOutDat(sx);
	TSLCDOutIns(TS_INS_END_ADX);
	TSLCDOutDat(ex);
	TSLCDOutIns(TS_INS_GRAM_ADX);
	TSLCDOutDat(sx);
	x = ex - sx + 1;

#ifndef TS_ORN_PORTRAIT
	sy = TS_SIZE_Y - 1 - sy; 	// mirror start y address
	ey = TS_SIZE_Y - 1 - ey; 	// mirror end y address
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);//fix from bug of v1_00
	y = sy - ey + 1;
#else
	TSLCDOutIns(TS_INS_START_ADY);
	TSLCDOutDat(sy);
	TSLCDOutIns(TS_INS_END_ADY);
	TSLCDOutDat(ey);
	TSLCDOutIns(TS_INS_GRAM_ADY);
	TSLCDOutDat(sy);
	y = ey - sy + 1;
#endif

	TSLCDOutIns(TS_INS_RW_GRAM);

	if (mode == TS_MODE_NORMAL)
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				delay(100);
				if (buf_read(i,j))
				{
					TSLCDOutDat(font_color);
				}
				else
				{
					c = TSLCDInDat(); 		// ignore invalid data
					c = TSLCDInDat();
					TSLCDOutDat(c);
				}
			}
	}
	else
	if (mode == TS_MODE_INVERSE)
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				c = TSLCDInDat(); 			// ignore invalid data
				c = TSLCDInDat();
				if (buf_read(i,j))
				{
					TSLCDOutDat(~c);
				}
				else
				{
					TSLCDOutDat(c);
				}
			}
	}
	else
	if (mode == TS_MODE_FULL)
	{
		for (j=0; j<y; j++)
			for (i=0; i<x; i++)
			{
				if (buf_read(i,j))
				{
					TSLCDOutDat(font_color);
				}
				else
				{
					TSLCDOutDat(back_color);
				}
			}
	}
}

void TSLCDOutDat(word dat)
{

	setBitRS;		//Set bit RS for data;
	setBitRD;		//Read Disable
	clrBitWR;		//Write Enable
	
	
	LCD_T_Data = 0xFFFF;	//Set TRIS Data to output

	LCD_W_Data = dat>>8;	//write data high byte
	clrBitCS;
	setBitCS;

	
	LCD_W_Data = dat;		//write data low byte
	clrBitCS;
	setBitCS;

	setBitWR;

	LCD_T_Data = 0x0000;	//Set TRIS Data to input
}

void TSLCDOutDat2(byte dath,byte datl)
{
	setBitRS;	//Set bit RS for data;
	setBitRD;	//Read Disable
	clrBitWR;	//Write Enable
	
	LCD_T_Data = 0xFFFF;	//Set TRIS Data to output


	LCD_W_Data = dath;	//write data high byte
	clrBitCS;
	setBitCS;


	LCD_W_Data = datl;	//write data low byte
	clrBitCS;
	setBitCS;

	setBitWR;

	LCD_T_Data = 0x0000;		//Set TRIS Data to input
}

void TSLCDOutIns(word ins)
{
	
	clrBitRS;				//clear bit RS instruction
	setBitRD;				//Read Disable
	clrBitWR;				//write enable

	LCD_T_Data = 0xFFFF;	//TRIS Data output
	
	LCD_W_Data = ins >> 8;	//write high byte
	clrBitCS;
	setBitCS;

	LCD_W_Data = ins;		//write low byte
	clrBitCS;
	setBitCS;

	setBitWR;				//write disble

	LCD_T_Data = 0x0000;	//Set TRIS Data to input
	
}

word TSLCDInDat()
{
	word dat = 0;
	LCD_T_Data = 0x0000;	//set TRIS Data to input
	setBitRS;				//set bit RS read data
	setBitWR;				//write diasble
	clrBitRD;				//read enable
	
	clrBitCS;clrBitCS;
	dat = LCD_R_Data;		//read high byte
	setBitCS;			

	dat = dat<<8;

	clrBitCS;clrBitCS;
	dat = dat | LCD_R_Data;	//read low byte
	setBitCS;

	setBitRD;

	return dat;
}

word TSLCDInIns()
{
	word ins = 0;
	LCD_T_Data = 0x0000;	//set TRIS Data to input
	clrBitRS;				//clear bit RS read instruction
	setBitWR;				//write diasble
	clrBitRD;				//read enable
	
	clrBitCS;clrBitCS;
	ins = LCD_R_Data;		//read high byte
	setBitCS;

	ins = ins<<8;

	clrBitCS;clrBitCS;
	ins = ins | LCD_R_Data;	//read low byte
	setBitCS;
	
	setBitRD;

	return ins;
}
//--------------------------------------------------------------------
//	Reset LCD
//--------------------------------------------------------------------
void TSLCDRst()
{
	clrBitRST;
	delay(5000);
	setBitRST;	
}
//--------------------------------------------------------------------
//	Initial LCD
//--------------------------------------------------------------------
void TSLCDInit()
{
	delay(1000);
	TSLCDOutIns(0x00E5);
	TSLCDOutDat(0x8000); 					//set the internal vcore voltage
	TSLCDOutIns(TS_INS_START_OSC);
	TSLCDOutDat(0x0001); 					//start oscillator 	
	delay(5000);

	TSLCDOutIns(TS_INS_DRIV_OUT_CTRL);
	TSLCDOutDat(0x0000); 					//set SS, SM
	TSLCDOutIns(TS_INS_DRIV_WAV_CTRL);
	TSLCDOutDat(0x0700); 					//set 1 line inversion

	TSLCDOutIns(TS_INS_ENTRY_MOD);
	TSLCDOutDat(TS_VAL_ENTRY_MOD);			//set GRAM write direction, BGR=0

	TSLCDOutIns(TS_INS_RESIZE_CTRL);
	TSLCDOutDat(0x0000); 					//no resizing

	TSLCDOutIns(TS_INS_DISP_CTRL2);
	TSLCDOutDat(0x0202); 					//front & back porch periods = 2
	TSLCDOutIns(TS_INS_DISP_CTRL3);
	TSLCDOutDat(0x0000); 					
	TSLCDOutIns(TS_INS_DISP_CTRL4);
	TSLCDOutDat(0x0000); 					
	TSLCDOutIns(TS_INS_RGB_DISP_IF_CTRL1);
	TSLCDOutDat(0x0000); 					//select system interface


	TSLCDOutIns(TS_INS_FRM_MARKER_POS);
	TSLCDOutDat(0x0000); 					
	TSLCDOutIns(TS_INS_RGB_DISP_IF_CTRL2);
	TSLCDOutDat(0x0000);					
	
	TSLCDOutIns(TS_INS_POW_CTRL1);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_POW_CTRL2);
	TSLCDOutDat(0x0000); 					
	TSLCDOutIns(TS_INS_POW_CTRL3);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_POW_CTRL4);
	TSLCDOutDat(0x0000); 					
	delay(20000);

	TSLCDOutIns(TS_INS_POW_CTRL1);
	TSLCDOutDat(0x17B0);
	TSLCDOutIns(TS_INS_POW_CTRL2);
	TSLCDOutDat(0x0137); 					
	delay(5000);

	TSLCDOutIns(TS_INS_POW_CTRL3);
	TSLCDOutDat(0x013C);
	delay(5000);

	TSLCDOutIns(TS_INS_POW_CTRL4);
	TSLCDOutDat(0x1400);
	TSLCDOutIns(TS_INS_POW_CTRL7);
	TSLCDOutDat(0x0007);
	delay(50000);

	TSLCDOutIns(TS_INS_GRAM_HOR_AD);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_GRAM_VER_AD);
	TSLCDOutDat(0x0000);

	TSLCDOutIns(TS_INS_GAMMA_CTRL1);
	TSLCDOutDat(0x0007);
	TSLCDOutIns(TS_INS_GAMMA_CTRL2);
	TSLCDOutDat(0x0504);
	TSLCDOutIns(TS_INS_GAMMA_CTRL3);
	TSLCDOutDat(0x0703);
	TSLCDOutIns(TS_INS_GAMMA_CTRL4);
	TSLCDOutDat(0x0002);
	TSLCDOutIns(TS_INS_GAMMA_CTRL5);
	TSLCDOutDat(0x0707);
	TSLCDOutIns(TS_INS_GAMMA_CTRL6);
	TSLCDOutDat(0x0406);
	TSLCDOutIns(TS_INS_GAMMA_CTRL7);
	TSLCDOutDat(0x0006);
	TSLCDOutIns(TS_INS_GAMMA_CTRL8);
	TSLCDOutDat(0x0404);
	TSLCDOutIns(TS_INS_GAMMA_CTRL9);
	TSLCDOutDat(0x0700);
	TSLCDOutIns(TS_INS_GAMMA_CTRL10);
	TSLCDOutDat(0x0A08);

	TSLCDOutIns(TS_INS_HOR_START_AD);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_HOR_END_AD);
	TSLCDOutDat(0x00EF);
	TSLCDOutIns(TS_INS_VER_START_AD);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_VER_END_AD);
	TSLCDOutDat(0x013F);
	TSLCDOutIns(TS_INS_GATE_SCAN_CTRL1);
	TSLCDOutDat(0x2700);
	TSLCDOutIns(TS_INS_GATE_SCAN_CTRL2);
	TSLCDOutDat(0x0001);
	TSLCDOutIns(TS_INS_GATE_SCAN_CTRL3);
	TSLCDOutDat(0x0000);

	TSLCDOutIns(TS_INS_PART_IMG1_DISP_POS);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PART_IMG1_START_AD);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PART_IMG1_END_AD);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PART_IMG2_DISP_POS);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PART_IMG2_START_AD);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PART_IMG2_END_AD);
	TSLCDOutDat(0x0000);

	TSLCDOutIns(TS_INS_PANEL_IF_CTRL1);
	TSLCDOutDat(0x0010);
	TSLCDOutIns(TS_INS_PANEL_IF_CTRL2);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PANEL_IF_CTRL3);
	TSLCDOutDat(0x0003);
	TSLCDOutIns(TS_INS_PANEL_IF_CTRL4);
	TSLCDOutDat(0x0110);
	TSLCDOutIns(TS_INS_PANEL_IF_CTRL5);
	TSLCDOutDat(0x0000);
	TSLCDOutIns(TS_INS_PANEL_IF_CTRL6);
	TSLCDOutDat(0x0000);

	TSLCDOutIns(TS_INS_DISP_CTRL1);
	TSLCDOutDat(0x0173);
}

//---------------------------------------------------
//	Function Delay
//---------------------------------------------------
void delay(unsigned long int count1)
{
  while(count1 > 0) {count1--;}					// Loop Decrease Counter	
}
