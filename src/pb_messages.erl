-module(pb_messages).

-export([msg_type/1, msg_code/1, decoder_for/1]).

-spec msg_type(non_neg_integer()) -> atom().

msg_type(1) -> loginReq;
msg_type(2) -> loginResp;
msg_type(3) -> errResp;
msg_type(4) -> beatHeartReq;
msg_type(5) -> beatHeartResp;
msg_type(6) -> gmReq;
msg_type(7) -> gmResp;
msg_type(8) -> kickUserPush;
msg_type(9) -> getBalanceReq;
msg_type(10) -> getBalanceResp;
msg_type(11) -> balancePush;
msg_type(12) -> jpGetBalanceReq;
msg_type(13) -> jpGetBalanceResp;
msg_type(14) -> jpBalancePush;
msg_type(15) -> userSettingReq;
msg_type(16) -> shareBalanceReq;
msg_type(17) -> joinRoomReq;
msg_type(18) -> joinRoomResp;
msg_type(19) -> syncJoinPush;
msg_type(20) -> syncLeavePush;
msg_type(21) -> resultPush;
msg_type(22) -> changeRoomReq;
msg_type(23) -> changeRoomResp;
msg_type(24) -> transferReq;
msg_type(25) -> transferResp;
msg_type(26) -> mainWalletReq;
msg_type(27) -> mainWalletResp;
msg_type(200) -> spinReq;
msg_type(201) -> spinResp;
msg_type(202) -> guessReq;
msg_type(203) -> guessResp;
msg_type(204) -> restoreReq;
msg_type(205) -> restoreResp;
msg_type(206) -> lgDataReq;
msg_type(207) -> lgDataResp;
msg_type(208) -> lgActionReq;
msg_type(209) -> lgActionResp;
msg_type(210) -> handleStateReq;
msg_type(211) -> handleStateResp;
msg_type(300) -> fgFruitJoinReq;
msg_type(301) -> fgFruitJoinResp;
msg_type(302) -> fgFruitBetInReq;
msg_type(303) -> fgFruitBetInResp;
msg_type(304) -> fgFruitLeaveReq;
msg_type(305) -> fgFruitLeaveResp;
msg_type(306) -> fgFruitStatePush;
msg_type(307) -> fgFruitBetPush;
msg_type(308) -> fgFruitBetResetReq;
msg_type(309) -> fgFruitBetResetResp;
msg_type(310) -> fgFruitPlayReq;
msg_type(311) -> fgFruitPlayResp;
msg_type(312) -> fgFruitOtherReq;
msg_type(313) -> fgFruitOtherResp;
msg_type(400) -> fruitSpecialDuobaoReq;
msg_type(401) -> fruitSpecialDuobaoResp;
msg_type(402) -> fruitSpecialDuobaoLGReq;
msg_type(403) -> fruitSpecialDuobaoLGResp;
msg_type(404) -> fruitSpecialLuckShootReq;
msg_type(405) -> fruitSpecialLuckShootResp;
msg_type(406) -> fruitSpecialFallingReq;
msg_type(407) -> fruitSpecialFallingResp;
msg_type(408) -> fruitSpecialLuck5Req;
msg_type(409) -> fruitSpecialLuck5Resp;
msg_type(410) -> fruitSpecialLuck5ChangeReq;
msg_type(411) -> fruitSpecialLuck5ChangeResp;
msg_type(412) -> fruitSpecialDuobaoReconReq;
msg_type(413) -> fruitSpecialDuobaoReconResp;
msg_type(414) -> fruitSpecialDuobaoClearReq;
msg_type(415) -> fruitSpecialDuobaoClearResp;
msg_type(416) -> fruitSpecialMazeReq;
msg_type(417) -> fruitSpecialMazeResp;
msg_type(418) -> fruitSpecialMazeReconReq;
msg_type(419) -> fruitSpecialMazeReconResp;
msg_type(420) -> fruitSpecialFootballKingReq;
msg_type(421) -> fruitSpecialFootballKingResp;
msg_type(422) -> luckyHandReconnReq;
msg_type(423) -> luckyHandReconnResp;
msg_type(424) -> luckyHandJoinRoomReq;
msg_type(425) -> luckyHandJoinRoomResp;
msg_type(426) -> luckyHandChangeSeatReq;
msg_type(427) -> luckyHandChangeSeatResp;
msg_type(428) -> luckyHandOutRoomReq;
msg_type(429) -> luckyHandOutRoomResp;
msg_type(430) -> luckyHandPrepareReq;
msg_type(431) -> luckyHandPrepareResp;
msg_type(432) -> luckyHandSelectPokerReq;
msg_type(433) -> luckyHandSelectPokerResp;
msg_type(434) -> luckyHandPreparingStatePush;
msg_type(435) -> luckyHandCountdowningStatePush;
msg_type(436) -> luckyHandGamingStatePush;
msg_type(437) -> luckyHandGamingSelectPush;
msg_type(438) -> luckyHandSettlingStatePush;
msg_type(439) -> luckyHandEventPush;
msg_type(_) -> undefined.

-spec msg_code(atom()) -> non_neg_integer().

msg_code(loginReq) -> 1;
msg_code(loginResp) -> 2;
msg_code(errResp) -> 3;
msg_code(beatHeartReq) -> 4;
msg_code(beatHeartResp) -> 5;
msg_code(gmReq) -> 6;
msg_code(gmResp) -> 7;
msg_code(kickUserPush) -> 8;
msg_code(getBalanceReq) -> 9;
msg_code(getBalanceResp) -> 10;
msg_code(balancePush) -> 11;
msg_code(jpGetBalanceReq) -> 12;
msg_code(jpGetBalanceResp) -> 13;
msg_code(jpBalancePush) -> 14;
msg_code(userSettingReq) -> 15;
msg_code(shareBalanceReq) -> 16;
msg_code(joinRoomReq) -> 17;
msg_code(joinRoomResp) -> 18;
msg_code(syncJoinPush) -> 19;
msg_code(syncLeavePush) -> 20;
msg_code(resultPush) -> 21;
msg_code(changeRoomReq) -> 22;
msg_code(changeRoomResp) -> 23;
msg_code(transferReq) -> 24;
msg_code(transferResp) -> 25;
msg_code(mainWalletReq) -> 26;
msg_code(mainWalletResp) -> 27;
msg_code(spinReq) -> 200;
msg_code(spinResp) -> 201;
msg_code(guessReq) -> 202;
msg_code(guessResp) -> 203;
msg_code(restoreReq) -> 204;
msg_code(restoreResp) -> 205;
msg_code(lgDataReq) -> 206;
msg_code(lgDataResp) -> 207;
msg_code(lgActionReq) -> 208;
msg_code(lgActionResp) -> 209;
msg_code(handleStateReq) -> 210;
msg_code(handleStateResp) -> 211;
msg_code(fgFruitJoinReq) -> 300;
msg_code(fgFruitJoinResp) -> 301;
msg_code(fgFruitBetInReq) -> 302;
msg_code(fgFruitBetInResp) -> 303;
msg_code(fgFruitLeaveReq) -> 304;
msg_code(fgFruitLeaveResp) -> 305;
msg_code(fgFruitStatePush) -> 306;
msg_code(fgFruitBetPush) -> 307;
msg_code(fgFruitBetResetReq) -> 308;
msg_code(fgFruitBetResetResp) -> 309;
msg_code(fgFruitPlayReq) -> 310;
msg_code(fgFruitPlayResp) -> 311;
msg_code(fgFruitOtherReq) -> 312;
msg_code(fgFruitOtherResp) -> 313;
msg_code(fruitSpecialDuobaoReq) -> 400;
msg_code(fruitSpecialDuobaoResp) -> 401;
msg_code(fruitSpecialDuobaoLGReq) -> 402;
msg_code(fruitSpecialDuobaoLGResp) -> 403;
msg_code(fruitSpecialLuckShootReq) -> 404;
msg_code(fruitSpecialLuckShootResp) -> 405;
msg_code(fruitSpecialFallingReq) -> 406;
msg_code(fruitSpecialFallingResp) -> 407;
msg_code(fruitSpecialLuck5Req) -> 408;
msg_code(fruitSpecialLuck5Resp) -> 409;
msg_code(fruitSpecialLuck5ChangeReq) -> 410;
msg_code(fruitSpecialLuck5ChangeResp) -> 411;
msg_code(fruitSpecialDuobaoReconReq) -> 412;
msg_code(fruitSpecialDuobaoReconResp) -> 413;
msg_code(fruitSpecialDuobaoClearReq) -> 414;
msg_code(fruitSpecialDuobaoClearResp) -> 415;
msg_code(fruitSpecialMazeReq) -> 416;
msg_code(fruitSpecialMazeResp) -> 417;
msg_code(fruitSpecialMazeReconReq) -> 418;
msg_code(fruitSpecialMazeReconResp) -> 419;
msg_code(fruitSpecialFootballKingReq) -> 420;
msg_code(fruitSpecialFootballKingResp) -> 421;
msg_code(luckyHandReconnReq) -> 422;
msg_code(luckyHandReconnResp) -> 423;
msg_code(luckyHandJoinRoomReq) -> 424;
msg_code(luckyHandJoinRoomResp) -> 425;
msg_code(luckyHandChangeSeatReq) -> 426;
msg_code(luckyHandChangeSeatResp) -> 427;
msg_code(luckyHandOutRoomReq) -> 428;
msg_code(luckyHandOutRoomResp) -> 429;
msg_code(luckyHandPrepareReq) -> 430;
msg_code(luckyHandPrepareResp) -> 431;
msg_code(luckyHandSelectPokerReq) -> 432;
msg_code(luckyHandSelectPokerResp) -> 433;
msg_code(luckyHandPreparingStatePush) -> 434;
msg_code(luckyHandCountdowningStatePush) -> 435;
msg_code(luckyHandGamingStatePush) -> 436;
msg_code(luckyHandGamingSelectPush) -> 437;
msg_code(luckyHandSettlingStatePush) -> 438;
msg_code(luckyHandEventPush) -> 439.

-spec decoder_for(non_neg_integer()) -> module().


decoder_for(1) -> common_pb;
decoder_for(2) -> common_pb;
decoder_for(3) -> common_pb;
decoder_for(4) -> common_pb;
decoder_for(5) -> common_pb;
decoder_for(6) -> common_pb;
decoder_for(7) -> common_pb;
decoder_for(8) -> common_pb;
decoder_for(9) -> common_pb;
decoder_for(10) -> common_pb;
decoder_for(11) -> common_pb;
decoder_for(12) -> jackpot_pb;
decoder_for(13) -> jackpot_pb;
decoder_for(14) -> jackpot_pb;
decoder_for(15) -> common_pb;
decoder_for(16) -> common_pb;
decoder_for(17) -> erly_room_pb;
decoder_for(18) -> erly_room_pb;
decoder_for(19) -> erly_room_pb;
decoder_for(20) -> erly_room_pb;
decoder_for(21) -> erly_room_pb;
decoder_for(22) -> erly_room_pb;
decoder_for(23) -> erly_room_pb;
decoder_for(24) -> common_pb;
decoder_for(25) -> common_pb;
decoder_for(26) -> common_pb;
decoder_for(27) -> common_pb;
decoder_for(200) -> slot_spin_pb;
decoder_for(201) -> slot_spin_pb;
decoder_for(202) -> slot_spin_pb;
decoder_for(203) -> slot_spin_pb;
decoder_for(204) -> slot_spin_pb;
decoder_for(205) -> slot_spin_pb;
decoder_for(206) -> slot_spin_pb;
decoder_for(207) -> slot_spin_pb;
decoder_for(208) -> slot_spin_pb;
decoder_for(209) -> slot_spin_pb;
decoder_for(210) -> slot_spin_pb;
decoder_for(211) -> slot_spin_pb;
decoder_for(300) -> fg_fruit_pb;
decoder_for(301) -> fg_fruit_pb;
decoder_for(302) -> fg_fruit_pb;
decoder_for(303) -> fg_fruit_pb;
decoder_for(304) -> fg_fruit_pb;
decoder_for(305) -> fg_fruit_pb;
decoder_for(306) -> fg_fruit_pb;
decoder_for(307) -> fg_fruit_pb;
decoder_for(308) -> fg_fruit_pb;
decoder_for(309) -> fg_fruit_pb;
decoder_for(310) -> fg_fruit_pb;
decoder_for(311) -> fg_fruit_pb;
decoder_for(312) -> fg_fruit_pb;
decoder_for(313) -> fg_fruit_pb;
decoder_for(400) -> fg_fruit_special_pb;
decoder_for(401) -> fg_fruit_special_pb;
decoder_for(402) -> fg_fruit_special_pb;
decoder_for(403) -> fg_fruit_special_pb;
decoder_for(404) -> fg_fruit_special_pb;
decoder_for(405) -> fg_fruit_special_pb;
decoder_for(406) -> fg_fruit_special_pb;
decoder_for(407) -> fg_fruit_special_pb;
decoder_for(408) -> fg_fruit_special_pb;
decoder_for(409) -> fg_fruit_special_pb;
decoder_for(410) -> fg_fruit_special_pb;
decoder_for(411) -> fg_fruit_special_pb;
decoder_for(412) -> fg_fruit_special_pb;
decoder_for(413) -> fg_fruit_special_pb;
decoder_for(414) -> fg_fruit_special_pb;
decoder_for(415) -> fg_fruit_special_pb;
decoder_for(416) -> fg_fruit_special_pb;
decoder_for(417) -> fg_fruit_special_pb;
decoder_for(418) -> fg_fruit_special_pb;
decoder_for(419) -> fg_fruit_special_pb;
decoder_for(420) -> fg_fruit_special_pb;
decoder_for(421) -> fg_fruit_special_pb;
decoder_for(422) -> fg_fruit_special_pb;
decoder_for(423) -> fg_fruit_special_pb;
decoder_for(424) -> fg_fruit_special_pb;
decoder_for(425) -> fg_fruit_special_pb;
decoder_for(426) -> fg_fruit_special_pb;
decoder_for(427) -> fg_fruit_special_pb;
decoder_for(428) -> fg_fruit_special_pb;
decoder_for(429) -> fg_fruit_special_pb;
decoder_for(430) -> fg_fruit_special_pb;
decoder_for(431) -> fg_fruit_special_pb;
decoder_for(432) -> fg_fruit_special_pb;
decoder_for(433) -> fg_fruit_special_pb;
decoder_for(434) -> fg_fruit_special_pb;
decoder_for(435) -> fg_fruit_special_pb;
decoder_for(436) -> fg_fruit_special_pb;
decoder_for(437) -> fg_fruit_special_pb;
decoder_for(438) -> fg_fruit_special_pb;
decoder_for(439) -> fg_fruit_special_pb.