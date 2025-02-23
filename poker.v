`timescale 1ns/1ps

module poker(type, i0, i1, i2, i3, i4);
//DO NOT CHANGE!
	input  [5:0] i0, i1, i2, i3, i4;
	output [3:0] type;
//---------------------------------------------------
// rank wires
wire card1rank [3:0];
wire card2rank [3:0];
wire card3rank [3:0];
wire card4rank [3:0];
wire card5rank [3:0];

assign card1rank[0] = i0[0];
assign card1rank[1] = i0[1];
assign card1rank[2] = i0[2];
assign card1rank[3] = i0[3];

assign card2rank[0] = i1[0];
assign card2rank[1] = i1[1];
assign card2rank[2] = i1[2];
assign card2rank[3] = i1[3];

assign card3rank[0] = i2[0];
assign card3rank[1] = i2[1];
assign card3rank[2] = i2[2];
assign card3rank[3] = i2[3];

assign card4rank[0] = i3[0];
assign card4rank[1] = i3[1];
assign card4rank[2] = i3[2];
assign card4rank[3] = i3[3];

assign card5rank[0] = i4[0];
assign card5rank[1] = i4[1];
assign card5rank[2] = i4[2];
assign card5rank[3] = i4[3];




// suit wires
wire card1suit [1:0];
wire card2suit [1:0];
wire card3suit [1:0];
wire card4suit [1:0];
wire card5suit [1:0];

assign card1suit[0] = i0[4];
assign card1suit[1] = i0[5];

assign card2suit[0] = i1[4];
assign card2suit[1] = i1[5];

assign card3suit[0] = i2[4];
assign card3suit[1] = i2[5];

assign card4suit[0] = i3[4];
assign card4suit[1] = i3[5];

assign card5suit[0] = i4[4];
assign card5suit[1] = i4[5];

//buckets
wire paircount[2:0];
wire straight;
//suits

wire flush,suitfirst121,suitfirst122,suitfirst231,suitfirst232,suitfirst342,suitfirst341,suitfirst452,suitfirst451,flush1,flush2; 

EN an2suit11(suitfirst121,card1suit[0],card2suit[0]);
EN an2suit12(suitfirst122,card1suit[1],card2suit[1]);

EN an2suit11s(suitfirst231,card2suit[0],card3suit[0]);
EN an2suit12s(suitfirst232,card2suit[1],card3suit[1]);

EN an3suit21(suitfirst341,card3suit[0],card4suit[0]);
EN an3suit22(suitfirst342,card3suit[1],card4suit[1]);

EN an3suit31(suitfirst451,card4suit[0],card5suit[0]);
EN an3suit32(suitfirst452,card4suit[1],card5suit[1]);

AN4 an3suit1(flush1,suitfirst122,suitfirst121,suitfirst231,suitfirst232);
AN4 an3suit2(flush2,suitfirst341,suitfirst342,suitfirst451,suitfirst452);
AN2 an2suit(flush,flush1,flush2);
//card12
wire rank120,rank121,rank122,rank123,rank12;
EN an2rank120(rank120,card1rank[0],card2rank[0]);
EN an2rank121(rank121,card1rank[1],card2rank[1]);
EN an2rank122(rank122,card1rank[2],card2rank[2]);
EN an2rank123(rank123,card1rank[3],card2rank[3]);
AN4 an4rank12(rank12,rank120,rank121,rank122,rank123);
//card13
wire rank130,rank131,rank132,rank133,rank13;
EN an2rank130(rank130,card1rank[0],card3rank[0]);
EN an2rank131(rank131,card1rank[1],card3rank[1]);
EN an2rank132(rank132,card1rank[2],card3rank[2]);
EN an2rank133(rank133,card1rank[3],card3rank[3]);
AN4 an4rank13(rank13,rank130,rank131,rank132,rank133);
//card14
wire rank140,rank141,rank142,rank143,rank14;
EN an2rank140(rank140,card1rank[0],card4rank[0]);
EN an2rank141(rank141,card1rank[1],card4rank[1]);
EN an2rank142(rank142,card1rank[2],card4rank[2]);
EN an2rank143(rank143,card1rank[3],card4rank[3]);
AN4 an4rank14(rank14,rank140,rank141,rank142,rank143);
//card15
wire rank150,rank151,rank152,rank153,rank15;
EN an2rank150(rank150,card1rank[0],card5rank[0]);
EN an2rank151(rank151,card1rank[1],card5rank[1]);
EN an2rank152(rank152,card1rank[2],card5rank[2]);
EN an2rank153(rank153,card1rank[3],card5rank[3]);
AN4 an4rank15(rank15,rank150,rank151,rank152,rank153);
//card23
wire rank230,rank231,rank232,rank233,rank23;
EN an2rank230(rank230,card2rank[0],card3rank[0]);
EN an2rank231(rank231,card2rank[1],card3rank[1]);
EN an2rank232(rank232,card2rank[2],card3rank[2]);
EN an2rank233(rank233,card2rank[3],card3rank[3]);
AN4 an4rank23(rank23,rank230,rank231,rank232,rank233);
//card24
wire rank240,rank241,rank242,rank243,rank24;
EN an2rank240(rank240,card2rank[0],card4rank[0]);
EN an2rank241(rank241,card2rank[1],card4rank[1]);
EN an2rank242(rank242,card2rank[2],card4rank[2]);
EN an2rank243(rank243,card2rank[3],card4rank[3]);
AN4 an4rank24(rank24,rank240,rank241,rank242,rank243);
//card25
wire rank250,rank251,rank252,rank253,ran25k;
EN an2rank250(rank250,card2rank[0],card5rank[0]);
EN an2rank251(rank251,card2rank[1],card5rank[1]);
EN an2rank252(rank252,card2rank[2],card5rank[2]);
EN an2rank253(rank253,card2rank[3],card5rank[3]);
AN4 an4rank25(rank25,rank250,rank251,rank252,rank253);
//card34
wire rank340,rank341,rank342,rank343,rank34;
EN an2rank340(rank340,card3rank[0],card4rank[0]);
EN an2rank341(rank341,card3rank[1],card4rank[1]);
EN an2rank342(rank342,card3rank[2],card4rank[2]);
EN an2rank343(rank343,card3rank[3],card4rank[3]);
AN4 an4rank34(rank34,rank340,rank341,rank342,rank343);
//card35
wire rank350,rank351,rank352,rank353,rank35;
EN an2rank350(rank350,card3rank[0],card5rank[0]);
EN an2rank351(rank351,card3rank[1],card5rank[1]);
EN an2rank352(rank352,card3rank[2],card5rank[2]);
EN an2rank353(rank353,card3rank[3],card5rank[3]);
AN4 an4rank35(rank35,rank350,rank351,rank352,rank353);
//card45
wire rank450,rank451,rank452,rank453,rank45;
EN an2rank450(rank450,card4rank[0],card5rank[0]);
EN an2rank451(rank451,card4rank[1],card5rank[1]);
EN an2rank452(rank452,card4rank[2],card5rank[2]);
EN an2rank453(rank453,card4rank[3],card5rank[3]);
AN4 an4rank45(rank45,rank450,rank451,rank452,rank453);
//paircount

//first step
wire ha123,ha45,ha678,ha910;
wire ha123c,ha45c,ha678c,ha910c;

FA1 adha123(ha123c,ha123,rank12,rank13,rank14);
HA1 adha45(ha45c,ha45,rank15,rank23);
FA1 adha678(ha678c,ha678,rank24,rank25,rank34);
HA1 adha910(ha910c,ha910,rank35,rank45);

//second step
wire ha15,ha15c;
wire ha610,ha610c;

wire cha15,cha15c;
wire cha610,cha610c;

//sum
HA1 adHA15(ha15c,ha15,ha123,ha45);
HA1 adcHA15(cha15c,cha15,ha123c,ha45c);
//carryout
HA1 adHA610(ha610c,ha610,ha678,ha910);
HA1 adcHA610(cha610c,cha610,ha678c,ha910c);
//counting pairs
wire two1,two2,two3,two4;
wire four1, four2;
wire one1,one2;
assign two1=ha15c;
assign two2=ha610c;
assign two3=cha15;
assign two4=cha610;
assign four1=cha15c;
assign four2=cha610c;
assign one1=ha15;
assign one2=ha610;
//4 of a kind
wire fouror,twoor,fourofakind1,oneboth,fourremain;
OR2 orfour(fouror,four1,four2);
OR4 ortwo(twoor,two1,two2,two3,two4);
AN2 anoneboth(oneboth,one1,one2);
OR2 orfourremain(fourremain,oneboth,twoor);

AN2 orfourofakind1(fourofakind1,fouror,fourremain);

// full house
wire fullhouse,twoc1,twoc2,twoc3,twoc4,twoc5,twoc6,twocor1,twocor2,doubletwo,twodoubleone;
AN2 antwo1(twoc1,two1,two2);
AN2 antwo2(twoc2,two1,two3);
AN2 antwo3(twoc3,two1,two4);
AN2 antwo4(twoc4,two2,two3);
AN2 antwo5(twoc5,two2,two4);
AN2 antwo6(twoc6,two3,two4);
OR3 ortwo1(twocor1,twoc1,twoc2,twoc3);
OR3 ortwo2(twocor2,twoc4,twoc5,twoc6);
OR2 doubletwo1(doubletwo,twocor1,twocor2);

wire two3c1,two3c2,two3c3,two3c4,tripletwo;
AN3 an3two1(two3c1,two1,two2,two3);
AN3 an3two2(two3c2,two1,two2,two4);
AN3 an3two3(two3c3,two1,two3,two4);
AN3 an3two4(two3c4,two2,two3,two4);
OR4 or4two(tripletwo,two3c1,two3c2,two3c3,two3c4);


//3 of a kind
wire threeofakind,xortwoc1,xortwoc2,xortwo,xorone;
EO eoxortwo1(xortwoc1,two1,two2);
EO eoxortwo2(xortwoc2,two3,two4);
EO eoxortwotot(xortwo,xortwoc1,xortwoc2);
EO eoxorone(xorone,one1,one2);
AN2 anthreeofakind(threeofakind,xorone,xortwo);

AN2 antwodoubleone(twodoubleone,oneboth,xortwo);
OR3 orfullhouse(fullhouse,fouror,doubletwo,twodoubleone);
//twopairs
wire twopairs;
OR2 ortwopairs(twopairs,oneboth,xortwo);
//pair
wire pair;
EO xorpair(pair,one1,one2);
wire fourofakind2;
AN2 an4ofakind(fourofakind2,doubletwo,oneboth);
OR3 orfourofakind(fourofakind,fourofakind1,fourofakind2,tripletwo);
//straight
wire nopair,nor1213,nor1415,nor2324,nor2534,nor3545,nors1,nors2;
NR2 nor1(nor1213,rank12,rank13);
NR2 nor2(nor1415,rank14,rank15);
NR2 nor3(nor2324,rank23,rank24);
NR2 nor4(nor2534,rank25,rank34);
NR2 nor5(nor3545,rank35,rank45);
AN2 nor6(nors1,nor1213,nor1415);
AN3 nor7(nors2,nor2324,nor2534,nor3545);
AN2 nor8(nopair,nors1,nors2);

//1
wire card11[3:0];
wire card1is1;
wire card21[3:0];
wire card2is1;
wire card31[3:0];
wire card3is1;
wire card41[3:0];
wire card4is1;
wire card51[3:0];
wire card5is1;
wire card12has1;
wire card345has1;
wire cardhas1;

EN card110(card11[0], card1rank[0], 1'b1);
EN card111(card11[1], card1rank[1], 1'b0);
EN card112(card11[2], card1rank[2], 1'b0);
EN card113(card11[3], card1rank[3], 1'b0);
AN4 card1is1t(card1is1, card11[0], card11[1], card11[2], card11[3]);

EN card210(card21[0], card2rank[0], 1'b1);
EN card211(card21[1], card2rank[1], 1'b0);
EN card212(card21[2], card2rank[2], 1'b0);
EN card213(card21[3], card2rank[3], 1'b0);
AN4 card2is1t(card2is1, card21[0], card21[1], card21[2], card21[3]);

EN card310(card31[0], card3rank[0], 1'b1);
EN card311(card31[1], card3rank[1], 1'b0);
EN card312(card31[2], card3rank[2], 1'b0);
EN card313(card31[3], card3rank[3], 1'b0);
AN4 card3is1t(card3is1, card31[0], card31[1], card31[2], card31[3]);

EN card410(card41[0], card4rank[0], 1'b1);
EN card411(card41[1], card4rank[1], 1'b0);
EN card412(card41[2], card4rank[2], 1'b0);
EN card413(card41[3], card4rank[3], 1'b0);
AN4 card4is1t(card4is1, card41[0], card41[1], card41[2], card41[3]);

EN card510(card51[0], card5rank[0], 1'b1);
EN card511(card51[1], card5rank[1], 1'b0);
EN card512(card51[2], card5rank[2], 1'b0);
EN card513(card51[3], card5rank[3], 1'b0);
AN4 card5is1t(card5is1, card51[0], card51[1], card51[2], card51[3]);

OR2 card12has1t(card12has1, card1is1, card2is1);
OR3 card345has1t(card345has1, card3is1, card4is1, card5is1);
OR2 cardhas1t(cardhas1, card12has1, card345has1);

//2
wire card12[3:0];
wire card1is2;
wire card22[3:0];
wire card2is2;
wire card32[3:0];
wire card3is2;
wire card42[3:0];
wire card4is2;
wire card52[3:0];
wire card5is2;
wire card12has2;
wire card345has2;
wire cardhas2;

EN card120(card12[0],card1rank[0],1'b0);
EN card121(card12[1],card1rank[1],1'b1);
EN card122(card12[2],card1rank[2],1'b0);
EN card123(card12[3],card1rank[3],1'b0);
AN4 card1is2t(card1is2,card12[0],card12[1],card12[2],card12[3]);

EN card220(card22[0],card2rank[0],1'b0);
EN card221(card22[1],card2rank[1],1'b1);
EN card222(card22[2],card2rank[2],1'b0);
EN card223(card22[3],card2rank[3],1'b0);
AN4 card2is2t(card2is2,card22[0],card22[1],card22[2],card22[3]);

EN card320(card32[0],card3rank[0],1'b0);
EN card321(card32[1],card3rank[1],1'b1);
EN card322(card32[2],card3rank[2],1'b0);
EN card323(card32[3],card3rank[3],1'b0);
AN4 card3is2t(card3is2,card32[0],card32[1],card32[2],card32[3]);

EN card420(card42[0],card4rank[0],1'b0);
EN card421(card42[1],card4rank[1],1'b1);
EN card422(card42[2],card4rank[2],1'b0);
EN card423(card42[3],card4rank[3],1'b0);
AN4 card4is2t(card4is2,card42[0],card42[1],card42[2],card42[3]);


EN card520(card52[0],card5rank[0],1'b0);
EN card521(card52[1],card5rank[1],1'b1);
EN card522(card52[2],card5rank[2],1'b0);
EN card523(card52[3],card5rank[3],1'b0);
AN4 card5is2t(card5is2,card52[0],card52[1],card52[2],card52[3]);

OR2 card12has2t(card12has2,card1is2,card2is2);
OR3 card345has2t(card345has2,card3is2,card4is2,card5is2);
OR2 cardhas2t(cardhas2,card12has2,card345has2);

//3
wire card13[3:0];
wire card1is3;
wire card23[3:0];
wire card2is3;
wire card33[3:0];
wire card3is3;
wire card43[3:0];
wire card4is3;
wire card53[3:0];
wire card5is3;
wire card12has3;
wire card345has3;
wire cardhas3;

EN card130(card13[0],card1rank[0],1'b1);
EN card131(card13[1],card1rank[1],1'b1);
EN card132(card13[2],card1rank[2],1'b0);
EN card133(card13[3],card1rank[3],1'b0);
AN4 card1is3t(card1is3,card13[0],card13[1],card13[2],card13[3]);

EN card230(card23[0],card2rank[0],1'b1);
EN card231(card23[1],card2rank[1],1'b1);
EN card232(card23[2],card2rank[2],1'b0);
EN card233(card23[3],card2rank[3],1'b0);
AN4 card2is3t(card2is3,card23[0],card23[1],card23[2],card23[3]);

EN card330(card33[0],card3rank[0],1'b1);
EN card331(card33[1],card3rank[1],1'b1);
EN card332(card33[2],card3rank[2],1'b0);
EN card333(card33[3],card3rank[3],1'b0);
AN4 card3is3t(card3is3,card33[0],card33[1],card33[2],card33[3]);

EN card430(card43[0],card4rank[0],1'b1);
EN card431(card43[1],card4rank[1],1'b1);
EN card432(card43[2],card4rank[2],1'b0);
EN card433(card43[3],card4rank[3],1'b0);
AN4 card4is3t(card4is3,card43[0],card43[1],card43[2],card43[3]);


EN card530(card53[0],card5rank[0],1'b1);
EN card531(card53[1],card5rank[1],1'b1);
EN card532(card53[2],card5rank[2],1'b0);
EN card533(card53[3],card5rank[3],1'b0);
AN4 card5is3t(card5is3,card53[0],card53[1],card53[2],card53[3]);

OR2 card12has3t(card12has3,card1is3,card2is3);
OR3 card345has3t(card345has3,card3is3,card4is3,card5is3);
OR2 cardhas3t(cardhas3,card12has3,card345has3);

//4
wire card14[3:0];
wire card1is4;
wire card24[3:0];
wire card2is4;
wire card34[3:0];
wire card3is4;
wire card44[3:0];
wire card4is4;
wire card54[3:0];
wire card5is4;
wire card12has4;
wire card345has4;
wire cardhas4;

EN card140(card14[0],card1rank[0],1'b0);
EN card141(card14[1],card1rank[1],1'b0);
EN card142(card14[2],card1rank[2],1'b1);
EN card143(card14[3],card1rank[3],1'b0);
AN4 card1is4t(card1is4,card14[0],card14[1],card14[2],card14[3]);

EN card240(card24[0],card2rank[0],1'b0);
EN card241(card24[1],card2rank[1],1'b0);
EN card242(card24[2],card2rank[2],1'b1);
EN card243(card24[3],card2rank[3],1'b0);
AN4 card2is4t(card2is4,card24[0],card24[1],card24[2],card24[3]);

EN card340(card34[0],card3rank[0],1'b0);
EN card341(card34[1],card3rank[1],1'b0);
EN card342(card34[2],card3rank[2],1'b1);
EN card343(card34[3],card3rank[3],1'b0);
AN4 card3is4t(card3is4,card34[0],card34[1],card34[2],card34[3]);

EN card440(card44[0],card4rank[0],1'b0);
EN card441(card44[1],card4rank[1],1'b0);
EN card442(card44[2],card4rank[2],1'b1);
EN card443(card44[3],card4rank[3],1'b0);
AN4 card4is4t(card4is4,card44[0],card44[1],card44[2],card44[3]);

EN card540(card54[0],card5rank[0],1'b0);
EN card541(card54[1],card5rank[1],1'b0);
EN card542(card54[2],card5rank[2],1'b1);
EN card543(card54[3],card5rank[3],1'b0);
AN4 card5is4t(card5is4,card54[0],card54[1],card54[2],card54[3]);

OR2 card12has4t(card12has4,card1is4,card2is4);
OR3 card345has4t(card345has4,card3is4,card4is4,card5is4);
OR2 cardhas4t(cardhas4,card12has4,card345has4);

//5
wire card15[3:0];
wire card1is5;
wire card25[3:0];
wire card2is5;
wire card35[3:0];
wire card3is5;
wire card45[3:0];
wire card4is5;
wire card55[3:0];
wire card5is5;
wire card15has5;
wire card345has5;
wire cardhas5;

EN card150(card15[0], card1rank[0], 1'b1);
EN card151(card15[1], card1rank[1], 1'b0);
EN card152(card15[2], card1rank[2], 1'b1);
EN card153(card15[3], card1rank[3], 1'b0);
AN4 card1is5t(card1is5, card15[0], card15[1], card15[2], card15[3]);

EN card250(card25[0], card2rank[0], 1'b1);
EN card251(card25[1], card2rank[1], 1'b0);
EN card252(card25[2], card2rank[2], 1'b1);
EN card253(card25[3], card2rank[3], 1'b0);
AN4 card2is5t(card2is5, card25[0], card25[1], card25[2], card25[3]);

EN card350(card35[0], card3rank[0], 1'b1);
EN card351(card35[1], card3rank[1], 1'b0);
EN card352(card35[2], card3rank[2], 1'b1);
EN card353(card35[3], card3rank[3], 1'b0);
AN4 card3is5t(card3is5, card35[0], card35[1], card35[2], card35[3]);

EN card450(card45[0], card4rank[0], 1'b1);
EN card451(card45[1], card4rank[1], 1'b0);
EN card452(card45[2], card4rank[2], 1'b1);
EN card453(card45[3], card4rank[3], 1'b0);
AN4 card4is5t(card4is5, card45[0], card45[1], card45[2], card45[3]);

EN card550(card55[0], card5rank[0], 1'b1);
EN card551(card55[1], card5rank[1], 1'b0);
EN card552(card55[2], card5rank[2], 1'b1);
EN card553(card55[3], card5rank[3], 1'b0);
AN4 card5is5t(card5is5, card55[0], card55[1], card55[2], card55[3]);

OR2 card15has5t(card15has5, card1is5, card2is5);
OR3 card345has5t(card345has5, card3is5, card4is5, card5is5);
OR2 cardhas5t(cardhas5, card15has5, card345has5);

//6
wire card16[3:0];
wire card1is6;
wire card26[3:0];
wire card2is6;
wire card36[3:0];
wire card3is6;
wire card46[3:0];
wire card4is6;
wire card56[3:0];
wire card5is6;
wire card16has6;
wire card345has6;
wire cardhas6;

EN card160(card16[0], card1rank[0], 1'b0);
EN card161(card16[1], card1rank[1], 1'b1);
EN card162(card16[2], card1rank[2], 1'b1);
EN card163(card16[3], card1rank[3], 1'b0);
AN4 card1is6t(card1is6, card16[0], card16[1], card16[2], card16[3]);

EN card260(card26[0], card2rank[0], 1'b0);
EN card261(card26[1], card2rank[1], 1'b1);
EN card262(card26[2], card2rank[2], 1'b1);
EN card263(card26[3], card2rank[3], 1'b0);
AN4 card2is6t(card2is6, card26[0], card26[1], card26[2], card26[3]);

EN card360(card36[0], card3rank[0], 1'b0);
EN card361(card36[1], card3rank[1], 1'b1);
EN card362(card36[2], card3rank[2], 1'b1);
EN card363(card36[3], card3rank[3], 1'b0);
AN4 card3is6t(card3is6, card36[0], card36[1], card36[2], card36[3]);

EN card460(card46[0], card4rank[0], 1'b0);
EN card461(card46[1], card4rank[1], 1'b1);
EN card462(card46[2], card4rank[2], 1'b1);
EN card463(card46[3], card4rank[3], 1'b0);
AN4 card4is6t(card4is6, card46[0], card46[1], card46[2], card46[3]);

EN card560(card56[0], card5rank[0], 1'b0);
EN card561(card56[1], card5rank[1], 1'b1);
EN card562(card56[2], card5rank[2], 1'b1);
EN card563(card56[3], card5rank[3], 1'b0);
AN4 card5is6t(card5is6, card56[0], card56[1], card56[2], card56[3]);

OR2 card16has6t(card16has6, card1is6, card2is6);
OR3 card345has6t(card345has6, card3is6, card4is6, card5is6);
OR2 cardhas6t(cardhas6, card16has6, card345has6);

//7
wire card17[3:0];
wire card1is7;
wire card27[3:0];
wire card2is7;
wire card37[3:0];
wire card3is7;
wire card47[3:0];
wire card4is7;
wire card57[3:0];
wire card5is7;
wire card17has7;
wire card345has7;
wire cardhas7;

EN card170(card17[0], card1rank[0], 1'b1);
EN card171(card17[1], card1rank[1], 1'b1);
EN card172(card17[2], card1rank[2], 1'b1);
EN card173(card17[3], card1rank[3], 1'b0);
AN4 card1is7t(card1is7, card17[0], card17[1], card17[2], card17[3]);

EN card270(card27[0], card2rank[0], 1'b1);
EN card271(card27[1], card2rank[1], 1'b1);
EN card272(card27[2], card2rank[2], 1'b1);
EN card273(card27[3], card2rank[3], 1'b0);
AN4 card2is7t(card2is7, card27[0], card27[1], card27[2], card27[3]);

EN card370(card37[0], card3rank[0], 1'b1);
EN card371(card37[1], card3rank[1], 1'b1);
EN card372(card37[2], card3rank[2], 1'b1);
EN card373(card37[3], card3rank[3], 1'b0);
AN4 card3is7t(card3is7, card37[0], card37[1], card37[2], card37[3]);

EN card470(card47[0], card4rank[0], 1'b1);
EN card471(card47[1], card4rank[1], 1'b1);
EN card472(card47[2], card4rank[2], 1'b1);
EN card473(card47[3], card4rank[3], 1'b0);
AN4 card4is7t(card4is7, card47[0], card47[1], card47[2], card47[3]);

EN card570(card57[0], card5rank[0], 1'b1);
EN card571(card57[1], card5rank[1], 1'b1);
EN card572(card57[2], card5rank[2], 1'b1);
EN card573(card57[3], card5rank[3], 1'b0);
AN4 card5is7t(card5is7, card57[0], card57[1], card57[2], card57[3]);

OR2 card17has7t(card17has7, card1is7, card2is7);
OR3 card345has7t(card345has7, card3is7, card4is7, card5is7);
OR2 cardhas7t(cardhas7, card17has7, card345has7);

//8
wire card18[3:0];
wire card1is8;
wire card28[3:0];
wire card2is8;
wire card38[3:0];
wire card3is8;
wire card48[3:0];
wire card4is8;
wire card58[3:0];
wire card5is8;
wire card18has8;
wire card345has8;
wire cardhas8;

EN card180(card18[0], card1rank[0], 1'b0);
EN card181(card18[1], card1rank[1], 1'b0);
EN card182(card18[2], card1rank[2], 1'b0);
EN card183(card18[3], card1rank[3], 1'b1);
AN4 card1is8t(card1is8, card18[0], card18[1], card18[2], card18[3]);

EN card280(card28[0], card2rank[0], 1'b0);
EN card281(card28[1], card2rank[1], 1'b0);
EN card282(card28[2], card2rank[2], 1'b0);
EN card283(card28[3], card2rank[3], 1'b1);
AN4 card2is8t(card2is8, card28[0], card28[1], card28[2], card28[3]);

EN card380(card38[0], card3rank[0], 1'b0);
EN card381(card38[1], card3rank[1], 1'b0);
EN card382(card38[2], card3rank[2], 1'b0);
EN card383(card38[3], card3rank[3], 1'b1);
AN4 card3is8t(card3is8, card38[0], card38[1], card38[2], card38[3]);

EN card480(card48[0], card4rank[0], 1'b0);
EN card481(card48[1], card4rank[1], 1'b0);
EN card482(card48[2], card4rank[2], 1'b0);
EN card483(card48[3], card4rank[3], 1'b1);
AN4 card4is8t(card4is8, card48[0], card48[1], card48[2], card48[3]);

EN card580(card58[0], card5rank[0], 1'b0);
EN card581(card58[1], card5rank[1], 1'b0);
EN card582(card58[2], card5rank[2], 1'b0);
EN card583(card58[3], card5rank[3], 1'b1);
AN4 card5is8t(card5is8, card58[0], card58[1], card58[2], card58[3]);

OR2 card18has8t(card18has8, card1is8, card2is8);
OR3 card345has8t(card345has8, card3is8, card4is8, card5is8);
OR2 cardhas8t(cardhas8, card18has8, card345has8);

//9
wire card19[3:0];
wire card1is9;
wire card29[3:0];
wire card2is9;
wire card39[3:0];
wire card3is9;
wire card49[3:0];
wire card4is9;
wire card59[3:0];
wire card5is9;
wire card19has9;
wire card345has9;
wire cardhas9;

EN card190(card19[0], card1rank[0], 1'b1);
EN card191(card19[1], card1rank[1], 1'b0);
EN card192(card19[2], card1rank[2], 1'b0);
EN card193(card19[3], card1rank[3], 1'b1);
AN4 card1is9t(card1is9, card19[0], card19[1], card19[2], card19[3]);

EN card290(card29[0], card2rank[0], 1'b1);
EN card291(card29[1], card2rank[1], 1'b0);
EN card292(card29[2], card2rank[2], 1'b0);
EN card293(card29[3], card2rank[3], 1'b1);
AN4 card2is9t(card2is9, card29[0], card29[1], card29[2], card29[3]);

EN card390(card39[0], card3rank[0], 1'b1);
EN card391(card39[1], card3rank[1], 1'b0);
EN card392(card39[2], card3rank[2], 1'b0);
EN card393(card39[3], card3rank[3], 1'b1);
AN4 card3is9t(card3is9, card39[0], card39[1], card39[2], card39[3]);

EN card490(card49[0], card4rank[0], 1'b1);
EN card491(card49[1], card4rank[1], 1'b0);
EN card492(card49[2], card4rank[2], 1'b0);
EN card493(card49[3], card4rank[3], 1'b1);
AN4 card4is9t(card4is9, card49[0], card49[1], card49[2], card49[3]);

EN card590(card59[0], card5rank[0], 1'b1);
EN card591(card59[1], card5rank[1], 1'b0);
EN card592(card59[2], card5rank[2], 1'b0);
EN card593(card59[3], card5rank[3], 1'b1);
AN4 card5is9t(card5is9, card59[0], card59[1], card59[2], card59[3]);

OR2 card19has9t(card19has9, card1is9, card2is9);
OR3 card345has9t(card345has9, card3is9, card4is9, card5is9);
OR2 cardhas9t(cardhas9, card19has9, card345has9);

//10
wire card110s[3:0];
wire card1is10;
wire card210s[3:0];
wire card2is10;
wire card310s[3:0];
wire card3is10;
wire card410s[3:0];
wire card4is10;
wire card510s[3:0];
wire card5is10;
wire card12has10;
wire card345has10;
wire cardhas10;

EN card1100(card110s[0], card1rank[0], 1'b0);
EN card1101(card110s[1], card1rank[1], 1'b1);
EN card1102(card110s[2], card1rank[2], 1'b0);
EN card1103(card110s[3], card1rank[3], 1'b1);
AN4 card1is10t(card1is10, card110s[0], card110s[1], card110s[2], card110s[3]);

EN card2100(card210s[0], card2rank[0], 1'b0);
EN card2101(card210s[1], card2rank[1], 1'b1);
EN card2102(card210s[2], card2rank[2], 1'b0);
EN card2103(card210s[3], card2rank[3], 1'b1);
AN4 card2is10t(card2is10, card210s[0], card210s[1], card210s[2], card210s[3]);

EN card3100(card310s[0], card3rank[0], 1'b0);
EN card3101(card310s[1], card3rank[1], 1'b1);
EN card3102(card310s[2], card3rank[2], 1'b0);
EN card3103(card310s[3], card3rank[3], 1'b1);
AN4 card3is10t(card3is10, card310s[0], card310s[1], card310s[2], card310s[3]);

EN card4100(card410s[0], card4rank[0], 1'b0);
EN card4101(card410s[1], card4rank[1], 1'b1);
EN card4102(card410s[2], card4rank[2], 1'b0);
EN card4103(card410s[3], card4rank[3], 1'b1);
AN4 card4is10t(card4is10, card410s[0], card410s[1], card410s[2], card410s[3]);

EN card5100(card510s[0], card5rank[0], 1'b0);
EN card5101(card510s[1], card5rank[1], 1'b1);
EN card5102(card510s[2], card5rank[2], 1'b0);
EN card5103(card510s[3], card5rank[3], 1'b1);
AN4 card5is10t(card5is10, card510s[0], card510s[1], card510s[2], card510s[3]);

OR2 card110has10t(card12has10, card1is10, card2is10);
OR3 card345has10t(card345has10, card3is10, card4is10, card5is10);
OR2 cardhas10t(cardhas10, card12has10, card345has10);

//11
wire card111s[3:0];
wire card1is11;
wire card211s[3:0];
wire card2is11;
wire card311s[3:0];
wire card3is11;
wire card411s[3:0];
wire card4is11;
wire card511s[3:0];
wire card5is11;
wire card12has11;
wire card345has11;
wire cardhas11;

EN card1110(card111s[0], card1rank[0], 1'b1);
EN card1111(card111s[1], card1rank[1], 1'b1);
EN card1112(card111s[2], card1rank[2], 1'b0);
EN card1113(card111s[3], card1rank[3], 1'b1);
AN4 card1is11t(card1is11, card111s[0], card111s[1], card111s[2], card111s[3]);

EN card2110(card211s[0], card2rank[0], 1'b1);
EN card2111(card211s[1], card2rank[1], 1'b1);
EN card2112(card211s[2], card2rank[2], 1'b0);
EN card2113(card211s[3], card2rank[3], 1'b1);
AN4 card2is11t(card2is11, card211s[0], card211s[1], card211s[2], card211s[3]);

EN card3110(card311s[0], card3rank[0], 1'b1);
EN card3111(card311s[1], card3rank[1], 1'b1);
EN card3112(card311s[2], card3rank[2], 1'b0);
EN card3113(card311s[3], card3rank[3], 1'b1);
AN4 card3is11t(card3is11, card311s[0], card311s[1], card311s[2], card311s[3]);

EN card4110(card411s[0], card4rank[0], 1'b1);
EN card4111(card411s[1], card4rank[1], 1'b1);
EN card4112(card411s[2], card4rank[2], 1'b0);
EN card4113(card411s[3], card4rank[3], 1'b1);
AN4 card4is11t(card4is11, card411s[0], card411s[1], card411s[2], card411s[3]);

EN card5110(card511s[0], card5rank[0], 1'b1);
EN card5111(card511s[1], card5rank[1], 1'b1);
EN card5112(card511s[2], card5rank[2], 1'b0);
EN card5113(card511s[3], card5rank[3], 1'b1);
AN4 card5is11t(card5is11, card511s[0], card511s[1], card511s[2], card511s[3]);

OR2 card111has11t(card12has11, card1is11, card2is11);
OR3 card345has11t(card345has11, card3is11, card4is11, card5is11);
OR2 cardhas11t(cardhas11, card12has11, card345has11);

//12
wire card112s[3:0];
wire card1is12;
wire card212s[3:0];
wire card2is12;
wire card312s[3:0];
wire card3is12;
wire card412s[3:0];
wire card4is12;
wire card512s[3:0];
wire card5is12;
wire card12has12;
wire card345has12;
wire cardhas12;

EN card1120(card112s[0], card1rank[0], 1'b0);
EN card1121(card112s[1], card1rank[1], 1'b0);
EN card1122(card112s[2], card1rank[2], 1'b1);
EN card1123(card112s[3], card1rank[3], 1'b1);
AN4 card1is12t(card1is12, card112s[0], card112s[1], card112s[2], card112s[3]);

EN card2120(card212s[0], card2rank[0], 1'b0);
EN card2121(card212s[1], card2rank[1], 1'b0);
EN card2122(card212s[2], card2rank[2], 1'b1);
EN card2123(card212s[3], card2rank[3], 1'b1);
AN4 card2is12t(card2is12, card212s[0], card212s[1], card212s[2], card212s[3]);

EN card3120(card312s[0], card3rank[0], 1'b0);
EN card3121(card312s[1], card3rank[1], 1'b0);
EN card3122(card312s[2], card3rank[2], 1'b1);
EN card3123(card312s[3], card3rank[3], 1'b1);
AN4 card3is12t(card3is12, card312s[0], card312s[1], card312s[2], card312s[3]);

EN card4120(card412s[0], card4rank[0], 1'b0);
EN card4121(card412s[1], card4rank[1], 1'b0);
EN card4122(card412s[2], card4rank[2], 1'b1);
EN card4123(card412s[3], card4rank[3], 1'b1);
AN4 card4is12t(card4is12, card412s[0], card412s[1], card412s[2], card412s[3]);

EN card5120(card512s[0], card5rank[0], 1'b0);
EN card5121(card512s[1], card5rank[1], 1'b0);
EN card5122(card512s[2], card5rank[2], 1'b1);
EN card5123(card512s[3], card5rank[3], 1'b1);
AN4 card5is12t(card5is12, card512s[0], card512s[1], card512s[2], card512s[3]);

OR2 card112has12t(card12has12, card1is12, card2is12);
OR3 card345has12t(card345has12, card3is12, card4is12, card5is12);
OR2 cardhas12t(cardhas12, card12has12, card345has12);

//13
wire card113s[3:0];
wire card1is13;
wire card213s[3:0];
wire card2is13;
wire card313s[3:0];
wire card3is13;
wire card413s[3:0];
wire card4is13;
wire card513s[3:0];
wire card5is13;
wire card12has13;
wire card345has13;
wire cardhas13;

EN card1130(card113s[0], card1rank[0], 1'b1);
EN card1131(card113s[1], card1rank[1], 1'b0);
EN card1132(card113s[2], card1rank[2], 1'b1);
EN card1133(card113s[3], card1rank[3], 1'b1);
AN4 card1is13t(card1is13, card113s[0], card113s[1], card113s[2], card113s[3]);

EN card2130(card213s[0], card2rank[0], 1'b1);
EN card2131(card213s[1], card2rank[1], 1'b0);
EN card2132(card213s[2], card2rank[2], 1'b1);
EN card2133(card213s[3], card2rank[3], 1'b1);
AN4 card2is13t(card2is13, card213s[0], card213s[1], card213s[2], card213s[3]);

EN card3130(card313s[0], card3rank[0], 1'b1);
EN card3131(card313s[1], card3rank[1], 1'b0);
EN card3132(card313s[2], card3rank[2], 1'b1);
EN card3133(card313s[3], card3rank[3], 1'b1);
AN4 card3is13t(card3is13, card313s[0], card313s[1], card313s[2], card313s[3]);

EN card4130(card413s[0], card4rank[0], 1'b1);
EN card4131(card413s[1], card4rank[1], 1'b0);
EN card4132(card413s[2], card4rank[2], 1'b1);
EN card4133(card413s[3], card4rank[3], 1'b1);
AN4 card4is13t(card4is13, card413s[0], card413s[1], card413s[2], card413s[3]);

EN card5130(card513s[0], card5rank[0], 1'b1);
EN card5131(card513s[1], card5rank[1], 1'b0);
EN card5132(card513s[2], card5rank[2], 1'b1);
EN card5133(card513s[3], card5rank[3], 1'b1);
AN4 card5is13t(card5is13, card513s[0], card513s[1], card513s[2], card513s[3]);

OR2 card113has13t(card12has13, card1is13, card2is13);
OR3 card345has13t(card345has13, card3is13, card4is13, card5is13);
OR2 cardhas13t(cardhas13, card12has13, card345has13);

//counting
wire s1to3,s4to5,s1to5;
AN3 an1to3(s1to3,cardhas1,cardhas2,cardhas3);
AN2 an4to5(s4to5,cardhas4,cardhas5);
AN2 an1to5(s1to5,s1to3,s4to5);

wire s2to4,s5to6,s2to6;
AN3 an2to4(s2to4,cardhas2,cardhas3,cardhas4);
AN2 an5to6(s5to6,cardhas5,cardhas6);
AN2 an2to6(s2to6,s2to4,s5to6);

wire s3to5,s6to7,s3to7;
AN3 an3to5(s3to5,cardhas3,cardhas4,cardhas5);
AN2 an6to7(s6to7,cardhas6,cardhas7);
AN2 an3to7(s3to7,s3to5,s6to7);

wire s4to6,s7to8,s4to8;
AN3 an4to6(s4to6,cardhas4,cardhas5,cardhas6);
AN2 an7to8(s7to8,cardhas7,cardhas8);
AN2 an4to8(s4to8,s4to6,s7to8);

wire s5to7,s8to9,s5to9;
AN3 an5to7(s5to7,cardhas5,cardhas6,cardhas7);
AN2 an8to9(s8to9,cardhas8,cardhas9);
AN2 an5to9(s5to9,s5to7,s8to9);

wire s6to8,s9to10,s6to10;
AN3 an6to8(s6to8,cardhas6,cardhas7,cardhas8);
AN2 an9to10(s9to10,cardhas9,cardhas10);
AN2 an6to10(s6to10,s6to8,s9to10);

wire s7to9,s10to11,s7o11;
AN3 an7to9(s7to9,cardhas7,cardhas8,cardhas9);
AN2 an10to11(s10to11,cardhas10,cardhas11);
AN2 an7to11(s7to11,s7to9,s10to11);

wire s8to10,s11to12,s8to12;
AN3 an8to10(s8to10,cardhas8,cardhas9,cardhas10);
AN2 an11to12(s11to12,cardhas11,cardhas12);
AN2 an8to12(s8to12,s8to10,s11to12);

wire s9to11,s12to13,s9to13;
AN3 an9to11(s9to11,cardhas9,cardhas10,cardhas11);
AN2 an12to13(s12to13,cardhas12,cardhas13);
AN2 an9to13(s9to13,s9to11,s12to13);

wire s10to12,s13to1,s10to1;
AN3 an10to12(s10to12,cardhas10,cardhas11,cardhas12);
AN2 an13to1(s13to1,cardhas13,cardhas1);
AN2 an10to1(s10to1,s10to12,s13to1);

wire cOR1, cOR2, cOR3;
OR3 OR1to7(cOR1,s1to5,s2to6,s3to7);
OR3 OR4to10(cOR2,s4to8,s5to9,s6to10);
OR4 OR7to13(cOR3,s7to11,s8to12,s9to13,s10to1);
OR3 orstraight(straight,cOR1,cOR2,cOR3);

//output
wire straightflush;
AN2 straightflushout(straightflush,straight,flush);
assign type[3]=straightflush;

wire type2;
OR4 port2(type2,fourofakind,fullhouse,flush,straight);
IV notstraight1(notstraightflush,straightflush);
wire type21;
AN2 type2out(type21,type2,notstraightflush);
assign type[2]=type21;

wire type1;
OR4 port1(type1,fourofakind,fullhouse,threeofakind,twopairs);
wire type11;
AN2 type1out(type11,type1,notstraightflush);
assign type[1]=type11;


wire type0;
OR4 port0(type0,fourofakind,flush,threeofakind,pair);
wire type01;
AN2 type0out(type01,type0,notstraightflush);
assign type[0]=type01;





endmodule

