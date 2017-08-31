
// --------------------------------------------------------------------

module DE2_70_Default
	(
	
		
		////////////////////	LCD Module 16X2		////////////////
		oLCD_ON,							//	LCD Power ON/OFF
		oLCD_BLON,						//	LCD Back Light ON/OFF
		oLCD_RW,							//	LCD Read/Write Select, 0 = Write, 1 = Read
		oLCD_EN,							//	LCD Enable
		oLCD_RS,							//	LCD Command/Data Select, 0 = Command, 1 = Data
		LCD_D,							//	LCD Data bus 8 bits
		
	   
	);


////////////////////	LCD Module 16X2	////////////////////////////
inout	[7:0]		LCD_D;					//	LCD Data bus 8 bits
output			oLCD_ON;					//	LCD Power ON/OFF
output			oLCD_BLON;				//	LCD Back Light ON/OFF
output			oLCD_RW;					//	LCD Read/Write Select, 0 = Write, 1 = Read
output			oLCD_EN;					//	LCD Enable
output			oLCD_RS;					//	LCD Command/Data Select, 0 = Command, 1 = Data

// DEFAULT LCD       //

wire      LCD_ON_1  ;
wire      LCD_BLON_1;
wire [7:0]LCD_D_1   ;
wire      LCD_RW_1  ;
wire      LCD_EN_1  ;
wire      LCD_RS_1  ;


assign LCD_ON_1 = 1'b1;
assign LCD_BLON_1 = 1'b1;

// DEFAULT FLASH  TEST //

flash_default_tester flash1(
    //CONTROL SIDE //
	.iDEFAULT    (iIRDA_RXD ),
	.iBUSSW      (iKEY[0]  ),
	.iTRIKEY     (iKEY[3]|iKEY[1]  ),
	.iCLK_28     (iCLK_28  ),

    //FLASH ROM SIDE //
	.FLASH_DQ      (FLASH_DQ      ),		
	.FLASH_DQ15_AM1(FLASH_DQ15_AM1),	
	.oFLASH_A      (oFLASH_A      ),
	.iFLASH_RY_N   (iFLASH_RY_N   ),
	.oFLASH_WE_N   (oFLASH_WE_N   ),	
	.oFLASH_RST_N  (oFLASH_RST_N  ),	
	.oFLASH_WP_N   (oFLASH_WP_N   ),	
	.oFLASH_BYTE_N (oFLASH_BYTE_N ),	
	.oFLASH_OE_N   (oFLASH_OE_N   ),	
	.oFLASH_CE_N   (oFLASH_CE_N   ),	
             
	//LCD SIDE//
	.oLCD_ON  (oLCD_ON  ),
	.oLCD_BLON(oLCD_BLON),
	.LCD_D    (LCD_D    ),
	.oLCD_RW  (oLCD_RW  ),
	.oLCD_EN  (oLCD_EN  ),
	.oLCD_RS  (oLCD_RS  ),

    //DEFAULT SIDE//
	.iLCD_ON_1  (LCD_ON_1  ),
	.iLCD_BLON_1(LCD_BLON_1),
	.LCD_D_1    (LCD_D_1    ),
	.iLCD_RW_1  (LCD_RW_1  ),
	.iLCD_EN_1  (LCD_EN_1  ),
	.iLCD_RS_1  (LCD_RS_1  )

);        

LCD_TEST 			u5	(	//	Host Side
							.iCLK(iCLK_50),
							.iRST_N(DLY_RST),
							//	LCD Side
							.LCD_DATA(LCD_D_1),
							.LCD_RW(LCD_RW_1),
							.LCD_EN(LCD_EN_1),
							.LCD_RS(LCD_RS_1)	);


endmodule

