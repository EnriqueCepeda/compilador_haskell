{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import Data.Char

{-# LANGUAGE BlockArguments #-}
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

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
happyExpList = Happy_Data_Array.listArray (0,141) ([8192,0,0,32,0,0,0,8,0,0,0,0,8,0,256,0,0,1,1024,0,0,4,0,64,0,16384,0,0,16,0,0,0,8,16,0,0,4,0,0,0,0,32768,1,1024,0,32768,0,56,0,2048,0,4,0,128,14336,0,2,0,128,14336,0,8,12,0,8,0,8,0,2048,0,0,0,0,0,0,0,2,0,0,512,0,0,8,2048,19456,0,8,12,57344,119,0,1,0,2048,3072,0,0,0,0,0,0,0,0,0,512,0,4,0,61440,0,0,4,0,2048,3072,0,8,12,2048,3072,0,8,12,2048,3072,0,8,12,2048,3072,0,8,12,2048,3072,0,224,1,4096,0,0,32768,0,57344,0,0,0,0,4096,0,0,0,0,0,256,0,8,76,0,256,0,4,0,57344,0,0,224,0,57344,0,0,224,0,57344,0,0,224,0,0,0,0,128,0,32768,0,36864,0,56,0,0,0,0,0,0,0,0,4,0,0,0,0,4,0,0,0,0,4,0,0,0,0,0,0,128,14336,0,2,0,0,256,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","lines","line","var_declaration","id_list","write_args","write_arg","expr","log_expr","begin","program_token","var","while","do","end","nl","'('","')'","'+'","'-'","'*'","'<'","'>'","'<>'","':='","'='","'>='","'<='","','","';'","'.'","int","id","writeln","readln","string","%eof"]
        bit_start = st * 40
        bit_end = (st + 1) * 40
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..39]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (14) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (36) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (40) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (36) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (33) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (33) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (19) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (19) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_12
action_9 (7) = happyGoto action_13
action_9 _ = happyReduce_11

action_10 (15) = happyShift action_12
action_10 (7) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (13) = happyShift action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (36) = happyShift action_16
action_12 (8) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (19) = happyShift action_21
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_10

action_16 (32) = happyShift action_19
action_16 (33) = happyShift action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (19) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_24
action_18 (36) = happyShift action_25
action_18 (37) = happyShift action_26
action_18 (38) = happyShift action_27
action_18 (5) = happyGoto action_30
action_18 (6) = happyGoto action_23
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (36) = happyShift action_16
action_19 (8) = happyGoto action_29
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (19) = happyShift action_28
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (16) = happyShift action_24
action_21 (36) = happyShift action_25
action_21 (37) = happyShift action_26
action_21 (38) = happyShift action_27
action_21 (5) = happyGoto action_22
action_21 (6) = happyGoto action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (18) = happyShift action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (16) = happyShift action_24
action_23 (36) = happyShift action_25
action_23 (37) = happyShift action_26
action_23 (38) = happyShift action_27
action_23 (5) = happyGoto action_40
action_23 (6) = happyGoto action_23
action_23 _ = happyReduce_4

action_24 (20) = happyShift action_37
action_24 (35) = happyShift action_38
action_24 (36) = happyShift action_39
action_24 (11) = happyGoto action_35
action_24 (12) = happyGoto action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (28) = happyShift action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (20) = happyShift action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (20) = happyShift action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_13

action_29 _ = happyReduce_12

action_30 (18) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (34) = happyShift action_60
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (36) = happyShift action_59
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (20) = happyShift action_37
action_33 (35) = happyShift action_38
action_33 (36) = happyShift action_39
action_33 (39) = happyShift action_58
action_33 (9) = happyGoto action_55
action_33 (10) = happyGoto action_56
action_33 (11) = happyGoto action_57
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (20) = happyShift action_37
action_34 (35) = happyShift action_38
action_34 (36) = happyShift action_39
action_34 (11) = happyGoto action_54
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (22) = happyShift action_45
action_35 (23) = happyShift action_46
action_35 (24) = happyShift action_47
action_35 (25) = happyShift action_48
action_35 (26) = happyShift action_49
action_35 (27) = happyShift action_50
action_35 (29) = happyShift action_51
action_35 (30) = happyShift action_52
action_35 (31) = happyShift action_53
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (17) = happyShift action_44
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (20) = happyShift action_37
action_37 (35) = happyShift action_38
action_37 (36) = happyShift action_39
action_37 (11) = happyGoto action_43
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_19

action_39 _ = happyReduce_18

action_40 _ = happyReduce_3

action_41 (34) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (19) = happyShift action_76
action_42 _ = happyReduce_1

action_43 (21) = happyShift action_75
action_43 (22) = happyShift action_45
action_43 (23) = happyShift action_46
action_43 (24) = happyShift action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_74
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (20) = happyShift action_37
action_45 (35) = happyShift action_38
action_45 (36) = happyShift action_39
action_45 (11) = happyGoto action_73
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_37
action_46 (35) = happyShift action_38
action_46 (36) = happyShift action_39
action_46 (11) = happyGoto action_72
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (20) = happyShift action_37
action_47 (35) = happyShift action_38
action_47 (36) = happyShift action_39
action_47 (11) = happyGoto action_71
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (20) = happyShift action_37
action_48 (35) = happyShift action_38
action_48 (36) = happyShift action_39
action_48 (11) = happyGoto action_70
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (20) = happyShift action_37
action_49 (35) = happyShift action_38
action_49 (36) = happyShift action_39
action_49 (11) = happyGoto action_69
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (20) = happyShift action_37
action_50 (35) = happyShift action_38
action_50 (36) = happyShift action_39
action_50 (11) = happyGoto action_68
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (20) = happyShift action_37
action_51 (35) = happyShift action_38
action_51 (36) = happyShift action_39
action_51 (11) = happyGoto action_67
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (20) = happyShift action_37
action_52 (35) = happyShift action_38
action_52 (36) = happyShift action_39
action_52 (11) = happyGoto action_66
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (20) = happyShift action_37
action_53 (35) = happyShift action_38
action_53 (36) = happyShift action_39
action_53 (11) = happyGoto action_65
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (22) = happyShift action_45
action_54 (23) = happyShift action_46
action_54 (24) = happyShift action_47
action_54 (33) = happyShift action_64
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (21) = happyShift action_63
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (32) = happyShift action_62
action_56 _ = happyReduce_15

action_57 (22) = happyShift action_45
action_57 (23) = happyShift action_46
action_57 (24) = happyShift action_47
action_57 _ = happyReduce_17

action_58 _ = happyReduce_16

action_59 (21) = happyShift action_61
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyFail (happyExpListPerState 60)

action_61 (33) = happyShift action_82
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (20) = happyShift action_37
action_62 (35) = happyShift action_38
action_62 (36) = happyShift action_39
action_62 (39) = happyShift action_58
action_62 (9) = happyGoto action_81
action_62 (10) = happyGoto action_56
action_62 (11) = happyGoto action_57
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (33) = happyShift action_80
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (19) = happyShift action_79
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (22) = happyShift action_45
action_65 (23) = happyShift action_46
action_65 (24) = happyShift action_47
action_65 _ = happyReduce_25

action_66 (22) = happyShift action_45
action_66 (23) = happyShift action_46
action_66 (24) = happyShift action_47
action_66 _ = happyReduce_24

action_67 (22) = happyShift action_45
action_67 (23) = happyShift action_46
action_67 (24) = happyShift action_47
action_67 _ = happyReduce_28

action_68 (22) = happyShift action_45
action_68 (23) = happyShift action_46
action_68 (24) = happyShift action_47
action_68 _ = happyReduce_29

action_69 (22) = happyShift action_45
action_69 (23) = happyShift action_46
action_69 (24) = happyShift action_47
action_69 _ = happyReduce_26

action_70 (22) = happyShift action_45
action_70 (23) = happyShift action_46
action_70 (24) = happyShift action_47
action_70 _ = happyReduce_27

action_71 _ = happyReduce_23

action_72 (24) = happyShift action_47
action_72 _ = happyReduce_22

action_73 (24) = happyShift action_47
action_73 _ = happyReduce_21

action_74 (13) = happyShift action_78
action_74 (16) = happyShift action_24
action_74 (36) = happyShift action_25
action_74 (37) = happyShift action_26
action_74 (38) = happyShift action_27
action_74 (6) = happyGoto action_77
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_20

action_76 _ = happyReduce_2

action_77 _ = happyReduce_6

action_78 (19) = happyShift action_85
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_7

action_80 (19) = happyShift action_84
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_14

action_82 (19) = happyShift action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_9

action_84 _ = happyReduce_8

action_85 (16) = happyShift action_24
action_85 (36) = happyShift action_25
action_85 (37) = happyShift action_26
action_85 (38) = happyShift action_27
action_85 (5) = happyGoto action_86
action_85 (6) = happyGoto action_23
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (18) = happyShift action_87
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (33) = happyShift action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (19) = happyShift action_89
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_5

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

happyReduce_7 = happyReduce 5 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 6 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Write happy_var_3
	) `HappyStk` happyRest

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
		 (happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_0  7 happyReduction_11
happyReduction_11  =  HappyAbsSyn7
		 ([]
	)

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 _
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1:happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  10 happyReduction_16
happyReduction_16 (HappyTerminal (TokenWriteString happy_var_1))
	 =  HappyAbsSyn10
		 (String happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Expr happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  11 happyReduction_19
happyReduction_19 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn11
		 (Int happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Brack happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  11 happyReduction_21
happyReduction_21 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Multiply happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterEqThan happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (LessEqThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (EqualThan happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (DifferentThan happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

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
	TokenLeftParenthesis -> cont 20;
	TokenRightParenthesis -> cont 21;
	TokenPlus -> cont 22;
	TokenMinus -> cont 23;
	TokenProduct -> cont 24;
	TokenLessThan -> cont 25;
	TokenHigherThan -> cont 26;
	TokenDifferentThan -> cont 27;
	TokenAssignation -> cont 28;
	TokenEqualThan -> cont 29;
	TokenHigherEqualThan -> cont 30;
	TokenLessEqualThan -> cont 31;
	TokenComma -> cont 32;
	TokenSemicolon -> cont 33;
	TokenPoint -> cont 34;
	TokenInt happy_dollar_dollar -> cont 35;
	TokenIdentifier happy_dollar_dollar -> cont 36;
	TokenWrite -> cont 37;
	TokenRead -> cont 38;
	TokenWriteString happy_dollar_dollar -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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
    | Int Int
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







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc7199_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
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
