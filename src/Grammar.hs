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
happyExpList = Happy_Data_Array.listArray (0,130) ([32768,0,0,512,0,0,0,512,0,0,0,0,1024,0,64,0,1024,0,0,1024,0,0,3,224,8192,0,0,48,3584,0,0,0,0,0,0,0,0,0,0,2,2048,3072,0,8192,0,32768,0,0,512,0,0,0,8,8192,12288,1,128,192,0,7672,0,256,0,0,32,48,0,0,0,0,0,0,0,0,0,1536,0,0,0,0,32768,0,0,0,0,0,32,16384,0,0,15360,0,0,4,0,8192,12288,0,128,192,0,2,3,2048,3072,0,32,48,32768,49152,0,512,768,0,8,12,8192,12288,0,3584,16,0,4,0,0,128,0,896,0,0,0,0,1024,0,0,0,0,8192,12288,1,0,0,0,1,0,57344,0,0,896,0,0,14,0,14336,0,0,224,0,32768,3,0,0,0,0,32,0,32768,0,16384,3,224,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,3,224,8192,0,0,0,64,0,4,0,0,0,0,0
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

action_0 (16) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (16) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (38) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (35) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (21) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (15) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (21) = happyShift action_8
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (17) = happyShift action_14
action_8 (18) = happyShift action_15
action_8 (38) = happyShift action_16
action_8 (39) = happyShift action_17
action_8 (40) = happyShift action_18
action_8 (5) = happyGoto action_9
action_8 (6) = happyGoto action_10
action_8 (7) = happyGoto action_11
action_8 (9) = happyGoto action_12
action_8 (10) = happyGoto action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (20) = happyShift action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (17) = happyShift action_14
action_10 (18) = happyShift action_15
action_10 (38) = happyShift action_16
action_10 (39) = happyShift action_17
action_10 (40) = happyShift action_18
action_10 (5) = happyGoto action_29
action_10 (6) = happyGoto action_10
action_10 (7) = happyGoto action_11
action_10 (9) = happyGoto action_12
action_10 (10) = happyGoto action_13
action_10 _ = happyReduce_3

action_11 _ = happyReduce_4

action_12 _ = happyReduce_5

action_13 _ = happyReduce_7

action_14 (38) = happyShift action_28
action_14 (8) = happyGoto action_27
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (22) = happyShift action_24
action_15 (37) = happyShift action_25
action_15 (38) = happyShift action_26
action_15 (13) = happyGoto action_22
action_15 (14) = happyGoto action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (30) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (22) = happyShift action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (22) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (38) = happyShift action_50
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (22) = happyShift action_24
action_20 (37) = happyShift action_25
action_20 (38) = happyShift action_26
action_20 (41) = happyShift action_49
action_20 (11) = happyGoto action_46
action_20 (12) = happyGoto action_47
action_20 (13) = happyGoto action_48
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (22) = happyShift action_24
action_21 (37) = happyShift action_25
action_21 (38) = happyShift action_26
action_21 (13) = happyGoto action_45
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (24) = happyShift action_36
action_22 (25) = happyShift action_37
action_22 (26) = happyShift action_38
action_22 (27) = happyShift action_39
action_22 (28) = happyShift action_40
action_22 (29) = happyShift action_41
action_22 (31) = happyShift action_42
action_22 (32) = happyShift action_43
action_22 (33) = happyShift action_44
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (19) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (22) = happyShift action_24
action_24 (37) = happyShift action_25
action_24 (38) = happyShift action_26
action_24 (13) = happyGoto action_34
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_20

action_26 _ = happyReduce_19

action_27 _ = happyReduce_9

action_28 (34) = happyShift action_32
action_28 (35) = happyShift action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_2

action_30 (36) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_1

action_32 (38) = happyShift action_28
action_32 (8) = happyGoto action_67
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (21) = happyShift action_66
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (23) = happyShift action_65
action_34 (24) = happyShift action_36
action_34 (25) = happyShift action_37
action_34 (26) = happyShift action_38
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (21) = happyShift action_64
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (22) = happyShift action_24
action_36 (37) = happyShift action_25
action_36 (38) = happyShift action_26
action_36 (13) = happyGoto action_63
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_24
action_37 (37) = happyShift action_25
action_37 (38) = happyShift action_26
action_37 (13) = happyGoto action_62
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (22) = happyShift action_24
action_38 (37) = happyShift action_25
action_38 (38) = happyShift action_26
action_38 (13) = happyGoto action_61
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (22) = happyShift action_24
action_39 (37) = happyShift action_25
action_39 (38) = happyShift action_26
action_39 (13) = happyGoto action_60
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (22) = happyShift action_24
action_40 (37) = happyShift action_25
action_40 (38) = happyShift action_26
action_40 (13) = happyGoto action_59
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (22) = happyShift action_24
action_41 (37) = happyShift action_25
action_41 (38) = happyShift action_26
action_41 (13) = happyGoto action_58
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (22) = happyShift action_24
action_42 (37) = happyShift action_25
action_42 (38) = happyShift action_26
action_42 (13) = happyGoto action_57
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (22) = happyShift action_24
action_43 (37) = happyShift action_25
action_43 (38) = happyShift action_26
action_43 (13) = happyGoto action_56
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_24
action_44 (37) = happyShift action_25
action_44 (38) = happyShift action_26
action_44 (13) = happyGoto action_55
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (24) = happyShift action_36
action_45 (25) = happyShift action_37
action_45 (26) = happyShift action_38
action_45 (35) = happyShift action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (23) = happyShift action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (34) = happyShift action_52
action_47 _ = happyReduce_16

action_48 (24) = happyShift action_36
action_48 (25) = happyShift action_37
action_48 (26) = happyShift action_38
action_48 _ = happyReduce_18

action_49 _ = happyReduce_17

action_50 (23) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_8

action_52 (22) = happyShift action_24
action_52 (37) = happyShift action_25
action_52 (38) = happyShift action_26
action_52 (41) = happyShift action_49
action_52 (11) = happyGoto action_71
action_52 (12) = happyGoto action_47
action_52 (13) = happyGoto action_48
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_14

action_54 (21) = happyShift action_70
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (24) = happyShift action_36
action_55 (25) = happyShift action_37
action_55 (26) = happyShift action_38
action_55 _ = happyReduce_26

action_56 (24) = happyShift action_36
action_56 (25) = happyShift action_37
action_56 (26) = happyShift action_38
action_56 _ = happyReduce_25

action_57 (24) = happyShift action_36
action_57 (25) = happyShift action_37
action_57 (26) = happyShift action_38
action_57 _ = happyReduce_29

action_58 (24) = happyShift action_36
action_58 (25) = happyShift action_37
action_58 (26) = happyShift action_38
action_58 _ = happyReduce_30

action_59 (24) = happyShift action_36
action_59 (25) = happyShift action_37
action_59 (26) = happyShift action_38
action_59 _ = happyReduce_27

action_60 (24) = happyShift action_36
action_60 (25) = happyShift action_37
action_60 (26) = happyShift action_38
action_60 _ = happyReduce_28

action_61 _ = happyReduce_24

action_62 (26) = happyShift action_38
action_62 _ = happyReduce_23

action_63 (26) = happyShift action_38
action_63 _ = happyReduce_22

action_64 (15) = happyShift action_69
action_64 (17) = happyShift action_14
action_64 (18) = happyShift action_15
action_64 (38) = happyShift action_16
action_64 (39) = happyShift action_17
action_64 (40) = happyShift action_18
action_64 (6) = happyGoto action_68
action_64 (7) = happyGoto action_11
action_64 (9) = happyGoto action_12
action_64 (10) = happyGoto action_13
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_21

action_66 _ = happyReduce_10

action_67 _ = happyReduce_11

action_68 _ = happyReduce_13

action_69 (21) = happyShift action_72
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_6

action_71 _ = happyReduce_15

action_72 (17) = happyShift action_14
action_72 (18) = happyShift action_15
action_72 (38) = happyShift action_16
action_72 (39) = happyShift action_17
action_72 (40) = happyShift action_18
action_72 (5) = happyGoto action_73
action_72 (6) = happyGoto action_10
action_72 (7) = happyGoto action_11
action_72 (9) = happyGoto action_12
action_72 (10) = happyGoto action_13
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (20) = happyShift action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (35) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (21) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_12

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

happyReduce_2 = happySpecReduce_2  5 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Lns happy_var_1 happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Ln happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (VarDec happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (While happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 5 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Write happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyTerminal (TokenIdentifier happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Read happy_var_3
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (VarDeclaration happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 _
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 (Id happy_var_1
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 (Ids happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 10 9 happyReduction_12
happyReduction_12 (_ `HappyStk`
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

happyReduce_13 = happyReduce 5 9 happyReduction_13
happyReduction_13 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (WhileShort happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 10 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WriteExpr happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  11 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (WArgs happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  11 happyReduction_16
happyReduction_16 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (WArg happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 (HappyTerminal (TokenWriteString happy_var_1))
	 =  HappyAbsSyn12
		 (String happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Expr happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  13 happyReduction_19
happyReduction_19 (HappyTerminal (TokenIdentifier happy_var_1))
	 =  HappyAbsSyn13
		 (Var happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  13 happyReduction_20
happyReduction_20 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn13
		 (Int happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  13 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Brack happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  13 happyReduction_22
happyReduction_22 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  13 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Times happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  14 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEqThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEqThan happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  14 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (EqualThan happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (DifferentThan happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

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
    = Program String Lines
    deriving (Eq, Show)

data Lines
    = Lns Line Lines
    | Ln Line
    deriving (Eq, Show)
    
data Line
    = VarDec VarDeclaration
    | While WhileExpr
    | Assign String Expr
    | Write WriteExpr
    | Read String
    deriving (Eq, Show)

data VarDeclaration
    = VarDeclaration IdList
    deriving (Eq, Show)

data IdList
    = Id String
    | Ids String IdList
    deriving (Eq, Show)

data WhileExpr
    = WhileLarge LogExpr Lines
    | WhileShort LogExpr Line
    deriving (Eq, Show)

data WriteExpr
    = WriteExpr WriteArgs
    deriving (Eq, Show)

data WriteArgs
    = WArgs WriteArg WriteArgs
    | WArg WriteArg
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
