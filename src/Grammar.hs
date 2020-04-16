{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import Data.Char

{-# LANGUAGE BlockArguments #-}
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,166) ([8192,0,0,256,0,0,0,4096,0,0,0,0,0,4,0,1024,0,0,32,32768,0,0,1024,0,0,2,0,4096,0,0,32,0,0,0,1024,2048,0,0,4096,0,0,0,0,0,0,12,8192,0,0,544,28672,0,0,128,16384,0,0,1088,57344,0,8,0,4096,1,56,16384,24576,0,512,768,0,4096,0,32768,0,0,1024,0,0,0,0,0,0,0,64,0,0,0,16,0,0,2,4096,38912,0,128,192,0,15344,0,2048,0,0,256,384,0,0,0,0,0,0,8,0,0,0,0,0,8192,0,64,0,0,2,0,0,30,0,128,0,0,64,96,0,2,3,4096,6144,0,128,192,0,4,6,8192,12288,0,256,384,0,8,12,16384,24576,0,14336,64,0,32,0,0,2048,0,28672,0,0,0,0,0,2,0,0,0,0,0,8,0,2,19,0,512,0,8,0,0,112,0,32768,3,0,7168,0,0,224,0,0,7,0,14336,0,0,0,0,0,8,0,16384,0,2048,0,0,0,0,0,274,14336,0,0,0,0,0,0,256,0,0,8,0,0,0,0,512,0,0,0,0,32768,0,0,0,0,0,0,0,8192,2,112,4352,32768,3,32,0,0,1,0,0,8192,0,0,256,0,4,0,8192,0,0,2048,0,0,0,0,16384,0,0,8,0,0,16,0,4096,1,56,512,0,0,0,64,0,1,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","lines","line","var_declaration","id_list","write_args","write_arg","expr","log_expr","begin","program_token","var","while","do","end","nl","if","then","else","'('","')'","'+'","'-'","'*'","'<'","'>'","'<>'","':='","'='","'>='","'<='","','","';'","'.'","int","id","writeln","readln","string","%eof"]
        bit_start = st * 43
        bit_end = (st + 1) * 43
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..42]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (14) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (39) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (43) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (39) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (36) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (36) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (19) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (19) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_12
action_9 (7) = happyGoto action_13
action_9 _ = happyReduce_13

action_10 (15) = happyShift action_12
action_10 (7) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (13) = happyShift action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (39) = happyShift action_16
action_12 (8) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (19) = happyShift action_21
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_12

action_16 (35) = happyShift action_19
action_16 (36) = happyShift action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (19) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_24
action_18 (20) = happyShift action_25
action_18 (39) = happyShift action_26
action_18 (40) = happyShift action_27
action_18 (41) = happyShift action_28
action_18 (5) = happyGoto action_31
action_18 (6) = happyGoto action_23
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (39) = happyShift action_16
action_19 (8) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (19) = happyShift action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (16) = happyShift action_24
action_21 (20) = happyShift action_25
action_21 (39) = happyShift action_26
action_21 (40) = happyShift action_27
action_21 (41) = happyShift action_28
action_21 (5) = happyGoto action_22
action_21 (6) = happyGoto action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (18) = happyShift action_43
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (16) = happyShift action_24
action_23 (20) = happyShift action_25
action_23 (39) = happyShift action_26
action_23 (40) = happyShift action_27
action_23 (41) = happyShift action_28
action_23 (5) = happyGoto action_42
action_23 (6) = happyGoto action_23
action_23 _ = happyReduce_4

action_24 (23) = happyShift action_38
action_24 (38) = happyShift action_39
action_24 (39) = happyShift action_40
action_24 (11) = happyGoto action_36
action_24 (12) = happyGoto action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (23) = happyShift action_38
action_25 (38) = happyShift action_39
action_25 (39) = happyShift action_40
action_25 (11) = happyGoto action_36
action_25 (12) = happyGoto action_37
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (31) = happyShift action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (23) = happyShift action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (23) = happyShift action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_15

action_30 _ = happyReduce_14

action_31 (18) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (37) = happyShift action_63
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (39) = happyShift action_62
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (23) = happyShift action_38
action_34 (38) = happyShift action_39
action_34 (39) = happyShift action_40
action_34 (42) = happyShift action_61
action_34 (9) = happyGoto action_58
action_34 (10) = happyGoto action_59
action_34 (11) = happyGoto action_60
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_38
action_35 (38) = happyShift action_39
action_35 (39) = happyShift action_40
action_35 (11) = happyGoto action_57
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (25) = happyShift action_48
action_36 (26) = happyShift action_49
action_36 (27) = happyShift action_50
action_36 (28) = happyShift action_51
action_36 (29) = happyShift action_52
action_36 (30) = happyShift action_53
action_36 (32) = happyShift action_54
action_36 (33) = happyShift action_55
action_36 (34) = happyShift action_56
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (21) = happyShift action_47
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_38
action_38 (38) = happyShift action_39
action_38 (39) = happyShift action_40
action_38 (11) = happyGoto action_46
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_21

action_40 _ = happyReduce_20

action_41 (17) = happyShift action_45
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_3

action_43 (37) = happyShift action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_80
action_44 _ = happyReduce_1

action_45 (19) = happyShift action_79
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (24) = happyShift action_78
action_46 (25) = happyShift action_48
action_46 (26) = happyShift action_49
action_46 (27) = happyShift action_50
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (19) = happyShift action_77
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (23) = happyShift action_38
action_48 (38) = happyShift action_39
action_48 (39) = happyShift action_40
action_48 (11) = happyGoto action_76
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (23) = happyShift action_38
action_49 (38) = happyShift action_39
action_49 (39) = happyShift action_40
action_49 (11) = happyGoto action_75
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (23) = happyShift action_38
action_50 (38) = happyShift action_39
action_50 (39) = happyShift action_40
action_50 (11) = happyGoto action_74
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (23) = happyShift action_38
action_51 (38) = happyShift action_39
action_51 (39) = happyShift action_40
action_51 (11) = happyGoto action_73
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (23) = happyShift action_38
action_52 (38) = happyShift action_39
action_52 (39) = happyShift action_40
action_52 (11) = happyGoto action_72
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (23) = happyShift action_38
action_53 (38) = happyShift action_39
action_53 (39) = happyShift action_40
action_53 (11) = happyGoto action_71
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (23) = happyShift action_38
action_54 (38) = happyShift action_39
action_54 (39) = happyShift action_40
action_54 (11) = happyGoto action_70
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (23) = happyShift action_38
action_55 (38) = happyShift action_39
action_55 (39) = happyShift action_40
action_55 (11) = happyGoto action_69
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_38
action_56 (38) = happyShift action_39
action_56 (39) = happyShift action_40
action_56 (11) = happyGoto action_68
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (25) = happyShift action_48
action_57 (26) = happyShift action_49
action_57 (27) = happyShift action_50
action_57 (36) = happyShift action_67
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (24) = happyShift action_66
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (35) = happyShift action_65
action_59 _ = happyReduce_17

action_60 (25) = happyShift action_48
action_60 (26) = happyShift action_49
action_60 (27) = happyShift action_50
action_60 _ = happyReduce_19

action_61 _ = happyReduce_18

action_62 (24) = happyShift action_64
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyFail (happyExpListPerState 63)

action_64 (36) = happyShift action_87
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (23) = happyShift action_38
action_65 (38) = happyShift action_39
action_65 (39) = happyShift action_40
action_65 (42) = happyShift action_61
action_65 (9) = happyGoto action_86
action_65 (10) = happyGoto action_59
action_65 (11) = happyGoto action_60
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (36) = happyShift action_85
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (19) = happyShift action_84
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (25) = happyShift action_48
action_68 (26) = happyShift action_49
action_68 (27) = happyShift action_50
action_68 _ = happyReduce_27

action_69 (25) = happyShift action_48
action_69 (26) = happyShift action_49
action_69 (27) = happyShift action_50
action_69 _ = happyReduce_26

action_70 (25) = happyShift action_48
action_70 (26) = happyShift action_49
action_70 (27) = happyShift action_50
action_70 _ = happyReduce_30

action_71 (25) = happyShift action_48
action_71 (26) = happyShift action_49
action_71 (27) = happyShift action_50
action_71 _ = happyReduce_31

action_72 (25) = happyShift action_48
action_72 (26) = happyShift action_49
action_72 (27) = happyShift action_50
action_72 _ = happyReduce_28

action_73 (25) = happyShift action_48
action_73 (26) = happyShift action_49
action_73 (27) = happyShift action_50
action_73 _ = happyReduce_29

action_74 _ = happyReduce_25

action_75 (27) = happyShift action_50
action_75 _ = happyReduce_24

action_76 (27) = happyShift action_50
action_76 _ = happyReduce_23

action_77 (13) = happyShift action_83
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_22

action_79 (13) = happyShift action_82
action_79 (16) = happyShift action_24
action_79 (20) = happyShift action_25
action_79 (39) = happyShift action_26
action_79 (40) = happyShift action_27
action_79 (41) = happyShift action_28
action_79 (6) = happyGoto action_81
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_2

action_81 _ = happyReduce_6

action_82 (19) = happyShift action_91
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (19) = happyShift action_90
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_9

action_85 (19) = happyShift action_89
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_16

action_87 (19) = happyShift action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_11

action_89 _ = happyReduce_10

action_90 (16) = happyShift action_24
action_90 (20) = happyShift action_25
action_90 (39) = happyShift action_26
action_90 (40) = happyShift action_27
action_90 (41) = happyShift action_28
action_90 (5) = happyGoto action_93
action_90 (6) = happyGoto action_23
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (16) = happyShift action_24
action_91 (20) = happyShift action_25
action_91 (39) = happyShift action_26
action_91 (40) = happyShift action_27
action_91 (41) = happyShift action_28
action_91 (5) = happyGoto action_92
action_91 (6) = happyGoto action_23
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (18) = happyShift action_95
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (18) = happyShift action_94
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (36) = happyShift action_97
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (36) = happyShift action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (19) = happyShift action_99
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (19) = happyShift action_98
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (22) = happyShift action_100
action_98 _ = happyReduce_7

action_99 _ = happyReduce_5

action_100 (19) = happyShift action_101
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (13) = happyShift action_102
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (19) = happyShift action_103
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (16) = happyShift action_24
action_103 (20) = happyShift action_25
action_103 (39) = happyShift action_26
action_103 (40) = happyShift action_27
action_103 (41) = happyShift action_28
action_103 (5) = happyGoto action_104
action_103 (6) = happyGoto action_23
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (18) = happyShift action_105
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (36) = happyShift action_106
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (19) = happyShift action_107
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_8

happyReduce_1 = happyReduce 10 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_2 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 11 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_2 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1:happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happyReduce 10 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (WhileLarge happy_var_2 happy_var_7
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 5 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (WhileShort happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 10 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfShort happy_var_2 happy_var_7
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 18 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_15) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfLarge happy_var_2 happy_var_7 happy_var_15
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 6 happyReduction_9
happyReduction_9 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 6 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Write happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 6 happyReduction_11
happyReduction_11 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Read happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_0  7 happyReduction_13
happyReduction_13  =  HappyAbsSyn7
		 ([]
	)

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 _
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  9 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1:happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  10 happyReduction_18
happyReduction_18 (HappyTerminal (TokenWriteString happy_var_1))
	 =  HappyAbsSyn10
		 (String happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Expr happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  11 happyReduction_20
happyReduction_20 (HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn11
		 (Int happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Brack happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Multiply happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterEqThan happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (LessEqThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (EqualThan happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  12 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (DifferentThan happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenBegin -> cont 13;
	TokenProgram -> cont 14;
	TokenVar -> cont 15;
	TokenWhile -> cont 16;
	TokenDo -> cont 17;
	TokenEnd -> cont 18;
	TokenNewLine -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	TokenLeftParenthesis -> cont 23;
	TokenRightParenthesis -> cont 24;
	TokenPlus -> cont 25;
	TokenMinus -> cont 26;
	TokenProduct -> cont 27;
	TokenLessThan -> cont 28;
	TokenHigherThan -> cont 29;
	TokenDifferentThan -> cont 30;
	TokenAssignation -> cont 31;
	TokenEqualThan -> cont 32;
	TokenHigherEqualThan -> cont 33;
	TokenLessEqualThan -> cont 34;
	TokenComma -> cont 35;
	TokenSemicolon -> cont 36;
	TokenPoint -> cont 37;
	TokenInt happy_dollar_dollar -> cont 38;
	TokenIdentifier happy_dollar_dollar -> cont 39;
	TokenWrite -> cont 40;
	TokenRead -> cont 41;
	TokenWriteString happy_dollar_dollar -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Program
    = Program String [String] [Line]
    deriving (Eq, Show)
    
data Line
    = WhileLarge LogExpr [Line]
    | WhileShort LogExpr Line
    | IfShort LogExpr [Line]
    | IfLarge LogExpr [Line] [Line]
    | Assign String Expr
    | Write [WriteArg]
    | Read String
    deriving (Eq, Show)

data WriteArg
    = String String
    | Expr Expr
    deriving (Eq, Show) 
    
data Expr 
    = Var String
    | Int Integer
    | Brack Expr
    | Plus Expr Expr
    | Minus Expr Expr
    | Multiply Expr Expr
    deriving (Eq, Show)

data LogExpr
    = GreaterEqThan Expr Expr
    | LessEqThan Expr Expr
    | GreaterThan Expr Expr
    | LessThan Expr Expr
    | EqualThan Expr Expr
    | DifferentThan Expr Expr
    deriving (Eq, Show)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
