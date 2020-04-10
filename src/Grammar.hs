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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,148) ([32768,0,0,512,0,0,0,512,0,0,0,0,8192,0,0,16,0,16384,0,1024,0,0,16,0,256,0,0,4,0,0,4,0,4096,0,0,12,896,12288,0,14,512,0,0,3,224,0,0,0,0,0,0,0,0,0,8192,0,128,192,0,512,0,2048,0,0,32,0,8192,0,0,0,128,0,0,8,8192,12288,1,128,192,0,7672,0,256,0,0,32,48,0,0,0,0,0,0,0,0,0,1536,0,0,0,0,32768,0,0,0,0,0,32,16384,0,0,15360,0,0,4,0,8192,12288,0,128,192,0,2,3,2048,3072,0,32,48,32768,49152,0,512,768,0,8,12,8192,12288,0,3584,16,0,4,0,0,128,0,896,0,0,0,0,1024,0,0,4,0,0,0,0,0,16,0,2,19,0,256,0,16,0,0,14,0,14336,0,0,224,0,32768,3,0,3584,0,0,56,0,0,0,0,512,0,0,8,0,52,3584,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,16384,0,0,0,0,0,4,0,0,0,0,0,0,12288,0,14,512,0,0,0,4,16384,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","lines","line","var_declaration","id_list","while_expr","write_expr","write_args","write_arg","expr","log_expr","begin","program_token","var","while","do","end","nl","'('","')'","'+'","'-'","'*'","'<'","'>'","'<>'","':='","'='","'>='","'<='","','","';'","'.'","int","id","writeln","readln","string","%eof"]
        bit_start = st * 42
        bit_end = (st + 1) * 42
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..41]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (16) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (16) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (38) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (38) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (35) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (35) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (21) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (21) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (15) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (21) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (17) = happyShift action_20
action_13 (18) = happyShift action_21
action_13 (38) = happyShift action_22
action_13 (39) = happyShift action_23
action_13 (40) = happyShift action_24
action_13 (5) = happyGoto action_25
action_13 (6) = happyGoto action_16
action_13 (7) = happyGoto action_17
action_13 (9) = happyGoto action_18
action_13 (10) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (17) = happyShift action_20
action_14 (18) = happyShift action_21
action_14 (38) = happyShift action_22
action_14 (39) = happyShift action_23
action_14 (40) = happyShift action_24
action_14 (5) = happyGoto action_15
action_14 (6) = happyGoto action_16
action_14 (7) = happyGoto action_17
action_14 (9) = happyGoto action_18
action_14 (10) = happyGoto action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (20) = happyShift action_38
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (17) = happyShift action_20
action_16 (18) = happyShift action_21
action_16 (38) = happyShift action_22
action_16 (39) = happyShift action_23
action_16 (40) = happyShift action_24
action_16 (5) = happyGoto action_37
action_16 (6) = happyGoto action_16
action_16 (7) = happyGoto action_17
action_16 (9) = happyGoto action_18
action_16 (10) = happyGoto action_19
action_16 _ = happyReduce_4

action_17 _ = happyReduce_5

action_18 _ = happyReduce_6

action_19 _ = happyReduce_8

action_20 (38) = happyShift action_36
action_20 (8) = happyGoto action_35
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (22) = happyShift action_32
action_21 (37) = happyShift action_33
action_21 (38) = happyShift action_34
action_21 (13) = happyGoto action_30
action_21 (14) = happyGoto action_31
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (30) = happyShift action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (22) = happyShift action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (22) = happyShift action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (20) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (36) = happyShift action_59
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (38) = happyShift action_58
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (22) = happyShift action_32
action_28 (37) = happyShift action_33
action_28 (38) = happyShift action_34
action_28 (41) = happyShift action_57
action_28 (11) = happyGoto action_54
action_28 (12) = happyGoto action_55
action_28 (13) = happyGoto action_56
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (22) = happyShift action_32
action_29 (37) = happyShift action_33
action_29 (38) = happyShift action_34
action_29 (13) = happyGoto action_53
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (24) = happyShift action_44
action_30 (25) = happyShift action_45
action_30 (26) = happyShift action_46
action_30 (27) = happyShift action_47
action_30 (28) = happyShift action_48
action_30 (29) = happyShift action_49
action_30 (31) = happyShift action_50
action_30 (32) = happyShift action_51
action_30 (33) = happyShift action_52
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (19) = happyShift action_43
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (22) = happyShift action_32
action_32 (37) = happyShift action_33
action_32 (38) = happyShift action_34
action_32 (13) = happyGoto action_42
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_21

action_34 _ = happyReduce_20

action_35 _ = happyReduce_10

action_36 (34) = happyShift action_40
action_36 (35) = happyShift action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_3

action_38 (36) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyFail (happyExpListPerState 39)

action_40 (38) = happyShift action_36
action_40 (8) = happyGoto action_77
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (21) = happyShift action_76
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_75
action_42 (24) = happyShift action_44
action_42 (25) = happyShift action_45
action_42 (26) = happyShift action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (21) = happyShift action_74
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_32
action_44 (37) = happyShift action_33
action_44 (38) = happyShift action_34
action_44 (13) = happyGoto action_73
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (22) = happyShift action_32
action_45 (37) = happyShift action_33
action_45 (38) = happyShift action_34
action_45 (13) = happyGoto action_72
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (22) = happyShift action_32
action_46 (37) = happyShift action_33
action_46 (38) = happyShift action_34
action_46 (13) = happyGoto action_71
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (22) = happyShift action_32
action_47 (37) = happyShift action_33
action_47 (38) = happyShift action_34
action_47 (13) = happyGoto action_70
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (22) = happyShift action_32
action_48 (37) = happyShift action_33
action_48 (38) = happyShift action_34
action_48 (13) = happyGoto action_69
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (22) = happyShift action_32
action_49 (37) = happyShift action_33
action_49 (38) = happyShift action_34
action_49 (13) = happyGoto action_68
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (22) = happyShift action_32
action_50 (37) = happyShift action_33
action_50 (38) = happyShift action_34
action_50 (13) = happyGoto action_67
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_32
action_51 (37) = happyShift action_33
action_51 (38) = happyShift action_34
action_51 (13) = happyGoto action_66
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (22) = happyShift action_32
action_52 (37) = happyShift action_33
action_52 (38) = happyShift action_34
action_52 (13) = happyGoto action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (24) = happyShift action_44
action_53 (25) = happyShift action_45
action_53 (26) = happyShift action_46
action_53 (35) = happyShift action_64
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (23) = happyShift action_63
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (34) = happyShift action_62
action_55 _ = happyReduce_17

action_56 (24) = happyShift action_44
action_56 (25) = happyShift action_45
action_56 (26) = happyShift action_46
action_56 _ = happyReduce_19

action_57 _ = happyReduce_18

action_58 (23) = happyShift action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (21) = happyShift action_60
action_59 _ = happyReduce_1

action_60 _ = happyReduce_2

action_61 (35) = happyShift action_83
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (22) = happyShift action_32
action_62 (37) = happyShift action_33
action_62 (38) = happyShift action_34
action_62 (41) = happyShift action_57
action_62 (11) = happyGoto action_82
action_62 (12) = happyGoto action_55
action_62 (13) = happyGoto action_56
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (35) = happyShift action_81
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (21) = happyShift action_80
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (24) = happyShift action_44
action_65 (25) = happyShift action_45
action_65 (26) = happyShift action_46
action_65 _ = happyReduce_27

action_66 (24) = happyShift action_44
action_66 (25) = happyShift action_45
action_66 (26) = happyShift action_46
action_66 _ = happyReduce_26

action_67 (24) = happyShift action_44
action_67 (25) = happyShift action_45
action_67 (26) = happyShift action_46
action_67 _ = happyReduce_30

action_68 (24) = happyShift action_44
action_68 (25) = happyShift action_45
action_68 (26) = happyShift action_46
action_68 _ = happyReduce_31

action_69 (24) = happyShift action_44
action_69 (25) = happyShift action_45
action_69 (26) = happyShift action_46
action_69 _ = happyReduce_28

action_70 (24) = happyShift action_44
action_70 (25) = happyShift action_45
action_70 (26) = happyShift action_46
action_70 _ = happyReduce_29

action_71 _ = happyReduce_25

action_72 (26) = happyShift action_46
action_72 _ = happyReduce_24

action_73 (26) = happyShift action_46
action_73 _ = happyReduce_23

action_74 (15) = happyShift action_79
action_74 (17) = happyShift action_20
action_74 (18) = happyShift action_21
action_74 (38) = happyShift action_22
action_74 (39) = happyShift action_23
action_74 (40) = happyShift action_24
action_74 (6) = happyGoto action_78
action_74 (7) = happyGoto action_17
action_74 (9) = happyGoto action_18
action_74 (10) = happyGoto action_19
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_22

action_76 _ = happyReduce_12

action_77 _ = happyReduce_11

action_78 _ = happyReduce_14

action_79 (21) = happyShift action_86
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_7

action_81 (21) = happyShift action_85
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_16

action_83 (21) = happyShift action_84
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_9

action_85 _ = happyReduce_15

action_86 (17) = happyShift action_20
action_86 (18) = happyShift action_21
action_86 (38) = happyShift action_22
action_86 (39) = happyShift action_23
action_86 (40) = happyShift action_24
action_86 (5) = happyGoto action_87
action_86 (6) = happyGoto action_16
action_86 (7) = happyGoto action_17
action_86 (9) = happyGoto action_18
action_86 (10) = happyGoto action_19
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (20) = happyShift action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (35) = happyShift action_89
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (21) = happyShift action_90
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_13

happyReduce_1 = happyReduce 9 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_2 happy_var_7
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 10 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_2 happy_var_7
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

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (VarDec happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (While happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happyReduce 5 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Write happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 6 happyReduction_9
happyReduction_9 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Read happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_2  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (VarDeclaration happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 _
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 10 9 happyReduction_13
happyReduction_13 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (WhileLarge happy_var_2 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 9 happyReduction_14
happyReduction_14 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (WhileShort happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 6 10 happyReduction_15
happyReduction_15 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WriteExpr happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  11 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  11 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 (HappyTerminal (TokenWriteString happy_var_1))
	 =  HappyAbsSyn12
		 (String happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Expr happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  13 happyReduction_20
happyReduction_20 (HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn13
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  13 happyReduction_21
happyReduction_21 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn13
		 (Int happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  13 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Brack happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  13 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  13 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Times happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEqThan happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  14 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEqThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (EqualThan happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (DifferentThan happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenBegin -> cont 15;
	TokenProgram -> cont 16;
	TokenVar -> cont 17;
	TokenWhile -> cont 18;
	TokenDo -> cont 19;
	TokenEnd -> cont 20;
	TokenNewline -> cont 21;
	TokenLeftParenthesis -> cont 22;
	TokenRightParenthesis -> cont 23;
	TokenPlus -> cont 24;
	TokenMinus -> cont 25;
	TokenProduct -> cont 26;
	TokenLessThan -> cont 27;
	TokenHigherThan -> cont 28;
	TokenDifferentThan -> cont 29;
	TokenAssignation -> cont 30;
	TokenEqualThan -> cont 31;
	TokenHigherEqualThan -> cont 32;
	TokenLessEqualThan -> cont 33;
	TokenComma -> cont 34;
	TokenSemicolon -> cont 35;
	TokenPoint -> cont 36;
	TokenInt happy_dollar_dollar -> cont 37;
	TokenIdentifier happy_dollar_dollar -> cont 38;
	TokenWrite -> cont 39;
	TokenRead -> cont 40;
	TokenWriteString happy_dollar_dollar -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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
    = Program String [Line]
    deriving (Eq, Show)
    
data Line
    = VarDec VarDeclaration
    | While WhileExpr
    | Assign String Expr
    | Write WriteExpr
    | Read String
    deriving (Eq, Show)

data VarDeclaration
    = VarDeclaration [String]
    deriving (Eq, Show)

data WhileExpr
    = WhileLarge LogExpr [Line]
    | WhileShort LogExpr Line
    deriving (Eq, Show)

data WriteExpr
    = WriteExpr [WriteArg]
    deriving (Eq, Show)
    
data WriteArg
    = String String
    | Expr Expr
    deriving (Eq, Show) 
    
data Expr 
    = Var String
    | Int Int
    | Brack Expr
    | Plus Expr Expr
    | Minus Expr Expr
    | Times Expr Expr
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
