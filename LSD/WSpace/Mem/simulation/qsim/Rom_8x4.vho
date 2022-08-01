-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/09/2021 00:33:40"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ram_32x8 IS
    PORT (
	writeClk : IN std_logic;
	writeEnable : IN std_logic;
	writeData : IN std_logic_vector(7 DOWNTO 0);
	address : IN std_logic_vector(4 DOWNTO 0);
	readData : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Ram_32x8;

ARCHITECTURE structure OF Ram_32x8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_writeClk : std_logic;
SIGNAL ww_writeEnable : std_logic;
SIGNAL ww_writeData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_readData : std_logic_vector(7 DOWNTO 0);
SIGNAL \readData[0]~output_o\ : std_logic;
SIGNAL \readData[1]~output_o\ : std_logic;
SIGNAL \readData[2]~output_o\ : std_logic;
SIGNAL \readData[3]~output_o\ : std_logic;
SIGNAL \readData[4]~output_o\ : std_logic;
SIGNAL \readData[5]~output_o\ : std_logic;
SIGNAL \readData[6]~output_o\ : std_logic;
SIGNAL \readData[7]~output_o\ : std_logic;
SIGNAL \writeClk~input_o\ : std_logic;
SIGNAL \writeData[0]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \s_memory~438_combout\ : std_logic;
SIGNAL \writeEnable~input_o\ : std_logic;
SIGNAL \s_memory~439_combout\ : std_logic;
SIGNAL \s_memory~190_q\ : std_logic;
SIGNAL \s_memory~440_combout\ : std_logic;
SIGNAL \s_memory~441_combout\ : std_logic;
SIGNAL \s_memory~222_q\ : std_logic;
SIGNAL \s_memory~442_combout\ : std_logic;
SIGNAL \s_memory~443_combout\ : std_logic;
SIGNAL \s_memory~158_q\ : std_logic;
SIGNAL \s_memory~270_combout\ : std_logic;
SIGNAL \s_memory~444_combout\ : std_logic;
SIGNAL \s_memory~445_combout\ : std_logic;
SIGNAL \s_memory~254_q\ : std_logic;
SIGNAL \s_memory~271_combout\ : std_logic;
SIGNAL \s_memory~446_combout\ : std_logic;
SIGNAL \s_memory~447_combout\ : std_logic;
SIGNAL \s_memory~214_q\ : std_logic;
SIGNAL \s_memory~448_combout\ : std_logic;
SIGNAL \s_memory~449_combout\ : std_logic;
SIGNAL \s_memory~182_q\ : std_logic;
SIGNAL \s_memory~450_combout\ : std_logic;
SIGNAL \s_memory~451_combout\ : std_logic;
SIGNAL \s_memory~150_q\ : std_logic;
SIGNAL \s_memory~272_combout\ : std_logic;
SIGNAL \s_memory~452_combout\ : std_logic;
SIGNAL \s_memory~453_combout\ : std_logic;
SIGNAL \s_memory~246_q\ : std_logic;
SIGNAL \s_memory~273_combout\ : std_logic;
SIGNAL \s_memory~454_combout\ : std_logic;
SIGNAL \s_memory~455_combout\ : std_logic;
SIGNAL \s_memory~174_q\ : std_logic;
SIGNAL \s_memory~456_combout\ : std_logic;
SIGNAL \s_memory~457_combout\ : std_logic;
SIGNAL \s_memory~206_q\ : std_logic;
SIGNAL \s_memory~458_combout\ : std_logic;
SIGNAL \s_memory~459_combout\ : std_logic;
SIGNAL \s_memory~142_q\ : std_logic;
SIGNAL \s_memory~274_combout\ : std_logic;
SIGNAL \s_memory~460_combout\ : std_logic;
SIGNAL \s_memory~461_combout\ : std_logic;
SIGNAL \s_memory~238_q\ : std_logic;
SIGNAL \s_memory~275_combout\ : std_logic;
SIGNAL \s_memory~276_combout\ : std_logic;
SIGNAL \s_memory~462_combout\ : std_logic;
SIGNAL \s_memory~463_combout\ : std_logic;
SIGNAL \s_memory~230_q\ : std_logic;
SIGNAL \s_memory~464_combout\ : std_logic;
SIGNAL \s_memory~465_combout\ : std_logic;
SIGNAL \s_memory~198_q\ : std_logic;
SIGNAL \s_memory~466_combout\ : std_logic;
SIGNAL \s_memory~467_combout\ : std_logic;
SIGNAL \s_memory~166_q\ : std_logic;
SIGNAL \s_memory~277_combout\ : std_logic;
SIGNAL \s_memory~468_combout\ : std_logic;
SIGNAL \s_memory~469_combout\ : std_logic;
SIGNAL \s_memory~262_q\ : std_logic;
SIGNAL \s_memory~278_combout\ : std_logic;
SIGNAL \s_memory~279_combout\ : std_logic;
SIGNAL \s_memory~470_combout\ : std_logic;
SIGNAL \s_memory~94_q\ : std_logic;
SIGNAL \s_memory~471_combout\ : std_logic;
SIGNAL \s_memory~86_q\ : std_logic;
SIGNAL \s_memory~472_combout\ : std_logic;
SIGNAL \s_memory~78_q\ : std_logic;
SIGNAL \s_memory~280_combout\ : std_logic;
SIGNAL \s_memory~473_combout\ : std_logic;
SIGNAL \s_memory~102_q\ : std_logic;
SIGNAL \s_memory~281_combout\ : std_logic;
SIGNAL \s_memory~474_combout\ : std_logic;
SIGNAL \s_memory~54_q\ : std_logic;
SIGNAL \s_memory~475_combout\ : std_logic;
SIGNAL \s_memory~62_q\ : std_logic;
SIGNAL \s_memory~476_combout\ : std_logic;
SIGNAL \s_memory~46_q\ : std_logic;
SIGNAL \s_memory~282_combout\ : std_logic;
SIGNAL \s_memory~477_combout\ : std_logic;
SIGNAL \s_memory~70_q\ : std_logic;
SIGNAL \s_memory~283_combout\ : std_logic;
SIGNAL \s_memory~478_combout\ : std_logic;
SIGNAL \s_memory~30_q\ : std_logic;
SIGNAL \s_memory~479_combout\ : std_logic;
SIGNAL \s_memory~22_q\ : std_logic;
SIGNAL \s_memory~480_combout\ : std_logic;
SIGNAL \s_memory~14_q\ : std_logic;
SIGNAL \s_memory~284_combout\ : std_logic;
SIGNAL \s_memory~481_combout\ : std_logic;
SIGNAL \s_memory~38_q\ : std_logic;
SIGNAL \s_memory~285_combout\ : std_logic;
SIGNAL \s_memory~286_combout\ : std_logic;
SIGNAL \s_memory~482_combout\ : std_logic;
SIGNAL \s_memory~118_q\ : std_logic;
SIGNAL \s_memory~483_combout\ : std_logic;
SIGNAL \s_memory~126_q\ : std_logic;
SIGNAL \s_memory~484_combout\ : std_logic;
SIGNAL \s_memory~110_q\ : std_logic;
SIGNAL \s_memory~287_combout\ : std_logic;
SIGNAL \s_memory~485_combout\ : std_logic;
SIGNAL \s_memory~134_q\ : std_logic;
SIGNAL \s_memory~288_combout\ : std_logic;
SIGNAL \s_memory~289_combout\ : std_logic;
SIGNAL \s_memory~290_combout\ : std_logic;
SIGNAL \writeData[1]~input_o\ : std_logic;
SIGNAL \s_memory~183_q\ : std_logic;
SIGNAL \s_memory~215_q\ : std_logic;
SIGNAL \s_memory~151_q\ : std_logic;
SIGNAL \s_memory~291_combout\ : std_logic;
SIGNAL \s_memory~247_q\ : std_logic;
SIGNAL \s_memory~292_combout\ : std_logic;
SIGNAL \s_memory~223_q\ : std_logic;
SIGNAL \s_memory~191_q\ : std_logic;
SIGNAL \s_memory~159_q\ : std_logic;
SIGNAL \s_memory~293_combout\ : std_logic;
SIGNAL \s_memory~255_q\ : std_logic;
SIGNAL \s_memory~294_combout\ : std_logic;
SIGNAL \s_memory~207_q\ : std_logic;
SIGNAL \s_memory~175_q\ : std_logic;
SIGNAL \s_memory~143_q\ : std_logic;
SIGNAL \s_memory~295_combout\ : std_logic;
SIGNAL \s_memory~239_q\ : std_logic;
SIGNAL \s_memory~296_combout\ : std_logic;
SIGNAL \s_memory~297_combout\ : std_logic;
SIGNAL \s_memory~199_q\ : std_logic;
SIGNAL \s_memory~231_q\ : std_logic;
SIGNAL \s_memory~167_q\ : std_logic;
SIGNAL \s_memory~298_combout\ : std_logic;
SIGNAL \s_memory~263_q\ : std_logic;
SIGNAL \s_memory~299_combout\ : std_logic;
SIGNAL \s_memory~300_combout\ : std_logic;
SIGNAL \s_memory~63_q\ : std_logic;
SIGNAL \s_memory~55_q\ : std_logic;
SIGNAL \s_memory~47_q\ : std_logic;
SIGNAL \s_memory~301_combout\ : std_logic;
SIGNAL \s_memory~71_q\ : std_logic;
SIGNAL \s_memory~302_combout\ : std_logic;
SIGNAL \s_memory~87_q\ : std_logic;
SIGNAL \s_memory~95_q\ : std_logic;
SIGNAL \s_memory~79_q\ : std_logic;
SIGNAL \s_memory~303_combout\ : std_logic;
SIGNAL \s_memory~103_q\ : std_logic;
SIGNAL \s_memory~304_combout\ : std_logic;
SIGNAL \s_memory~23_q\ : std_logic;
SIGNAL \s_memory~31_q\ : std_logic;
SIGNAL \s_memory~15_q\ : std_logic;
SIGNAL \s_memory~305_combout\ : std_logic;
SIGNAL \s_memory~39_q\ : std_logic;
SIGNAL \s_memory~306_combout\ : std_logic;
SIGNAL \s_memory~307_combout\ : std_logic;
SIGNAL \s_memory~127_q\ : std_logic;
SIGNAL \s_memory~119_q\ : std_logic;
SIGNAL \s_memory~111_q\ : std_logic;
SIGNAL \s_memory~308_combout\ : std_logic;
SIGNAL \s_memory~135_q\ : std_logic;
SIGNAL \s_memory~309_combout\ : std_logic;
SIGNAL \s_memory~310_combout\ : std_logic;
SIGNAL \s_memory~311_combout\ : std_logic;
SIGNAL \writeData[2]~input_o\ : std_logic;
SIGNAL \s_memory~192_q\ : std_logic;
SIGNAL \s_memory~224_q\ : std_logic;
SIGNAL \s_memory~160_q\ : std_logic;
SIGNAL \s_memory~312_combout\ : std_logic;
SIGNAL \s_memory~256_q\ : std_logic;
SIGNAL \s_memory~313_combout\ : std_logic;
SIGNAL \s_memory~216_q\ : std_logic;
SIGNAL \s_memory~184_q\ : std_logic;
SIGNAL \s_memory~152_q\ : std_logic;
SIGNAL \s_memory~314_combout\ : std_logic;
SIGNAL \s_memory~248_q\ : std_logic;
SIGNAL \s_memory~315_combout\ : std_logic;
SIGNAL \s_memory~176_q\ : std_logic;
SIGNAL \s_memory~208_q\ : std_logic;
SIGNAL \s_memory~144_q\ : std_logic;
SIGNAL \s_memory~316_combout\ : std_logic;
SIGNAL \s_memory~240_q\ : std_logic;
SIGNAL \s_memory~317_combout\ : std_logic;
SIGNAL \s_memory~318_combout\ : std_logic;
SIGNAL \s_memory~232_q\ : std_logic;
SIGNAL \s_memory~200_q\ : std_logic;
SIGNAL \s_memory~168_q\ : std_logic;
SIGNAL \s_memory~319_combout\ : std_logic;
SIGNAL \s_memory~264_q\ : std_logic;
SIGNAL \s_memory~320_combout\ : std_logic;
SIGNAL \s_memory~321_combout\ : std_logic;
SIGNAL \s_memory~96_q\ : std_logic;
SIGNAL \s_memory~88_q\ : std_logic;
SIGNAL \s_memory~80_q\ : std_logic;
SIGNAL \s_memory~322_combout\ : std_logic;
SIGNAL \s_memory~104_q\ : std_logic;
SIGNAL \s_memory~323_combout\ : std_logic;
SIGNAL \s_memory~56_q\ : std_logic;
SIGNAL \s_memory~64_q\ : std_logic;
SIGNAL \s_memory~48_q\ : std_logic;
SIGNAL \s_memory~324_combout\ : std_logic;
SIGNAL \s_memory~72_q\ : std_logic;
SIGNAL \s_memory~325_combout\ : std_logic;
SIGNAL \s_memory~32_q\ : std_logic;
SIGNAL \s_memory~24_q\ : std_logic;
SIGNAL \s_memory~16_q\ : std_logic;
SIGNAL \s_memory~326_combout\ : std_logic;
SIGNAL \s_memory~40_q\ : std_logic;
SIGNAL \s_memory~327_combout\ : std_logic;
SIGNAL \s_memory~328_combout\ : std_logic;
SIGNAL \s_memory~120_q\ : std_logic;
SIGNAL \s_memory~128_q\ : std_logic;
SIGNAL \s_memory~112_q\ : std_logic;
SIGNAL \s_memory~329_combout\ : std_logic;
SIGNAL \s_memory~136_q\ : std_logic;
SIGNAL \s_memory~330_combout\ : std_logic;
SIGNAL \s_memory~331_combout\ : std_logic;
SIGNAL \s_memory~332_combout\ : std_logic;
SIGNAL \writeData[3]~input_o\ : std_logic;
SIGNAL \s_memory~185_q\ : std_logic;
SIGNAL \s_memory~217_q\ : std_logic;
SIGNAL \s_memory~153_q\ : std_logic;
SIGNAL \s_memory~333_combout\ : std_logic;
SIGNAL \s_memory~249_q\ : std_logic;
SIGNAL \s_memory~334_combout\ : std_logic;
SIGNAL \s_memory~225_q\ : std_logic;
SIGNAL \s_memory~193_q\ : std_logic;
SIGNAL \s_memory~161_q\ : std_logic;
SIGNAL \s_memory~335_combout\ : std_logic;
SIGNAL \s_memory~257_q\ : std_logic;
SIGNAL \s_memory~336_combout\ : std_logic;
SIGNAL \s_memory~209_q\ : std_logic;
SIGNAL \s_memory~177_q\ : std_logic;
SIGNAL \s_memory~145_q\ : std_logic;
SIGNAL \s_memory~337_combout\ : std_logic;
SIGNAL \s_memory~241_q\ : std_logic;
SIGNAL \s_memory~338_combout\ : std_logic;
SIGNAL \s_memory~339_combout\ : std_logic;
SIGNAL \s_memory~201_q\ : std_logic;
SIGNAL \s_memory~233_q\ : std_logic;
SIGNAL \s_memory~169_q\ : std_logic;
SIGNAL \s_memory~340_combout\ : std_logic;
SIGNAL \s_memory~265_q\ : std_logic;
SIGNAL \s_memory~341_combout\ : std_logic;
SIGNAL \s_memory~342_combout\ : std_logic;
SIGNAL \s_memory~65_q\ : std_logic;
SIGNAL \s_memory~57_q\ : std_logic;
SIGNAL \s_memory~49_q\ : std_logic;
SIGNAL \s_memory~343_combout\ : std_logic;
SIGNAL \s_memory~73_q\ : std_logic;
SIGNAL \s_memory~344_combout\ : std_logic;
SIGNAL \s_memory~89_q\ : std_logic;
SIGNAL \s_memory~97_q\ : std_logic;
SIGNAL \s_memory~81_q\ : std_logic;
SIGNAL \s_memory~345_combout\ : std_logic;
SIGNAL \s_memory~105_q\ : std_logic;
SIGNAL \s_memory~346_combout\ : std_logic;
SIGNAL \s_memory~25_q\ : std_logic;
SIGNAL \s_memory~33_q\ : std_logic;
SIGNAL \s_memory~17_q\ : std_logic;
SIGNAL \s_memory~347_combout\ : std_logic;
SIGNAL \s_memory~41_q\ : std_logic;
SIGNAL \s_memory~348_combout\ : std_logic;
SIGNAL \s_memory~349_combout\ : std_logic;
SIGNAL \s_memory~129_q\ : std_logic;
SIGNAL \s_memory~121_q\ : std_logic;
SIGNAL \s_memory~113_q\ : std_logic;
SIGNAL \s_memory~350_combout\ : std_logic;
SIGNAL \s_memory~137_q\ : std_logic;
SIGNAL \s_memory~351_combout\ : std_logic;
SIGNAL \s_memory~352_combout\ : std_logic;
SIGNAL \s_memory~353_combout\ : std_logic;
SIGNAL \writeData[4]~input_o\ : std_logic;
SIGNAL \s_memory~194_q\ : std_logic;
SIGNAL \s_memory~226_q\ : std_logic;
SIGNAL \s_memory~162_q\ : std_logic;
SIGNAL \s_memory~354_combout\ : std_logic;
SIGNAL \s_memory~258_q\ : std_logic;
SIGNAL \s_memory~355_combout\ : std_logic;
SIGNAL \s_memory~218_q\ : std_logic;
SIGNAL \s_memory~186_q\ : std_logic;
SIGNAL \s_memory~154_q\ : std_logic;
SIGNAL \s_memory~356_combout\ : std_logic;
SIGNAL \s_memory~250_q\ : std_logic;
SIGNAL \s_memory~357_combout\ : std_logic;
SIGNAL \s_memory~178_q\ : std_logic;
SIGNAL \s_memory~210_q\ : std_logic;
SIGNAL \s_memory~146_q\ : std_logic;
SIGNAL \s_memory~358_combout\ : std_logic;
SIGNAL \s_memory~242_q\ : std_logic;
SIGNAL \s_memory~359_combout\ : std_logic;
SIGNAL \s_memory~360_combout\ : std_logic;
SIGNAL \s_memory~234_q\ : std_logic;
SIGNAL \s_memory~202_q\ : std_logic;
SIGNAL \s_memory~170_q\ : std_logic;
SIGNAL \s_memory~361_combout\ : std_logic;
SIGNAL \s_memory~266_q\ : std_logic;
SIGNAL \s_memory~362_combout\ : std_logic;
SIGNAL \s_memory~363_combout\ : std_logic;
SIGNAL \s_memory~98_q\ : std_logic;
SIGNAL \s_memory~90_q\ : std_logic;
SIGNAL \s_memory~82_q\ : std_logic;
SIGNAL \s_memory~364_combout\ : std_logic;
SIGNAL \s_memory~106_q\ : std_logic;
SIGNAL \s_memory~365_combout\ : std_logic;
SIGNAL \s_memory~58_q\ : std_logic;
SIGNAL \s_memory~66_q\ : std_logic;
SIGNAL \s_memory~50_q\ : std_logic;
SIGNAL \s_memory~366_combout\ : std_logic;
SIGNAL \s_memory~74_q\ : std_logic;
SIGNAL \s_memory~367_combout\ : std_logic;
SIGNAL \s_memory~34_q\ : std_logic;
SIGNAL \s_memory~26_q\ : std_logic;
SIGNAL \s_memory~18_q\ : std_logic;
SIGNAL \s_memory~368_combout\ : std_logic;
SIGNAL \s_memory~42_q\ : std_logic;
SIGNAL \s_memory~369_combout\ : std_logic;
SIGNAL \s_memory~370_combout\ : std_logic;
SIGNAL \s_memory~122_q\ : std_logic;
SIGNAL \s_memory~130_q\ : std_logic;
SIGNAL \s_memory~114_q\ : std_logic;
SIGNAL \s_memory~371_combout\ : std_logic;
SIGNAL \s_memory~138_q\ : std_logic;
SIGNAL \s_memory~372_combout\ : std_logic;
SIGNAL \s_memory~373_combout\ : std_logic;
SIGNAL \s_memory~374_combout\ : std_logic;
SIGNAL \writeData[5]~input_o\ : std_logic;
SIGNAL \s_memory~187_q\ : std_logic;
SIGNAL \s_memory~219_q\ : std_logic;
SIGNAL \s_memory~155_q\ : std_logic;
SIGNAL \s_memory~375_combout\ : std_logic;
SIGNAL \s_memory~251_q\ : std_logic;
SIGNAL \s_memory~376_combout\ : std_logic;
SIGNAL \s_memory~227_q\ : std_logic;
SIGNAL \s_memory~195_q\ : std_logic;
SIGNAL \s_memory~163_q\ : std_logic;
SIGNAL \s_memory~377_combout\ : std_logic;
SIGNAL \s_memory~259_q\ : std_logic;
SIGNAL \s_memory~378_combout\ : std_logic;
SIGNAL \s_memory~211_q\ : std_logic;
SIGNAL \s_memory~179_q\ : std_logic;
SIGNAL \s_memory~147_q\ : std_logic;
SIGNAL \s_memory~379_combout\ : std_logic;
SIGNAL \s_memory~243_q\ : std_logic;
SIGNAL \s_memory~380_combout\ : std_logic;
SIGNAL \s_memory~381_combout\ : std_logic;
SIGNAL \s_memory~203_q\ : std_logic;
SIGNAL \s_memory~235_q\ : std_logic;
SIGNAL \s_memory~171_q\ : std_logic;
SIGNAL \s_memory~382_combout\ : std_logic;
SIGNAL \s_memory~267_q\ : std_logic;
SIGNAL \s_memory~383_combout\ : std_logic;
SIGNAL \s_memory~384_combout\ : std_logic;
SIGNAL \s_memory~67_q\ : std_logic;
SIGNAL \s_memory~59_q\ : std_logic;
SIGNAL \s_memory~51_q\ : std_logic;
SIGNAL \s_memory~385_combout\ : std_logic;
SIGNAL \s_memory~75_q\ : std_logic;
SIGNAL \s_memory~386_combout\ : std_logic;
SIGNAL \s_memory~91_q\ : std_logic;
SIGNAL \s_memory~99_q\ : std_logic;
SIGNAL \s_memory~83_q\ : std_logic;
SIGNAL \s_memory~387_combout\ : std_logic;
SIGNAL \s_memory~107_q\ : std_logic;
SIGNAL \s_memory~388_combout\ : std_logic;
SIGNAL \s_memory~27_q\ : std_logic;
SIGNAL \s_memory~35_q\ : std_logic;
SIGNAL \s_memory~19_q\ : std_logic;
SIGNAL \s_memory~389_combout\ : std_logic;
SIGNAL \s_memory~43_q\ : std_logic;
SIGNAL \s_memory~390_combout\ : std_logic;
SIGNAL \s_memory~391_combout\ : std_logic;
SIGNAL \s_memory~131_q\ : std_logic;
SIGNAL \s_memory~123_q\ : std_logic;
SIGNAL \s_memory~115_q\ : std_logic;
SIGNAL \s_memory~392_combout\ : std_logic;
SIGNAL \s_memory~139_q\ : std_logic;
SIGNAL \s_memory~393_combout\ : std_logic;
SIGNAL \s_memory~394_combout\ : std_logic;
SIGNAL \s_memory~395_combout\ : std_logic;
SIGNAL \writeData[6]~input_o\ : std_logic;
SIGNAL \s_memory~196_q\ : std_logic;
SIGNAL \s_memory~228_q\ : std_logic;
SIGNAL \s_memory~164_q\ : std_logic;
SIGNAL \s_memory~396_combout\ : std_logic;
SIGNAL \s_memory~260_q\ : std_logic;
SIGNAL \s_memory~397_combout\ : std_logic;
SIGNAL \s_memory~220_q\ : std_logic;
SIGNAL \s_memory~188_q\ : std_logic;
SIGNAL \s_memory~156_q\ : std_logic;
SIGNAL \s_memory~398_combout\ : std_logic;
SIGNAL \s_memory~252_q\ : std_logic;
SIGNAL \s_memory~399_combout\ : std_logic;
SIGNAL \s_memory~180_q\ : std_logic;
SIGNAL \s_memory~212_q\ : std_logic;
SIGNAL \s_memory~148_q\ : std_logic;
SIGNAL \s_memory~400_combout\ : std_logic;
SIGNAL \s_memory~244_q\ : std_logic;
SIGNAL \s_memory~401_combout\ : std_logic;
SIGNAL \s_memory~402_combout\ : std_logic;
SIGNAL \s_memory~236_q\ : std_logic;
SIGNAL \s_memory~204_q\ : std_logic;
SIGNAL \s_memory~172_q\ : std_logic;
SIGNAL \s_memory~403_combout\ : std_logic;
SIGNAL \s_memory~268_q\ : std_logic;
SIGNAL \s_memory~404_combout\ : std_logic;
SIGNAL \s_memory~405_combout\ : std_logic;
SIGNAL \s_memory~100_q\ : std_logic;
SIGNAL \s_memory~92_q\ : std_logic;
SIGNAL \s_memory~84_q\ : std_logic;
SIGNAL \s_memory~406_combout\ : std_logic;
SIGNAL \s_memory~108_q\ : std_logic;
SIGNAL \s_memory~407_combout\ : std_logic;
SIGNAL \s_memory~60_q\ : std_logic;
SIGNAL \s_memory~68_q\ : std_logic;
SIGNAL \s_memory~52_q\ : std_logic;
SIGNAL \s_memory~408_combout\ : std_logic;
SIGNAL \s_memory~76_q\ : std_logic;
SIGNAL \s_memory~409_combout\ : std_logic;
SIGNAL \s_memory~36_q\ : std_logic;
SIGNAL \s_memory~28_q\ : std_logic;
SIGNAL \s_memory~20_q\ : std_logic;
SIGNAL \s_memory~410_combout\ : std_logic;
SIGNAL \s_memory~44_q\ : std_logic;
SIGNAL \s_memory~411_combout\ : std_logic;
SIGNAL \s_memory~412_combout\ : std_logic;
SIGNAL \s_memory~124_q\ : std_logic;
SIGNAL \s_memory~132_q\ : std_logic;
SIGNAL \s_memory~116_q\ : std_logic;
SIGNAL \s_memory~413_combout\ : std_logic;
SIGNAL \s_memory~140_q\ : std_logic;
SIGNAL \s_memory~414_combout\ : std_logic;
SIGNAL \s_memory~415_combout\ : std_logic;
SIGNAL \s_memory~416_combout\ : std_logic;
SIGNAL \writeData[7]~input_o\ : std_logic;
SIGNAL \s_memory~189_q\ : std_logic;
SIGNAL \s_memory~221_q\ : std_logic;
SIGNAL \s_memory~157_q\ : std_logic;
SIGNAL \s_memory~417_combout\ : std_logic;
SIGNAL \s_memory~253_q\ : std_logic;
SIGNAL \s_memory~418_combout\ : std_logic;
SIGNAL \s_memory~229_q\ : std_logic;
SIGNAL \s_memory~197_q\ : std_logic;
SIGNAL \s_memory~165_q\ : std_logic;
SIGNAL \s_memory~419_combout\ : std_logic;
SIGNAL \s_memory~261_q\ : std_logic;
SIGNAL \s_memory~420_combout\ : std_logic;
SIGNAL \s_memory~213_q\ : std_logic;
SIGNAL \s_memory~181_q\ : std_logic;
SIGNAL \s_memory~149_q\ : std_logic;
SIGNAL \s_memory~421_combout\ : std_logic;
SIGNAL \s_memory~245_q\ : std_logic;
SIGNAL \s_memory~422_combout\ : std_logic;
SIGNAL \s_memory~423_combout\ : std_logic;
SIGNAL \s_memory~205_q\ : std_logic;
SIGNAL \s_memory~237_q\ : std_logic;
SIGNAL \s_memory~173_q\ : std_logic;
SIGNAL \s_memory~424_combout\ : std_logic;
SIGNAL \s_memory~269_q\ : std_logic;
SIGNAL \s_memory~425_combout\ : std_logic;
SIGNAL \s_memory~426_combout\ : std_logic;
SIGNAL \s_memory~69_q\ : std_logic;
SIGNAL \s_memory~61_q\ : std_logic;
SIGNAL \s_memory~53_q\ : std_logic;
SIGNAL \s_memory~427_combout\ : std_logic;
SIGNAL \s_memory~77_q\ : std_logic;
SIGNAL \s_memory~428_combout\ : std_logic;
SIGNAL \s_memory~93_q\ : std_logic;
SIGNAL \s_memory~101_q\ : std_logic;
SIGNAL \s_memory~85_q\ : std_logic;
SIGNAL \s_memory~429_combout\ : std_logic;
SIGNAL \s_memory~109_q\ : std_logic;
SIGNAL \s_memory~430_combout\ : std_logic;
SIGNAL \s_memory~29_q\ : std_logic;
SIGNAL \s_memory~37_q\ : std_logic;
SIGNAL \s_memory~21_q\ : std_logic;
SIGNAL \s_memory~431_combout\ : std_logic;
SIGNAL \s_memory~45_q\ : std_logic;
SIGNAL \s_memory~432_combout\ : std_logic;
SIGNAL \s_memory~433_combout\ : std_logic;
SIGNAL \s_memory~133_q\ : std_logic;
SIGNAL \s_memory~125_q\ : std_logic;
SIGNAL \s_memory~117_q\ : std_logic;
SIGNAL \s_memory~434_combout\ : std_logic;
SIGNAL \s_memory~141_q\ : std_logic;
SIGNAL \s_memory~435_combout\ : std_logic;
SIGNAL \s_memory~436_combout\ : std_logic;
SIGNAL \s_memory~437_combout\ : std_logic;

BEGIN

ww_writeClk <= writeClk;
ww_writeEnable <= writeEnable;
ww_writeData <= writeData;
ww_address <= address;
readData <= ww_readData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\readData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~290_combout\,
	devoe => ww_devoe,
	o => \readData[0]~output_o\);

\readData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~311_combout\,
	devoe => ww_devoe,
	o => \readData[1]~output_o\);

\readData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~332_combout\,
	devoe => ww_devoe,
	o => \readData[2]~output_o\);

\readData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~353_combout\,
	devoe => ww_devoe,
	o => \readData[3]~output_o\);

\readData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~374_combout\,
	devoe => ww_devoe,
	o => \readData[4]~output_o\);

\readData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~395_combout\,
	devoe => ww_devoe,
	o => \readData[5]~output_o\);

\readData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~416_combout\,
	devoe => ww_devoe,
	o => \readData[6]~output_o\);

\readData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~437_combout\,
	devoe => ww_devoe,
	o => \readData[7]~output_o\);

\writeClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeClk,
	o => \writeClk~input_o\);

\writeData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(0),
	o => \writeData[0]~input_o\);

\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\s_memory~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~438_combout\ = (!\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~438_combout\);

\writeEnable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeEnable,
	o => \writeEnable~input_o\);

\s_memory~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~439_combout\ = (\address[4]~input_o\ & (\s_memory~438_combout\ & \writeEnable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \s_memory~438_combout\,
	datac => \writeEnable~input_o\,
	combout => \s_memory~439_combout\);

\s_memory~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~190_q\);

\s_memory~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~440_combout\ = (!\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~440_combout\);

\s_memory~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~441_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~440_combout\,
	combout => \s_memory~441_combout\);

\s_memory~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~222_q\);

\s_memory~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~442_combout\ = (!\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~442_combout\);

\s_memory~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~443_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~442_combout\,
	combout => \s_memory~443_combout\);

\s_memory~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~158_q\);

\s_memory~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~270_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~222_q\)) # (!\address[3]~input_o\ & ((\s_memory~158_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~222_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~158_q\,
	combout => \s_memory~270_combout\);

\s_memory~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~444_combout\ = (!\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~444_combout\);

\s_memory~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~445_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~444_combout\,
	combout => \s_memory~445_combout\);

\s_memory~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~254_q\);

\s_memory~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~271_combout\ = (\address[2]~input_o\ & ((\s_memory~270_combout\ & ((\s_memory~254_q\))) # (!\s_memory~270_combout\ & (\s_memory~190_q\)))) # (!\address[2]~input_o\ & (((\s_memory~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~190_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~270_combout\,
	datad => \s_memory~254_q\,
	combout => \s_memory~271_combout\);

\s_memory~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~446_combout\ = (\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~446_combout\);

\s_memory~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~447_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~446_combout\,
	combout => \s_memory~447_combout\);

\s_memory~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~214_q\);

\s_memory~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~448_combout\ = (\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~448_combout\);

\s_memory~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~449_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~448_combout\,
	combout => \s_memory~449_combout\);

\s_memory~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~182_q\);

\s_memory~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~450_combout\ = (\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~450_combout\);

\s_memory~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~451_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~450_combout\,
	combout => \s_memory~451_combout\);

\s_memory~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~150_q\);

\s_memory~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~272_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~182_q\)) # (!\address[2]~input_o\ & ((\s_memory~150_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~182_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~150_q\,
	combout => \s_memory~272_combout\);

\s_memory~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~452_combout\ = (\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~452_combout\);

\s_memory~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~453_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~452_combout\,
	combout => \s_memory~453_combout\);

\s_memory~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~246_q\);

\s_memory~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~273_combout\ = (\address[3]~input_o\ & ((\s_memory~272_combout\ & ((\s_memory~246_q\))) # (!\s_memory~272_combout\ & (\s_memory~214_q\)))) # (!\address[3]~input_o\ & (((\s_memory~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~214_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~272_combout\,
	datad => \s_memory~246_q\,
	combout => \s_memory~273_combout\);

\s_memory~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~454_combout\ = (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~454_combout\);

\s_memory~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~455_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~454_combout\,
	combout => \s_memory~455_combout\);

\s_memory~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~174_q\);

\s_memory~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~456_combout\ = (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~456_combout\);

\s_memory~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~457_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~456_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~456_combout\,
	combout => \s_memory~457_combout\);

\s_memory~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~206_q\);

\s_memory~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~458_combout\ = (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~458_combout\);

\s_memory~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~459_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~458_combout\,
	combout => \s_memory~459_combout\);

\s_memory~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~142_q\);

\s_memory~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~274_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~206_q\)) # (!\address[3]~input_o\ & ((\s_memory~142_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~206_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~142_q\,
	combout => \s_memory~274_combout\);

\s_memory~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~460_combout\ = (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~460_combout\);

\s_memory~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~461_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~460_combout\,
	combout => \s_memory~461_combout\);

\s_memory~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~238_q\);

\s_memory~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~275_combout\ = (\address[2]~input_o\ & ((\s_memory~274_combout\ & ((\s_memory~238_q\))) # (!\s_memory~274_combout\ & (\s_memory~174_q\)))) # (!\address[2]~input_o\ & (((\s_memory~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~174_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~274_combout\,
	datad => \s_memory~238_q\,
	combout => \s_memory~275_combout\);

\s_memory~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~276_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~273_combout\)) # (!\address[0]~input_o\ & ((\s_memory~275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~273_combout\,
	datac => \address[0]~input_o\,
	datad => \s_memory~275_combout\,
	combout => \s_memory~276_combout\);

\s_memory~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~462_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~462_combout\);

\s_memory~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~463_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~462_combout\,
	combout => \s_memory~463_combout\);

\s_memory~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~230_q\);

\s_memory~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~464_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~464_combout\);

\s_memory~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~465_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~464_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~464_combout\,
	combout => \s_memory~465_combout\);

\s_memory~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~198_q\);

\s_memory~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~466_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~466_combout\);

\s_memory~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~467_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~466_combout\,
	combout => \s_memory~467_combout\);

\s_memory~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~166_q\);

\s_memory~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~277_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~198_q\)) # (!\address[2]~input_o\ & ((\s_memory~166_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~198_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~166_q\,
	combout => \s_memory~277_combout\);

\s_memory~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~468_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~468_combout\);

\s_memory~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~469_combout\ = (\address[4]~input_o\ & (\writeEnable~input_o\ & \s_memory~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \writeEnable~input_o\,
	datac => \s_memory~468_combout\,
	combout => \s_memory~469_combout\);

\s_memory~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~262_q\);

\s_memory~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~278_combout\ = (\address[3]~input_o\ & ((\s_memory~277_combout\ & ((\s_memory~262_q\))) # (!\s_memory~277_combout\ & (\s_memory~230_q\)))) # (!\address[3]~input_o\ & (((\s_memory~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~230_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~277_combout\,
	datad => \s_memory~262_q\,
	combout => \s_memory~278_combout\);

\s_memory~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~279_combout\ = (\address[1]~input_o\ & ((\s_memory~276_combout\ & ((\s_memory~278_combout\))) # (!\s_memory~276_combout\ & (\s_memory~271_combout\)))) # (!\address[1]~input_o\ & (((\s_memory~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~271_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~276_combout\,
	datad => \s_memory~278_combout\,
	combout => \s_memory~279_combout\);

\s_memory~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~470_combout\ = (\writeEnable~input_o\ & (\s_memory~440_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~440_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~470_combout\);

\s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~94_q\);

\s_memory~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~471_combout\ = (\writeEnable~input_o\ & (\s_memory~446_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~446_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~471_combout\);

\s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~86_q\);

\s_memory~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~472_combout\ = (\writeEnable~input_o\ & (\s_memory~456_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~456_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~472_combout\);

\s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~78_q\);

\s_memory~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~280_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~86_q\)) # (!\address[0]~input_o\ & ((\s_memory~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~86_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~78_q\,
	combout => \s_memory~280_combout\);

\s_memory~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~473_combout\ = (\writeEnable~input_o\ & (\s_memory~462_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~462_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~473_combout\);

\s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~102_q\);

\s_memory~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~281_combout\ = (\address[1]~input_o\ & ((\s_memory~280_combout\ & ((\s_memory~102_q\))) # (!\s_memory~280_combout\ & (\s_memory~94_q\)))) # (!\address[1]~input_o\ & (((\s_memory~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~94_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~280_combout\,
	datad => \s_memory~102_q\,
	combout => \s_memory~281_combout\);

\s_memory~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~474_combout\ = (\writeEnable~input_o\ & (\s_memory~448_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~448_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~474_combout\);

\s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~54_q\);

\s_memory~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~475_combout\ = (\s_memory~438_combout\ & (\writeEnable~input_o\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~438_combout\,
	datab => \writeEnable~input_o\,
	datad => \address[4]~input_o\,
	combout => \s_memory~475_combout\);

\s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~62_q\);

\s_memory~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~476_combout\ = (\writeEnable~input_o\ & (\s_memory~454_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~454_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~476_combout\);

\s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~46_q\);

\s_memory~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~282_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~62_q\)) # (!\address[1]~input_o\ & ((\s_memory~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~62_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~46_q\,
	combout => \s_memory~282_combout\);

\s_memory~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~477_combout\ = (\writeEnable~input_o\ & (\s_memory~464_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~464_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~477_combout\);

\s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~70_q\);

\s_memory~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~283_combout\ = (\address[0]~input_o\ & ((\s_memory~282_combout\ & ((\s_memory~70_q\))) # (!\s_memory~282_combout\ & (\s_memory~54_q\)))) # (!\address[0]~input_o\ & (((\s_memory~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~54_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~282_combout\,
	datad => \s_memory~70_q\,
	combout => \s_memory~283_combout\);

\s_memory~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~478_combout\ = (\writeEnable~input_o\ & (\s_memory~442_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~442_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~478_combout\);

\s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~30_q\);

\s_memory~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~479_combout\ = (\writeEnable~input_o\ & (\s_memory~450_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~450_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~479_combout\);

\s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~22_q\);

\s_memory~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~480_combout\ = (\writeEnable~input_o\ & (\s_memory~458_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~458_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~480_combout\);

\s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~14_q\);

\s_memory~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~284_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~22_q\)) # (!\address[0]~input_o\ & ((\s_memory~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~22_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~14_q\,
	combout => \s_memory~284_combout\);

\s_memory~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~481_combout\ = (\writeEnable~input_o\ & (\s_memory~466_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~466_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~481_combout\);

\s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~38_q\);

\s_memory~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~285_combout\ = (\address[1]~input_o\ & ((\s_memory~284_combout\ & ((\s_memory~38_q\))) # (!\s_memory~284_combout\ & (\s_memory~30_q\)))) # (!\address[1]~input_o\ & (((\s_memory~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~30_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~284_combout\,
	datad => \s_memory~38_q\,
	combout => \s_memory~285_combout\);

\s_memory~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~286_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~283_combout\)) # (!\address[2]~input_o\ & ((\s_memory~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~283_combout\,
	datac => \address[2]~input_o\,
	datad => \s_memory~285_combout\,
	combout => \s_memory~286_combout\);

\s_memory~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~482_combout\ = (\writeEnable~input_o\ & (\s_memory~452_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~452_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~482_combout\);

\s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~118_q\);

\s_memory~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~483_combout\ = (\writeEnable~input_o\ & (\s_memory~444_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~444_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~483_combout\);

\s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~126_q\);

\s_memory~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~484_combout\ = (\writeEnable~input_o\ & (\s_memory~460_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~460_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~484_combout\);

\s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~110_q\);

\s_memory~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~287_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~126_q\)) # (!\address[1]~input_o\ & ((\s_memory~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~126_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~110_q\,
	combout => \s_memory~287_combout\);

\s_memory~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~485_combout\ = (\writeEnable~input_o\ & (\s_memory~468_combout\ & !\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \s_memory~468_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~485_combout\);

\s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~134_q\);

\s_memory~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~288_combout\ = (\address[0]~input_o\ & ((\s_memory~287_combout\ & ((\s_memory~134_q\))) # (!\s_memory~287_combout\ & (\s_memory~118_q\)))) # (!\address[0]~input_o\ & (((\s_memory~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~118_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~287_combout\,
	datad => \s_memory~134_q\,
	combout => \s_memory~288_combout\);

\s_memory~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~289_combout\ = (\address[3]~input_o\ & ((\s_memory~286_combout\ & ((\s_memory~288_combout\))) # (!\s_memory~286_combout\ & (\s_memory~281_combout\)))) # (!\address[3]~input_o\ & (((\s_memory~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~281_combout\,
	datab => \address[3]~input_o\,
	datac => \s_memory~286_combout\,
	datad => \s_memory~288_combout\,
	combout => \s_memory~289_combout\);

\s_memory~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~290_combout\ = (\address[4]~input_o\ & (\s_memory~279_combout\)) # (!\address[4]~input_o\ & ((\s_memory~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~279_combout\,
	datab => \s_memory~289_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~290_combout\);

\writeData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(1),
	o => \writeData[1]~input_o\);

\s_memory~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~183_q\);

\s_memory~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~215_q\);

\s_memory~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~151_q\);

\s_memory~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~291_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~215_q\)) # (!\address[3]~input_o\ & ((\s_memory~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~215_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~151_q\,
	combout => \s_memory~291_combout\);

\s_memory~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~247_q\);

\s_memory~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~292_combout\ = (\address[2]~input_o\ & ((\s_memory~291_combout\ & ((\s_memory~247_q\))) # (!\s_memory~291_combout\ & (\s_memory~183_q\)))) # (!\address[2]~input_o\ & (((\s_memory~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~183_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~291_combout\,
	datad => \s_memory~247_q\,
	combout => \s_memory~292_combout\);

\s_memory~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~223_q\);

\s_memory~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~191_q\);

\s_memory~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~159_q\);

\s_memory~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~293_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~191_q\)) # (!\address[2]~input_o\ & ((\s_memory~159_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~191_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~159_q\,
	combout => \s_memory~293_combout\);

\s_memory~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~255_q\);

\s_memory~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~294_combout\ = (\address[3]~input_o\ & ((\s_memory~293_combout\ & ((\s_memory~255_q\))) # (!\s_memory~293_combout\ & (\s_memory~223_q\)))) # (!\address[3]~input_o\ & (((\s_memory~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~223_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~293_combout\,
	datad => \s_memory~255_q\,
	combout => \s_memory~294_combout\);

\s_memory~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~207_q\);

\s_memory~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~175_q\);

\s_memory~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~143_q\);

\s_memory~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~295_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~175_q\)) # (!\address[2]~input_o\ & ((\s_memory~143_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~175_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~143_q\,
	combout => \s_memory~295_combout\);

\s_memory~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~239_q\);

\s_memory~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~296_combout\ = (\address[3]~input_o\ & ((\s_memory~295_combout\ & ((\s_memory~239_q\))) # (!\s_memory~295_combout\ & (\s_memory~207_q\)))) # (!\address[3]~input_o\ & (((\s_memory~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~207_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~295_combout\,
	datad => \s_memory~239_q\,
	combout => \s_memory~296_combout\);

\s_memory~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~297_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~294_combout\)) # (!\address[1]~input_o\ & ((\s_memory~296_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~294_combout\,
	datac => \address[1]~input_o\,
	datad => \s_memory~296_combout\,
	combout => \s_memory~297_combout\);

\s_memory~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~199_q\);

\s_memory~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~231_q\);

\s_memory~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~167_q\);

\s_memory~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~298_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~231_q\)) # (!\address[3]~input_o\ & ((\s_memory~167_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~231_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~167_q\,
	combout => \s_memory~298_combout\);

\s_memory~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~263_q\);

\s_memory~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~299_combout\ = (\address[2]~input_o\ & ((\s_memory~298_combout\ & ((\s_memory~263_q\))) # (!\s_memory~298_combout\ & (\s_memory~199_q\)))) # (!\address[2]~input_o\ & (((\s_memory~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~199_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~298_combout\,
	datad => \s_memory~263_q\,
	combout => \s_memory~299_combout\);

\s_memory~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~300_combout\ = (\address[0]~input_o\ & ((\s_memory~297_combout\ & ((\s_memory~299_combout\))) # (!\s_memory~297_combout\ & (\s_memory~292_combout\)))) # (!\address[0]~input_o\ & (((\s_memory~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~292_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~297_combout\,
	datad => \s_memory~299_combout\,
	combout => \s_memory~300_combout\);

\s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~63_q\);

\s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~55_q\);

\s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~47_q\);

\s_memory~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~301_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~55_q\)) # (!\address[0]~input_o\ & ((\s_memory~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~55_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~47_q\,
	combout => \s_memory~301_combout\);

\s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~71_q\);

\s_memory~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~302_combout\ = (\address[1]~input_o\ & ((\s_memory~301_combout\ & ((\s_memory~71_q\))) # (!\s_memory~301_combout\ & (\s_memory~63_q\)))) # (!\address[1]~input_o\ & (((\s_memory~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~63_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~301_combout\,
	datad => \s_memory~71_q\,
	combout => \s_memory~302_combout\);

\s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~87_q\);

\s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~95_q\);

\s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~79_q\);

\s_memory~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~303_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~95_q\)) # (!\address[1]~input_o\ & ((\s_memory~79_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~95_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~79_q\,
	combout => \s_memory~303_combout\);

\s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~103_q\);

\s_memory~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~304_combout\ = (\address[0]~input_o\ & ((\s_memory~303_combout\ & ((\s_memory~103_q\))) # (!\s_memory~303_combout\ & (\s_memory~87_q\)))) # (!\address[0]~input_o\ & (((\s_memory~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~87_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~303_combout\,
	datad => \s_memory~103_q\,
	combout => \s_memory~304_combout\);

\s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~23_q\);

\s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~31_q\);

\s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~15_q\);

\s_memory~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~305_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~31_q\)) # (!\address[1]~input_o\ & ((\s_memory~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~31_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~15_q\,
	combout => \s_memory~305_combout\);

\s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~39_q\);

\s_memory~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~306_combout\ = (\address[0]~input_o\ & ((\s_memory~305_combout\ & ((\s_memory~39_q\))) # (!\s_memory~305_combout\ & (\s_memory~23_q\)))) # (!\address[0]~input_o\ & (((\s_memory~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~23_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~305_combout\,
	datad => \s_memory~39_q\,
	combout => \s_memory~306_combout\);

\s_memory~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~307_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~304_combout\)) # (!\address[3]~input_o\ & ((\s_memory~306_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~304_combout\,
	datac => \address[3]~input_o\,
	datad => \s_memory~306_combout\,
	combout => \s_memory~307_combout\);

\s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~127_q\);

\s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~119_q\);

\s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~111_q\);

\s_memory~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~308_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~119_q\)) # (!\address[0]~input_o\ & ((\s_memory~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~119_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~111_q\,
	combout => \s_memory~308_combout\);

\s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~135_q\);

\s_memory~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~309_combout\ = (\address[1]~input_o\ & ((\s_memory~308_combout\ & ((\s_memory~135_q\))) # (!\s_memory~308_combout\ & (\s_memory~127_q\)))) # (!\address[1]~input_o\ & (((\s_memory~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~127_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~308_combout\,
	datad => \s_memory~135_q\,
	combout => \s_memory~309_combout\);

\s_memory~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~310_combout\ = (\address[2]~input_o\ & ((\s_memory~307_combout\ & ((\s_memory~309_combout\))) # (!\s_memory~307_combout\ & (\s_memory~302_combout\)))) # (!\address[2]~input_o\ & (((\s_memory~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~302_combout\,
	datab => \address[2]~input_o\,
	datac => \s_memory~307_combout\,
	datad => \s_memory~309_combout\,
	combout => \s_memory~310_combout\);

\s_memory~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~311_combout\ = (\address[4]~input_o\ & (\s_memory~300_combout\)) # (!\address[4]~input_o\ & ((\s_memory~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~300_combout\,
	datab => \s_memory~310_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~311_combout\);

\writeData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(2),
	o => \writeData[2]~input_o\);

\s_memory~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~192_q\);

\s_memory~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~224_q\);

\s_memory~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~160_q\);

\s_memory~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~312_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~224_q\)) # (!\address[3]~input_o\ & ((\s_memory~160_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~224_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~160_q\,
	combout => \s_memory~312_combout\);

\s_memory~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~256_q\);

\s_memory~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~313_combout\ = (\address[2]~input_o\ & ((\s_memory~312_combout\ & ((\s_memory~256_q\))) # (!\s_memory~312_combout\ & (\s_memory~192_q\)))) # (!\address[2]~input_o\ & (((\s_memory~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~192_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~312_combout\,
	datad => \s_memory~256_q\,
	combout => \s_memory~313_combout\);

\s_memory~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~216_q\);

\s_memory~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~184_q\);

\s_memory~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~152_q\);

\s_memory~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~314_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~184_q\)) # (!\address[2]~input_o\ & ((\s_memory~152_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~184_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~152_q\,
	combout => \s_memory~314_combout\);

\s_memory~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~248_q\);

\s_memory~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~315_combout\ = (\address[3]~input_o\ & ((\s_memory~314_combout\ & ((\s_memory~248_q\))) # (!\s_memory~314_combout\ & (\s_memory~216_q\)))) # (!\address[3]~input_o\ & (((\s_memory~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~216_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~314_combout\,
	datad => \s_memory~248_q\,
	combout => \s_memory~315_combout\);

\s_memory~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~176_q\);

\s_memory~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~208_q\);

\s_memory~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~144_q\);

\s_memory~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~316_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~208_q\)) # (!\address[3]~input_o\ & ((\s_memory~144_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~208_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~144_q\,
	combout => \s_memory~316_combout\);

\s_memory~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~240_q\);

\s_memory~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~317_combout\ = (\address[2]~input_o\ & ((\s_memory~316_combout\ & ((\s_memory~240_q\))) # (!\s_memory~316_combout\ & (\s_memory~176_q\)))) # (!\address[2]~input_o\ & (((\s_memory~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~176_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~316_combout\,
	datad => \s_memory~240_q\,
	combout => \s_memory~317_combout\);

\s_memory~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~318_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~315_combout\)) # (!\address[0]~input_o\ & ((\s_memory~317_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~315_combout\,
	datac => \address[0]~input_o\,
	datad => \s_memory~317_combout\,
	combout => \s_memory~318_combout\);

\s_memory~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~232_q\);

\s_memory~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~200_q\);

\s_memory~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~168_q\);

\s_memory~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~319_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~200_q\)) # (!\address[2]~input_o\ & ((\s_memory~168_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~200_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~168_q\,
	combout => \s_memory~319_combout\);

\s_memory~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~264_q\);

\s_memory~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~320_combout\ = (\address[3]~input_o\ & ((\s_memory~319_combout\ & ((\s_memory~264_q\))) # (!\s_memory~319_combout\ & (\s_memory~232_q\)))) # (!\address[3]~input_o\ & (((\s_memory~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~232_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~319_combout\,
	datad => \s_memory~264_q\,
	combout => \s_memory~320_combout\);

\s_memory~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~321_combout\ = (\address[1]~input_o\ & ((\s_memory~318_combout\ & ((\s_memory~320_combout\))) # (!\s_memory~318_combout\ & (\s_memory~313_combout\)))) # (!\address[1]~input_o\ & (((\s_memory~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~313_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~318_combout\,
	datad => \s_memory~320_combout\,
	combout => \s_memory~321_combout\);

\s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~96_q\);

\s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~88_q\);

\s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~80_q\);

\s_memory~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~322_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~88_q\)) # (!\address[0]~input_o\ & ((\s_memory~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~88_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~80_q\,
	combout => \s_memory~322_combout\);

\s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~104_q\);

\s_memory~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~323_combout\ = (\address[1]~input_o\ & ((\s_memory~322_combout\ & ((\s_memory~104_q\))) # (!\s_memory~322_combout\ & (\s_memory~96_q\)))) # (!\address[1]~input_o\ & (((\s_memory~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~96_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~322_combout\,
	datad => \s_memory~104_q\,
	combout => \s_memory~323_combout\);

\s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~56_q\);

\s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~64_q\);

\s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~48_q\);

\s_memory~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~324_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~64_q\)) # (!\address[1]~input_o\ & ((\s_memory~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~64_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~48_q\,
	combout => \s_memory~324_combout\);

\s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~72_q\);

\s_memory~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~325_combout\ = (\address[0]~input_o\ & ((\s_memory~324_combout\ & ((\s_memory~72_q\))) # (!\s_memory~324_combout\ & (\s_memory~56_q\)))) # (!\address[0]~input_o\ & (((\s_memory~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~56_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~324_combout\,
	datad => \s_memory~72_q\,
	combout => \s_memory~325_combout\);

\s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~32_q\);

\s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~24_q\);

\s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~16_q\);

\s_memory~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~326_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~24_q\)) # (!\address[0]~input_o\ & ((\s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~24_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~16_q\,
	combout => \s_memory~326_combout\);

\s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~40_q\);

\s_memory~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~327_combout\ = (\address[1]~input_o\ & ((\s_memory~326_combout\ & ((\s_memory~40_q\))) # (!\s_memory~326_combout\ & (\s_memory~32_q\)))) # (!\address[1]~input_o\ & (((\s_memory~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~32_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~326_combout\,
	datad => \s_memory~40_q\,
	combout => \s_memory~327_combout\);

\s_memory~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~328_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~325_combout\)) # (!\address[2]~input_o\ & ((\s_memory~327_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~325_combout\,
	datac => \address[2]~input_o\,
	datad => \s_memory~327_combout\,
	combout => \s_memory~328_combout\);

\s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~120_q\);

\s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~128_q\);

\s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~112_q\);

\s_memory~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~329_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~128_q\)) # (!\address[1]~input_o\ & ((\s_memory~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~128_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~112_q\,
	combout => \s_memory~329_combout\);

\s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~136_q\);

\s_memory~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~330_combout\ = (\address[0]~input_o\ & ((\s_memory~329_combout\ & ((\s_memory~136_q\))) # (!\s_memory~329_combout\ & (\s_memory~120_q\)))) # (!\address[0]~input_o\ & (((\s_memory~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~120_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~329_combout\,
	datad => \s_memory~136_q\,
	combout => \s_memory~330_combout\);

\s_memory~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~331_combout\ = (\address[3]~input_o\ & ((\s_memory~328_combout\ & ((\s_memory~330_combout\))) # (!\s_memory~328_combout\ & (\s_memory~323_combout\)))) # (!\address[3]~input_o\ & (((\s_memory~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~323_combout\,
	datab => \address[3]~input_o\,
	datac => \s_memory~328_combout\,
	datad => \s_memory~330_combout\,
	combout => \s_memory~331_combout\);

\s_memory~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~332_combout\ = (\address[4]~input_o\ & (\s_memory~321_combout\)) # (!\address[4]~input_o\ & ((\s_memory~331_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~321_combout\,
	datab => \s_memory~331_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~332_combout\);

\writeData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(3),
	o => \writeData[3]~input_o\);

\s_memory~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~185_q\);

\s_memory~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~217_q\);

\s_memory~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~153_q\);

\s_memory~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~333_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~217_q\)) # (!\address[3]~input_o\ & ((\s_memory~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~217_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~153_q\,
	combout => \s_memory~333_combout\);

\s_memory~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~249_q\);

\s_memory~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~334_combout\ = (\address[2]~input_o\ & ((\s_memory~333_combout\ & ((\s_memory~249_q\))) # (!\s_memory~333_combout\ & (\s_memory~185_q\)))) # (!\address[2]~input_o\ & (((\s_memory~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~185_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~333_combout\,
	datad => \s_memory~249_q\,
	combout => \s_memory~334_combout\);

\s_memory~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~225_q\);

\s_memory~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~193_q\);

\s_memory~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~161_q\);

\s_memory~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~335_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~193_q\)) # (!\address[2]~input_o\ & ((\s_memory~161_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~193_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~161_q\,
	combout => \s_memory~335_combout\);

\s_memory~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~257_q\);

\s_memory~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~336_combout\ = (\address[3]~input_o\ & ((\s_memory~335_combout\ & ((\s_memory~257_q\))) # (!\s_memory~335_combout\ & (\s_memory~225_q\)))) # (!\address[3]~input_o\ & (((\s_memory~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~225_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~335_combout\,
	datad => \s_memory~257_q\,
	combout => \s_memory~336_combout\);

\s_memory~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~209_q\);

\s_memory~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~177_q\);

\s_memory~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~145_q\);

\s_memory~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~337_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~177_q\)) # (!\address[2]~input_o\ & ((\s_memory~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~177_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~145_q\,
	combout => \s_memory~337_combout\);

\s_memory~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~241_q\);

\s_memory~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~338_combout\ = (\address[3]~input_o\ & ((\s_memory~337_combout\ & ((\s_memory~241_q\))) # (!\s_memory~337_combout\ & (\s_memory~209_q\)))) # (!\address[3]~input_o\ & (((\s_memory~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~209_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~337_combout\,
	datad => \s_memory~241_q\,
	combout => \s_memory~338_combout\);

\s_memory~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~339_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~336_combout\)) # (!\address[1]~input_o\ & ((\s_memory~338_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~336_combout\,
	datac => \address[1]~input_o\,
	datad => \s_memory~338_combout\,
	combout => \s_memory~339_combout\);

\s_memory~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~201_q\);

\s_memory~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~233_q\);

\s_memory~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~169_q\);

\s_memory~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~340_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~233_q\)) # (!\address[3]~input_o\ & ((\s_memory~169_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~233_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~169_q\,
	combout => \s_memory~340_combout\);

\s_memory~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~265_q\);

\s_memory~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~341_combout\ = (\address[2]~input_o\ & ((\s_memory~340_combout\ & ((\s_memory~265_q\))) # (!\s_memory~340_combout\ & (\s_memory~201_q\)))) # (!\address[2]~input_o\ & (((\s_memory~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~201_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~340_combout\,
	datad => \s_memory~265_q\,
	combout => \s_memory~341_combout\);

\s_memory~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~342_combout\ = (\address[0]~input_o\ & ((\s_memory~339_combout\ & ((\s_memory~341_combout\))) # (!\s_memory~339_combout\ & (\s_memory~334_combout\)))) # (!\address[0]~input_o\ & (((\s_memory~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~334_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~339_combout\,
	datad => \s_memory~341_combout\,
	combout => \s_memory~342_combout\);

\s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~65_q\);

\s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~57_q\);

\s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~49_q\);

\s_memory~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~343_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~57_q\)) # (!\address[0]~input_o\ & ((\s_memory~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~57_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~49_q\,
	combout => \s_memory~343_combout\);

\s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~73_q\);

\s_memory~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~344_combout\ = (\address[1]~input_o\ & ((\s_memory~343_combout\ & ((\s_memory~73_q\))) # (!\s_memory~343_combout\ & (\s_memory~65_q\)))) # (!\address[1]~input_o\ & (((\s_memory~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~65_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~343_combout\,
	datad => \s_memory~73_q\,
	combout => \s_memory~344_combout\);

\s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~89_q\);

\s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~97_q\);

\s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~81_q\);

\s_memory~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~345_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~97_q\)) # (!\address[1]~input_o\ & ((\s_memory~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~97_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~81_q\,
	combout => \s_memory~345_combout\);

\s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~105_q\);

\s_memory~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~346_combout\ = (\address[0]~input_o\ & ((\s_memory~345_combout\ & ((\s_memory~105_q\))) # (!\s_memory~345_combout\ & (\s_memory~89_q\)))) # (!\address[0]~input_o\ & (((\s_memory~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~89_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~345_combout\,
	datad => \s_memory~105_q\,
	combout => \s_memory~346_combout\);

\s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~25_q\);

\s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~33_q\);

\s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~17_q\);

\s_memory~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~347_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~33_q\)) # (!\address[1]~input_o\ & ((\s_memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~33_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~17_q\,
	combout => \s_memory~347_combout\);

\s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~41_q\);

\s_memory~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~348_combout\ = (\address[0]~input_o\ & ((\s_memory~347_combout\ & ((\s_memory~41_q\))) # (!\s_memory~347_combout\ & (\s_memory~25_q\)))) # (!\address[0]~input_o\ & (((\s_memory~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~25_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~347_combout\,
	datad => \s_memory~41_q\,
	combout => \s_memory~348_combout\);

\s_memory~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~349_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~346_combout\)) # (!\address[3]~input_o\ & ((\s_memory~348_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~346_combout\,
	datac => \address[3]~input_o\,
	datad => \s_memory~348_combout\,
	combout => \s_memory~349_combout\);

\s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~129_q\);

\s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~121_q\);

\s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~113_q\);

\s_memory~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~350_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~121_q\)) # (!\address[0]~input_o\ & ((\s_memory~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~121_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~113_q\,
	combout => \s_memory~350_combout\);

\s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~137_q\);

\s_memory~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~351_combout\ = (\address[1]~input_o\ & ((\s_memory~350_combout\ & ((\s_memory~137_q\))) # (!\s_memory~350_combout\ & (\s_memory~129_q\)))) # (!\address[1]~input_o\ & (((\s_memory~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~129_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~350_combout\,
	datad => \s_memory~137_q\,
	combout => \s_memory~351_combout\);

\s_memory~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~352_combout\ = (\address[2]~input_o\ & ((\s_memory~349_combout\ & ((\s_memory~351_combout\))) # (!\s_memory~349_combout\ & (\s_memory~344_combout\)))) # (!\address[2]~input_o\ & (((\s_memory~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~344_combout\,
	datab => \address[2]~input_o\,
	datac => \s_memory~349_combout\,
	datad => \s_memory~351_combout\,
	combout => \s_memory~352_combout\);

\s_memory~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~353_combout\ = (\address[4]~input_o\ & (\s_memory~342_combout\)) # (!\address[4]~input_o\ & ((\s_memory~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~342_combout\,
	datab => \s_memory~352_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~353_combout\);

\writeData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(4),
	o => \writeData[4]~input_o\);

\s_memory~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~194_q\);

\s_memory~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~226_q\);

\s_memory~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~162_q\);

\s_memory~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~354_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~226_q\)) # (!\address[3]~input_o\ & ((\s_memory~162_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~226_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~162_q\,
	combout => \s_memory~354_combout\);

\s_memory~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~258_q\);

\s_memory~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~355_combout\ = (\address[2]~input_o\ & ((\s_memory~354_combout\ & ((\s_memory~258_q\))) # (!\s_memory~354_combout\ & (\s_memory~194_q\)))) # (!\address[2]~input_o\ & (((\s_memory~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~194_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~354_combout\,
	datad => \s_memory~258_q\,
	combout => \s_memory~355_combout\);

\s_memory~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~218_q\);

\s_memory~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~186_q\);

\s_memory~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~154_q\);

\s_memory~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~356_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~186_q\)) # (!\address[2]~input_o\ & ((\s_memory~154_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~186_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~154_q\,
	combout => \s_memory~356_combout\);

\s_memory~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~250_q\);

\s_memory~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~357_combout\ = (\address[3]~input_o\ & ((\s_memory~356_combout\ & ((\s_memory~250_q\))) # (!\s_memory~356_combout\ & (\s_memory~218_q\)))) # (!\address[3]~input_o\ & (((\s_memory~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~218_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~356_combout\,
	datad => \s_memory~250_q\,
	combout => \s_memory~357_combout\);

\s_memory~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~178_q\);

\s_memory~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~210_q\);

\s_memory~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~146_q\);

\s_memory~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~358_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~210_q\)) # (!\address[3]~input_o\ & ((\s_memory~146_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~210_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~146_q\,
	combout => \s_memory~358_combout\);

\s_memory~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~242_q\);

\s_memory~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~359_combout\ = (\address[2]~input_o\ & ((\s_memory~358_combout\ & ((\s_memory~242_q\))) # (!\s_memory~358_combout\ & (\s_memory~178_q\)))) # (!\address[2]~input_o\ & (((\s_memory~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~178_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~358_combout\,
	datad => \s_memory~242_q\,
	combout => \s_memory~359_combout\);

\s_memory~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~360_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~357_combout\)) # (!\address[0]~input_o\ & ((\s_memory~359_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~357_combout\,
	datac => \address[0]~input_o\,
	datad => \s_memory~359_combout\,
	combout => \s_memory~360_combout\);

\s_memory~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~234_q\);

\s_memory~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~202_q\);

\s_memory~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~170_q\);

\s_memory~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~361_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~202_q\)) # (!\address[2]~input_o\ & ((\s_memory~170_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~202_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~170_q\,
	combout => \s_memory~361_combout\);

\s_memory~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~266_q\);

\s_memory~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~362_combout\ = (\address[3]~input_o\ & ((\s_memory~361_combout\ & ((\s_memory~266_q\))) # (!\s_memory~361_combout\ & (\s_memory~234_q\)))) # (!\address[3]~input_o\ & (((\s_memory~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~234_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~361_combout\,
	datad => \s_memory~266_q\,
	combout => \s_memory~362_combout\);

\s_memory~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~363_combout\ = (\address[1]~input_o\ & ((\s_memory~360_combout\ & ((\s_memory~362_combout\))) # (!\s_memory~360_combout\ & (\s_memory~355_combout\)))) # (!\address[1]~input_o\ & (((\s_memory~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~355_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~360_combout\,
	datad => \s_memory~362_combout\,
	combout => \s_memory~363_combout\);

\s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~98_q\);

\s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~90_q\);

\s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~82_q\);

\s_memory~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~364_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~90_q\)) # (!\address[0]~input_o\ & ((\s_memory~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~90_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~82_q\,
	combout => \s_memory~364_combout\);

\s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~106_q\);

\s_memory~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~365_combout\ = (\address[1]~input_o\ & ((\s_memory~364_combout\ & ((\s_memory~106_q\))) # (!\s_memory~364_combout\ & (\s_memory~98_q\)))) # (!\address[1]~input_o\ & (((\s_memory~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~98_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~364_combout\,
	datad => \s_memory~106_q\,
	combout => \s_memory~365_combout\);

\s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~58_q\);

\s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~66_q\);

\s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~50_q\);

\s_memory~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~366_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~66_q\)) # (!\address[1]~input_o\ & ((\s_memory~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~66_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~50_q\,
	combout => \s_memory~366_combout\);

\s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~74_q\);

\s_memory~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~367_combout\ = (\address[0]~input_o\ & ((\s_memory~366_combout\ & ((\s_memory~74_q\))) # (!\s_memory~366_combout\ & (\s_memory~58_q\)))) # (!\address[0]~input_o\ & (((\s_memory~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~58_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~366_combout\,
	datad => \s_memory~74_q\,
	combout => \s_memory~367_combout\);

\s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~34_q\);

\s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~26_q\);

\s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~18_q\);

\s_memory~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~368_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~26_q\)) # (!\address[0]~input_o\ & ((\s_memory~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~26_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~18_q\,
	combout => \s_memory~368_combout\);

\s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~42_q\);

\s_memory~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~369_combout\ = (\address[1]~input_o\ & ((\s_memory~368_combout\ & ((\s_memory~42_q\))) # (!\s_memory~368_combout\ & (\s_memory~34_q\)))) # (!\address[1]~input_o\ & (((\s_memory~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~34_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~368_combout\,
	datad => \s_memory~42_q\,
	combout => \s_memory~369_combout\);

\s_memory~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~370_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~367_combout\)) # (!\address[2]~input_o\ & ((\s_memory~369_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~367_combout\,
	datac => \address[2]~input_o\,
	datad => \s_memory~369_combout\,
	combout => \s_memory~370_combout\);

\s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~122_q\);

\s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~130_q\);

\s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~114_q\);

\s_memory~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~371_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~130_q\)) # (!\address[1]~input_o\ & ((\s_memory~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~130_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~114_q\,
	combout => \s_memory~371_combout\);

\s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~138_q\);

\s_memory~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~372_combout\ = (\address[0]~input_o\ & ((\s_memory~371_combout\ & ((\s_memory~138_q\))) # (!\s_memory~371_combout\ & (\s_memory~122_q\)))) # (!\address[0]~input_o\ & (((\s_memory~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~122_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~371_combout\,
	datad => \s_memory~138_q\,
	combout => \s_memory~372_combout\);

\s_memory~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~373_combout\ = (\address[3]~input_o\ & ((\s_memory~370_combout\ & ((\s_memory~372_combout\))) # (!\s_memory~370_combout\ & (\s_memory~365_combout\)))) # (!\address[3]~input_o\ & (((\s_memory~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~365_combout\,
	datab => \address[3]~input_o\,
	datac => \s_memory~370_combout\,
	datad => \s_memory~372_combout\,
	combout => \s_memory~373_combout\);

\s_memory~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~374_combout\ = (\address[4]~input_o\ & (\s_memory~363_combout\)) # (!\address[4]~input_o\ & ((\s_memory~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~363_combout\,
	datab => \s_memory~373_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~374_combout\);

\writeData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(5),
	o => \writeData[5]~input_o\);

\s_memory~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~187_q\);

\s_memory~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~219_q\);

\s_memory~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~155_q\);

\s_memory~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~375_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~219_q\)) # (!\address[3]~input_o\ & ((\s_memory~155_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~219_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~155_q\,
	combout => \s_memory~375_combout\);

\s_memory~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~251_q\);

\s_memory~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~376_combout\ = (\address[2]~input_o\ & ((\s_memory~375_combout\ & ((\s_memory~251_q\))) # (!\s_memory~375_combout\ & (\s_memory~187_q\)))) # (!\address[2]~input_o\ & (((\s_memory~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~187_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~375_combout\,
	datad => \s_memory~251_q\,
	combout => \s_memory~376_combout\);

\s_memory~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~227_q\);

\s_memory~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~195_q\);

\s_memory~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~163_q\);

\s_memory~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~377_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~195_q\)) # (!\address[2]~input_o\ & ((\s_memory~163_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~195_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~163_q\,
	combout => \s_memory~377_combout\);

\s_memory~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~259_q\);

\s_memory~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~378_combout\ = (\address[3]~input_o\ & ((\s_memory~377_combout\ & ((\s_memory~259_q\))) # (!\s_memory~377_combout\ & (\s_memory~227_q\)))) # (!\address[3]~input_o\ & (((\s_memory~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~227_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~377_combout\,
	datad => \s_memory~259_q\,
	combout => \s_memory~378_combout\);

\s_memory~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~211_q\);

\s_memory~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~179_q\);

\s_memory~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~147_q\);

\s_memory~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~379_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~179_q\)) # (!\address[2]~input_o\ & ((\s_memory~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~179_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~147_q\,
	combout => \s_memory~379_combout\);

\s_memory~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~243_q\);

\s_memory~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~380_combout\ = (\address[3]~input_o\ & ((\s_memory~379_combout\ & ((\s_memory~243_q\))) # (!\s_memory~379_combout\ & (\s_memory~211_q\)))) # (!\address[3]~input_o\ & (((\s_memory~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~211_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~379_combout\,
	datad => \s_memory~243_q\,
	combout => \s_memory~380_combout\);

\s_memory~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~381_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~378_combout\)) # (!\address[1]~input_o\ & ((\s_memory~380_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~378_combout\,
	datac => \address[1]~input_o\,
	datad => \s_memory~380_combout\,
	combout => \s_memory~381_combout\);

\s_memory~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~203_q\);

\s_memory~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~235_q\);

\s_memory~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~171_q\);

\s_memory~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~382_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~235_q\)) # (!\address[3]~input_o\ & ((\s_memory~171_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~235_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~171_q\,
	combout => \s_memory~382_combout\);

\s_memory~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~267_q\);

\s_memory~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~383_combout\ = (\address[2]~input_o\ & ((\s_memory~382_combout\ & ((\s_memory~267_q\))) # (!\s_memory~382_combout\ & (\s_memory~203_q\)))) # (!\address[2]~input_o\ & (((\s_memory~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~203_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~382_combout\,
	datad => \s_memory~267_q\,
	combout => \s_memory~383_combout\);

\s_memory~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~384_combout\ = (\address[0]~input_o\ & ((\s_memory~381_combout\ & ((\s_memory~383_combout\))) # (!\s_memory~381_combout\ & (\s_memory~376_combout\)))) # (!\address[0]~input_o\ & (((\s_memory~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~376_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~381_combout\,
	datad => \s_memory~383_combout\,
	combout => \s_memory~384_combout\);

\s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~67_q\);

\s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~59_q\);

\s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~51_q\);

\s_memory~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~385_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~59_q\)) # (!\address[0]~input_o\ & ((\s_memory~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~59_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~51_q\,
	combout => \s_memory~385_combout\);

\s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~75_q\);

\s_memory~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~386_combout\ = (\address[1]~input_o\ & ((\s_memory~385_combout\ & ((\s_memory~75_q\))) # (!\s_memory~385_combout\ & (\s_memory~67_q\)))) # (!\address[1]~input_o\ & (((\s_memory~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~67_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~385_combout\,
	datad => \s_memory~75_q\,
	combout => \s_memory~386_combout\);

\s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~91_q\);

\s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~99_q\);

\s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~83_q\);

\s_memory~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~387_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~99_q\)) # (!\address[1]~input_o\ & ((\s_memory~83_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~99_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~83_q\,
	combout => \s_memory~387_combout\);

\s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~107_q\);

\s_memory~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~388_combout\ = (\address[0]~input_o\ & ((\s_memory~387_combout\ & ((\s_memory~107_q\))) # (!\s_memory~387_combout\ & (\s_memory~91_q\)))) # (!\address[0]~input_o\ & (((\s_memory~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~91_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~387_combout\,
	datad => \s_memory~107_q\,
	combout => \s_memory~388_combout\);

\s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~27_q\);

\s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~35_q\);

\s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~19_q\);

\s_memory~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~389_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~35_q\)) # (!\address[1]~input_o\ & ((\s_memory~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~35_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~19_q\,
	combout => \s_memory~389_combout\);

\s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~43_q\);

\s_memory~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~390_combout\ = (\address[0]~input_o\ & ((\s_memory~389_combout\ & ((\s_memory~43_q\))) # (!\s_memory~389_combout\ & (\s_memory~27_q\)))) # (!\address[0]~input_o\ & (((\s_memory~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~27_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~389_combout\,
	datad => \s_memory~43_q\,
	combout => \s_memory~390_combout\);

\s_memory~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~391_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~388_combout\)) # (!\address[3]~input_o\ & ((\s_memory~390_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~388_combout\,
	datac => \address[3]~input_o\,
	datad => \s_memory~390_combout\,
	combout => \s_memory~391_combout\);

\s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~131_q\);

\s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~123_q\);

\s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~115_q\);

\s_memory~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~392_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~123_q\)) # (!\address[0]~input_o\ & ((\s_memory~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~123_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~115_q\,
	combout => \s_memory~392_combout\);

\s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~139_q\);

\s_memory~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~393_combout\ = (\address[1]~input_o\ & ((\s_memory~392_combout\ & ((\s_memory~139_q\))) # (!\s_memory~392_combout\ & (\s_memory~131_q\)))) # (!\address[1]~input_o\ & (((\s_memory~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~131_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~392_combout\,
	datad => \s_memory~139_q\,
	combout => \s_memory~393_combout\);

\s_memory~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~394_combout\ = (\address[2]~input_o\ & ((\s_memory~391_combout\ & ((\s_memory~393_combout\))) # (!\s_memory~391_combout\ & (\s_memory~386_combout\)))) # (!\address[2]~input_o\ & (((\s_memory~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~386_combout\,
	datab => \address[2]~input_o\,
	datac => \s_memory~391_combout\,
	datad => \s_memory~393_combout\,
	combout => \s_memory~394_combout\);

\s_memory~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~395_combout\ = (\address[4]~input_o\ & (\s_memory~384_combout\)) # (!\address[4]~input_o\ & ((\s_memory~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~384_combout\,
	datab => \s_memory~394_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~395_combout\);

\writeData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(6),
	o => \writeData[6]~input_o\);

\s_memory~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~196_q\);

\s_memory~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~228_q\);

\s_memory~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~164_q\);

\s_memory~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~396_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~228_q\)) # (!\address[3]~input_o\ & ((\s_memory~164_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~228_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~164_q\,
	combout => \s_memory~396_combout\);

\s_memory~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~260_q\);

\s_memory~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~397_combout\ = (\address[2]~input_o\ & ((\s_memory~396_combout\ & ((\s_memory~260_q\))) # (!\s_memory~396_combout\ & (\s_memory~196_q\)))) # (!\address[2]~input_o\ & (((\s_memory~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~196_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~396_combout\,
	datad => \s_memory~260_q\,
	combout => \s_memory~397_combout\);

\s_memory~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~220_q\);

\s_memory~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~188_q\);

\s_memory~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~156_q\);

\s_memory~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~398_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~188_q\)) # (!\address[2]~input_o\ & ((\s_memory~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~188_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~156_q\,
	combout => \s_memory~398_combout\);

\s_memory~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~252_q\);

\s_memory~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~399_combout\ = (\address[3]~input_o\ & ((\s_memory~398_combout\ & ((\s_memory~252_q\))) # (!\s_memory~398_combout\ & (\s_memory~220_q\)))) # (!\address[3]~input_o\ & (((\s_memory~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~220_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~398_combout\,
	datad => \s_memory~252_q\,
	combout => \s_memory~399_combout\);

\s_memory~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~180_q\);

\s_memory~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~212_q\);

\s_memory~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~148_q\);

\s_memory~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~400_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~212_q\)) # (!\address[3]~input_o\ & ((\s_memory~148_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~212_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~148_q\,
	combout => \s_memory~400_combout\);

\s_memory~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~244_q\);

\s_memory~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~401_combout\ = (\address[2]~input_o\ & ((\s_memory~400_combout\ & ((\s_memory~244_q\))) # (!\s_memory~400_combout\ & (\s_memory~180_q\)))) # (!\address[2]~input_o\ & (((\s_memory~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~180_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~400_combout\,
	datad => \s_memory~244_q\,
	combout => \s_memory~401_combout\);

\s_memory~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~402_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~399_combout\)) # (!\address[0]~input_o\ & ((\s_memory~401_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~399_combout\,
	datac => \address[0]~input_o\,
	datad => \s_memory~401_combout\,
	combout => \s_memory~402_combout\);

\s_memory~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~236_q\);

\s_memory~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~204_q\);

\s_memory~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~172_q\);

\s_memory~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~403_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~204_q\)) # (!\address[2]~input_o\ & ((\s_memory~172_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~204_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~172_q\,
	combout => \s_memory~403_combout\);

\s_memory~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~268_q\);

\s_memory~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~404_combout\ = (\address[3]~input_o\ & ((\s_memory~403_combout\ & ((\s_memory~268_q\))) # (!\s_memory~403_combout\ & (\s_memory~236_q\)))) # (!\address[3]~input_o\ & (((\s_memory~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~236_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~403_combout\,
	datad => \s_memory~268_q\,
	combout => \s_memory~404_combout\);

\s_memory~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~405_combout\ = (\address[1]~input_o\ & ((\s_memory~402_combout\ & ((\s_memory~404_combout\))) # (!\s_memory~402_combout\ & (\s_memory~397_combout\)))) # (!\address[1]~input_o\ & (((\s_memory~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~397_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~402_combout\,
	datad => \s_memory~404_combout\,
	combout => \s_memory~405_combout\);

\s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~100_q\);

\s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~92_q\);

\s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~84_q\);

\s_memory~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~406_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~92_q\)) # (!\address[0]~input_o\ & ((\s_memory~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~92_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~84_q\,
	combout => \s_memory~406_combout\);

\s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~108_q\);

\s_memory~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~407_combout\ = (\address[1]~input_o\ & ((\s_memory~406_combout\ & ((\s_memory~108_q\))) # (!\s_memory~406_combout\ & (\s_memory~100_q\)))) # (!\address[1]~input_o\ & (((\s_memory~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~100_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~406_combout\,
	datad => \s_memory~108_q\,
	combout => \s_memory~407_combout\);

\s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~60_q\);

\s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~68_q\);

\s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~52_q\);

\s_memory~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~408_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~68_q\)) # (!\address[1]~input_o\ & ((\s_memory~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~68_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~52_q\,
	combout => \s_memory~408_combout\);

\s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~76_q\);

\s_memory~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~409_combout\ = (\address[0]~input_o\ & ((\s_memory~408_combout\ & ((\s_memory~76_q\))) # (!\s_memory~408_combout\ & (\s_memory~60_q\)))) # (!\address[0]~input_o\ & (((\s_memory~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~60_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~408_combout\,
	datad => \s_memory~76_q\,
	combout => \s_memory~409_combout\);

\s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~36_q\);

\s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~28_q\);

\s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~20_q\);

\s_memory~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~410_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~28_q\)) # (!\address[0]~input_o\ & ((\s_memory~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~28_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~20_q\,
	combout => \s_memory~410_combout\);

\s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~44_q\);

\s_memory~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~411_combout\ = (\address[1]~input_o\ & ((\s_memory~410_combout\ & ((\s_memory~44_q\))) # (!\s_memory~410_combout\ & (\s_memory~36_q\)))) # (!\address[1]~input_o\ & (((\s_memory~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~36_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~410_combout\,
	datad => \s_memory~44_q\,
	combout => \s_memory~411_combout\);

\s_memory~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~412_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~409_combout\)) # (!\address[2]~input_o\ & ((\s_memory~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~409_combout\,
	datac => \address[2]~input_o\,
	datad => \s_memory~411_combout\,
	combout => \s_memory~412_combout\);

\s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~124_q\);

\s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~132_q\);

\s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~116_q\);

\s_memory~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~413_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~132_q\)) # (!\address[1]~input_o\ & ((\s_memory~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~132_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~116_q\,
	combout => \s_memory~413_combout\);

\s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~140_q\);

\s_memory~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~414_combout\ = (\address[0]~input_o\ & ((\s_memory~413_combout\ & ((\s_memory~140_q\))) # (!\s_memory~413_combout\ & (\s_memory~124_q\)))) # (!\address[0]~input_o\ & (((\s_memory~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~124_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~413_combout\,
	datad => \s_memory~140_q\,
	combout => \s_memory~414_combout\);

\s_memory~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~415_combout\ = (\address[3]~input_o\ & ((\s_memory~412_combout\ & ((\s_memory~414_combout\))) # (!\s_memory~412_combout\ & (\s_memory~407_combout\)))) # (!\address[3]~input_o\ & (((\s_memory~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~407_combout\,
	datab => \address[3]~input_o\,
	datac => \s_memory~412_combout\,
	datad => \s_memory~414_combout\,
	combout => \s_memory~415_combout\);

\s_memory~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~416_combout\ = (\address[4]~input_o\ & (\s_memory~405_combout\)) # (!\address[4]~input_o\ & ((\s_memory~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~405_combout\,
	datab => \s_memory~415_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~416_combout\);

\writeData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(7),
	o => \writeData[7]~input_o\);

\s_memory~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~189_q\);

\s_memory~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~221_q\);

\s_memory~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~157_q\);

\s_memory~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~417_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~221_q\)) # (!\address[3]~input_o\ & ((\s_memory~157_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~221_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~157_q\,
	combout => \s_memory~417_combout\);

\s_memory~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~253_q\);

\s_memory~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~418_combout\ = (\address[2]~input_o\ & ((\s_memory~417_combout\ & ((\s_memory~253_q\))) # (!\s_memory~417_combout\ & (\s_memory~189_q\)))) # (!\address[2]~input_o\ & (((\s_memory~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~189_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~417_combout\,
	datad => \s_memory~253_q\,
	combout => \s_memory~418_combout\);

\s_memory~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~229_q\);

\s_memory~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~197_q\);

\s_memory~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~165_q\);

\s_memory~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~419_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~197_q\)) # (!\address[2]~input_o\ & ((\s_memory~165_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~197_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~165_q\,
	combout => \s_memory~419_combout\);

\s_memory~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~261_q\);

\s_memory~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~420_combout\ = (\address[3]~input_o\ & ((\s_memory~419_combout\ & ((\s_memory~261_q\))) # (!\s_memory~419_combout\ & (\s_memory~229_q\)))) # (!\address[3]~input_o\ & (((\s_memory~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~229_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~419_combout\,
	datad => \s_memory~261_q\,
	combout => \s_memory~420_combout\);

\s_memory~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~213_q\);

\s_memory~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~181_q\);

\s_memory~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~149_q\);

\s_memory~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~421_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~181_q\)) # (!\address[2]~input_o\ & ((\s_memory~149_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~181_q\,
	datac => \address[2]~input_o\,
	datad => \s_memory~149_q\,
	combout => \s_memory~421_combout\);

\s_memory~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~245_q\);

\s_memory~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~422_combout\ = (\address[3]~input_o\ & ((\s_memory~421_combout\ & ((\s_memory~245_q\))) # (!\s_memory~421_combout\ & (\s_memory~213_q\)))) # (!\address[3]~input_o\ & (((\s_memory~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~213_q\,
	datab => \address[3]~input_o\,
	datac => \s_memory~421_combout\,
	datad => \s_memory~245_q\,
	combout => \s_memory~422_combout\);

\s_memory~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~423_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~420_combout\)) # (!\address[1]~input_o\ & ((\s_memory~422_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~420_combout\,
	datac => \address[1]~input_o\,
	datad => \s_memory~422_combout\,
	combout => \s_memory~423_combout\);

\s_memory~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~205_q\);

\s_memory~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~237_q\);

\s_memory~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~173_q\);

\s_memory~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~424_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~237_q\)) # (!\address[3]~input_o\ & ((\s_memory~173_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~237_q\,
	datac => \address[3]~input_o\,
	datad => \s_memory~173_q\,
	combout => \s_memory~424_combout\);

\s_memory~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~269_q\);

\s_memory~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~425_combout\ = (\address[2]~input_o\ & ((\s_memory~424_combout\ & ((\s_memory~269_q\))) # (!\s_memory~424_combout\ & (\s_memory~205_q\)))) # (!\address[2]~input_o\ & (((\s_memory~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~205_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~424_combout\,
	datad => \s_memory~269_q\,
	combout => \s_memory~425_combout\);

\s_memory~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~426_combout\ = (\address[0]~input_o\ & ((\s_memory~423_combout\ & ((\s_memory~425_combout\))) # (!\s_memory~423_combout\ & (\s_memory~418_combout\)))) # (!\address[0]~input_o\ & (((\s_memory~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~418_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~423_combout\,
	datad => \s_memory~425_combout\,
	combout => \s_memory~426_combout\);

\s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~69_q\);

\s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~61_q\);

\s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~53_q\);

\s_memory~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~427_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~61_q\)) # (!\address[0]~input_o\ & ((\s_memory~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~61_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~53_q\,
	combout => \s_memory~427_combout\);

\s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~77_q\);

\s_memory~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~428_combout\ = (\address[1]~input_o\ & ((\s_memory~427_combout\ & ((\s_memory~77_q\))) # (!\s_memory~427_combout\ & (\s_memory~69_q\)))) # (!\address[1]~input_o\ & (((\s_memory~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~69_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~427_combout\,
	datad => \s_memory~77_q\,
	combout => \s_memory~428_combout\);

\s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~93_q\);

\s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~101_q\);

\s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~85_q\);

\s_memory~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~429_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~101_q\)) # (!\address[1]~input_o\ & ((\s_memory~85_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~101_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~85_q\,
	combout => \s_memory~429_combout\);

\s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~109_q\);

\s_memory~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~430_combout\ = (\address[0]~input_o\ & ((\s_memory~429_combout\ & ((\s_memory~109_q\))) # (!\s_memory~429_combout\ & (\s_memory~93_q\)))) # (!\address[0]~input_o\ & (((\s_memory~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~93_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~429_combout\,
	datad => \s_memory~109_q\,
	combout => \s_memory~430_combout\);

\s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~29_q\);

\s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~37_q\);

\s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~21_q\);

\s_memory~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~431_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~37_q\)) # (!\address[1]~input_o\ & ((\s_memory~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~37_q\,
	datac => \address[1]~input_o\,
	datad => \s_memory~21_q\,
	combout => \s_memory~431_combout\);

\s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~45_q\);

\s_memory~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~432_combout\ = (\address[0]~input_o\ & ((\s_memory~431_combout\ & ((\s_memory~45_q\))) # (!\s_memory~431_combout\ & (\s_memory~29_q\)))) # (!\address[0]~input_o\ & (((\s_memory~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~29_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~431_combout\,
	datad => \s_memory~45_q\,
	combout => \s_memory~432_combout\);

\s_memory~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~433_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~430_combout\)) # (!\address[3]~input_o\ & ((\s_memory~432_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~430_combout\,
	datac => \address[3]~input_o\,
	datad => \s_memory~432_combout\,
	combout => \s_memory~433_combout\);

\s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~133_q\);

\s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~125_q\);

\s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~117_q\);

\s_memory~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~434_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~125_q\)) # (!\address[0]~input_o\ & ((\s_memory~117_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \s_memory~125_q\,
	datac => \address[0]~input_o\,
	datad => \s_memory~117_q\,
	combout => \s_memory~434_combout\);

\s_memory~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \writeClk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \s_memory~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~141_q\);

\s_memory~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~435_combout\ = (\address[1]~input_o\ & ((\s_memory~434_combout\ & ((\s_memory~141_q\))) # (!\s_memory~434_combout\ & (\s_memory~133_q\)))) # (!\address[1]~input_o\ & (((\s_memory~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~133_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~434_combout\,
	datad => \s_memory~141_q\,
	combout => \s_memory~435_combout\);

\s_memory~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~436_combout\ = (\address[2]~input_o\ & ((\s_memory~433_combout\ & ((\s_memory~435_combout\))) # (!\s_memory~433_combout\ & (\s_memory~428_combout\)))) # (!\address[2]~input_o\ & (((\s_memory~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~428_combout\,
	datab => \address[2]~input_o\,
	datac => \s_memory~433_combout\,
	datad => \s_memory~435_combout\,
	combout => \s_memory~436_combout\);

\s_memory~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~437_combout\ = (\address[4]~input_o\ & (\s_memory~426_combout\)) # (!\address[4]~input_o\ & ((\s_memory~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~426_combout\,
	datab => \s_memory~436_combout\,
	datad => \address[4]~input_o\,
	combout => \s_memory~437_combout\);

ww_readData(0) <= \readData[0]~output_o\;

ww_readData(1) <= \readData[1]~output_o\;

ww_readData(2) <= \readData[2]~output_o\;

ww_readData(3) <= \readData[3]~output_o\;

ww_readData(4) <= \readData[4]~output_o\;

ww_readData(5) <= \readData[5]~output_o\;

ww_readData(6) <= \readData[6]~output_o\;

ww_readData(7) <= \readData[7]~output_o\;
END structure;


