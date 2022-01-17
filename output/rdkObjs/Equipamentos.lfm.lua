require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmEquipamentos()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmEquipamentos");
    obj:setAlign("client");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(20);
    obj.layout1:setHeight(25);
    obj.layout1:setWidth(200);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setText("Armadura: ");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("client");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setField("nomeArmadura");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(250);
    obj.layout2:setTop(20);
    obj.layout2:setHeight(25);
    obj.layout2:setWidth(200);
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setAlign("left");
    obj.label2:setText("Bônus de Defesa: ");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setAlign("client");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("ArmaduraCA");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(500);
    obj.layout3:setTop(20);
    obj.layout3:setHeight(25);
    obj.layout3:setWidth(200);
    obj.layout3:setName("layout3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setAlign("left");
    obj.label3:setText("Penalidade: ");
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setAlign("client");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setField("PenalidadeArmadura");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(800);
    obj.layout4:setTop(20);
    obj.layout4:setHeight(25);
    obj.layout4:setWidth(200);
    obj.layout4:setName("layout4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setAlign("left");
    obj.label4:setText("Mod Atb p/ DEF: ");
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setAlign("client");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setField("modAtributoCA");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(10);
    obj.layout5:setTop(50);
    obj.layout5:setHeight(25);
    obj.layout5:setWidth(200);
    obj.layout5:setName("layout5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setAlign("left");
    obj.label5:setText("Escudo: ");
    obj.label5:setAutoSize(true);
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setAlign("client");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setField("nomeEscudo");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(250);
    obj.layout6:setTop(50);
    obj.layout6:setHeight(25);
    obj.layout6:setWidth(200);
    obj.layout6:setName("layout6");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setAlign("left");
    obj.label6:setText("Bônus de Defesa: ");
    obj.label6:setAutoSize(true);
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setAlign("client");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setField("EscudoCA");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(500);
    obj.layout7:setTop(50);
    obj.layout7:setHeight(25);
    obj.layout7:setWidth(200);
    obj.layout7:setName("layout7");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout7);
    obj.label7:setAlign("left");
    obj.label7:setText("Penalidade: ");
    obj.label7:setAutoSize(true);
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setAlign("client");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setField("PenalidadeEscudo");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(800);
    obj.layout8:setTop(50);
    obj.layout8:setHeight(25);
    obj.layout8:setWidth(200);
    obj.layout8:setName("layout8");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setAlign("left");
    obj.label8:setText("Bônus Extra DEF: ");
    obj.label8:setAutoSize(true);
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setAlign("client");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("bonusCA");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(10);
    obj.layout9:setTop(80);
    obj.layout9:setHeight(25);
    obj.layout9:setWidth(200);
    obj.layout9:setName("layout9");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout9);
    obj.label9:setAlign("left");
    obj.label9:setText("Arma: ");
    obj.label9:setAutoSize(true);
    obj.label9:setName("label9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setAlign("client");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("nomeArma1");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(250);
    obj.layout10:setTop(80);
    obj.layout10:setHeight(25);
    obj.layout10:setWidth(200);
    obj.layout10:setName("layout10");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout10);
    obj.label10:setAlign("left");
    obj.label10:setText("Bônus: ");
    obj.label10:setAutoSize(true);
    obj.label10:setName("label10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setAlign("client");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("bonusArma1");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(500);
    obj.layout11:setTop(80);
    obj.layout11:setHeight(25);
    obj.layout11:setWidth(200);
    obj.layout11:setName("layout11");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout11);
    obj.label11:setAlign("left");
    obj.label11:setText("Dano/Crítico: ");
    obj.label11:setAutoSize(true);
    obj.label11:setName("label11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setAlign("client");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setField("dcArma1");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox1);
    obj.layout12:setLeft(800);
    obj.layout12:setTop(80);
    obj.layout12:setHeight(25);
    obj.layout12:setWidth(200);
    obj.layout12:setName("layout12");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout12);
    obj.label12:setAlign("left");
    obj.label12:setText("Tipo: ");
    obj.label12:setAutoSize(true);
    obj.label12:setName("label12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setAlign("client");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setField("tipoArma1");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setLeft(1100);
    obj.layout13:setTop(80);
    obj.layout13:setHeight(25);
    obj.layout13:setWidth(200);
    obj.layout13:setName("layout13");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout13);
    obj.label13:setAlign("left");
    obj.label13:setText("Alcance: ");
    obj.label13:setAutoSize(true);
    obj.label13:setName("label13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setAlign("client");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setField("alcanceArma1");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(10);
    obj.layout14:setTop(110);
    obj.layout14:setHeight(25);
    obj.layout14:setWidth(200);
    obj.layout14:setName("layout14");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout14);
    obj.label14:setAlign("left");
    obj.label14:setText("Arma: ");
    obj.label14:setAutoSize(true);
    obj.label14:setName("label14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout14);
    obj.edit14:setAlign("client");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setField("nomeArma2");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox1);
    obj.layout15:setLeft(250);
    obj.layout15:setTop(110);
    obj.layout15:setHeight(25);
    obj.layout15:setWidth(200);
    obj.layout15:setName("layout15");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout15);
    obj.label15:setAlign("left");
    obj.label15:setText("Bônus: ");
    obj.label15:setAutoSize(true);
    obj.label15:setName("label15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setAlign("client");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setField("bonusArma2");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(500);
    obj.layout16:setTop(110);
    obj.layout16:setHeight(25);
    obj.layout16:setWidth(200);
    obj.layout16:setName("layout16");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout16);
    obj.label16:setAlign("left");
    obj.label16:setText("Dano/Crítico: ");
    obj.label16:setAutoSize(true);
    obj.label16:setName("label16");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout16);
    obj.edit16:setAlign("client");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setField("dcArma2");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(800);
    obj.layout17:setTop(110);
    obj.layout17:setHeight(25);
    obj.layout17:setWidth(200);
    obj.layout17:setName("layout17");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout17);
    obj.label17:setAlign("left");
    obj.label17:setText("Tipo: ");
    obj.label17:setAutoSize(true);
    obj.label17:setName("label17");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout17);
    obj.edit17:setAlign("client");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setField("tipoArma2");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(1100);
    obj.layout18:setTop(110);
    obj.layout18:setHeight(25);
    obj.layout18:setWidth(200);
    obj.layout18:setName("layout18");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout18);
    obj.label18:setAlign("left");
    obj.label18:setText("Alcance: ");
    obj.label18:setAutoSize(true);
    obj.label18:setName("label18");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout18);
    obj.edit18:setAlign("client");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setField("alcanceArma2");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(10);
    obj.layout19:setTop(140);
    obj.layout19:setHeight(25);
    obj.layout19:setWidth(200);
    obj.layout19:setName("layout19");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout19);
    obj.label19:setAlign("left");
    obj.label19:setText("Arma: ");
    obj.label19:setAutoSize(true);
    obj.label19:setName("label19");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout19);
    obj.edit19:setAlign("client");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setField("nomeArma3");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(250);
    obj.layout20:setTop(140);
    obj.layout20:setHeight(25);
    obj.layout20:setWidth(200);
    obj.layout20:setName("layout20");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout20);
    obj.label20:setAlign("left");
    obj.label20:setText("Bônus: ");
    obj.label20:setAutoSize(true);
    obj.label20:setName("label20");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout20);
    obj.edit20:setAlign("client");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setField("bonusArma3");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setLeft(500);
    obj.layout21:setTop(140);
    obj.layout21:setHeight(25);
    obj.layout21:setWidth(200);
    obj.layout21:setName("layout21");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout21);
    obj.label21:setAlign("left");
    obj.label21:setText("Dano/Crítico: ");
    obj.label21:setAutoSize(true);
    obj.label21:setName("label21");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout21);
    obj.edit21:setAlign("client");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setField("dcArma3");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setLeft(800);
    obj.layout22:setTop(140);
    obj.layout22:setHeight(25);
    obj.layout22:setWidth(200);
    obj.layout22:setName("layout22");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout22);
    obj.label22:setAlign("left");
    obj.label22:setText("Tipo: ");
    obj.label22:setAutoSize(true);
    obj.label22:setName("label22");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout22);
    obj.edit22:setAlign("client");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setField("tipoArma3");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.scrollBox1);
    obj.layout23:setLeft(1100);
    obj.layout23:setTop(140);
    obj.layout23:setHeight(25);
    obj.layout23:setWidth(200);
    obj.layout23:setName("layout23");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout23);
    obj.label23:setAlign("left");
    obj.label23:setText("Alcance: ");
    obj.label23:setAutoSize(true);
    obj.label23:setName("label23");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout23);
    obj.edit23:setAlign("client");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setField("alcanceArma3");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.scrollBox1);
    obj.layout24:setLeft(10);
    obj.layout24:setTop(170);
    obj.layout24:setHeight(25);
    obj.layout24:setWidth(200);
    obj.layout24:setName("layout24");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout24);
    obj.label24:setAlign("left");
    obj.label24:setText("Arma: ");
    obj.label24:setAutoSize(true);
    obj.label24:setName("label24");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout24);
    obj.edit24:setAlign("client");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setField("nomeArma4");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox1);
    obj.layout25:setLeft(250);
    obj.layout25:setTop(170);
    obj.layout25:setHeight(25);
    obj.layout25:setWidth(200);
    obj.layout25:setName("layout25");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout25);
    obj.label25:setAlign("left");
    obj.label25:setText("Bônus: ");
    obj.label25:setAutoSize(true);
    obj.label25:setName("label25");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout25);
    obj.edit25:setAlign("client");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setField("bonusArma4");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.scrollBox1);
    obj.layout26:setLeft(500);
    obj.layout26:setTop(170);
    obj.layout26:setHeight(25);
    obj.layout26:setWidth(200);
    obj.layout26:setName("layout26");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout26);
    obj.label26:setAlign("left");
    obj.label26:setText("Dano/Crítico: ");
    obj.label26:setAutoSize(true);
    obj.label26:setName("label26");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout26);
    obj.edit26:setAlign("client");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setField("dcArma4");
    obj.edit26:setName("edit26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.scrollBox1);
    obj.layout27:setLeft(800);
    obj.layout27:setTop(170);
    obj.layout27:setHeight(25);
    obj.layout27:setWidth(200);
    obj.layout27:setName("layout27");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout27);
    obj.label27:setAlign("left");
    obj.label27:setText("Tipo: ");
    obj.label27:setAutoSize(true);
    obj.label27:setName("label27");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout27);
    obj.edit27:setAlign("client");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setField("tipoArma4");
    obj.edit27:setName("edit27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox1);
    obj.layout28:setLeft(1100);
    obj.layout28:setTop(170);
    obj.layout28:setHeight(25);
    obj.layout28:setWidth(200);
    obj.layout28:setName("layout28");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout28);
    obj.label28:setAlign("left");
    obj.label28:setText("Alcance: ");
    obj.label28:setAutoSize(true);
    obj.label28:setName("label28");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout28);
    obj.edit28:setAlign("client");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setField("alcanceArma4");
    obj.edit28:setName("edit28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox1);
    obj.layout29:setLeft(10);
    obj.layout29:setTop(200);
    obj.layout29:setHeight(25);
    obj.layout29:setWidth(200);
    obj.layout29:setName("layout29");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout29);
    obj.label29:setAlign("left");
    obj.label29:setText("Arma: ");
    obj.label29:setAutoSize(true);
    obj.label29:setName("label29");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout29);
    obj.edit29:setAlign("client");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setField("nomeArma5");
    obj.edit29:setName("edit29");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox1);
    obj.layout30:setLeft(250);
    obj.layout30:setTop(200);
    obj.layout30:setHeight(25);
    obj.layout30:setWidth(200);
    obj.layout30:setName("layout30");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout30);
    obj.label30:setAlign("left");
    obj.label30:setText("Bônus: ");
    obj.label30:setAutoSize(true);
    obj.label30:setName("label30");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout30);
    obj.edit30:setAlign("client");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setField("bonusArma5");
    obj.edit30:setName("edit30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.scrollBox1);
    obj.layout31:setLeft(500);
    obj.layout31:setTop(200);
    obj.layout31:setHeight(25);
    obj.layout31:setWidth(200);
    obj.layout31:setName("layout31");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout31);
    obj.label31:setAlign("left");
    obj.label31:setText("Dano/Crítico: ");
    obj.label31:setAutoSize(true);
    obj.label31:setName("label31");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout31);
    obj.edit31:setAlign("client");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setField("dcArma5");
    obj.edit31:setName("edit31");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.scrollBox1);
    obj.layout32:setLeft(800);
    obj.layout32:setTop(200);
    obj.layout32:setHeight(25);
    obj.layout32:setWidth(200);
    obj.layout32:setName("layout32");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout32);
    obj.label32:setAlign("left");
    obj.label32:setText("Tipo: ");
    obj.label32:setAutoSize(true);
    obj.label32:setName("label32");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout32);
    obj.edit32:setAlign("client");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setField("tipoArma5");
    obj.edit32:setName("edit32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.scrollBox1);
    obj.layout33:setLeft(1100);
    obj.layout33:setTop(200);
    obj.layout33:setHeight(25);
    obj.layout33:setWidth(200);
    obj.layout33:setName("layout33");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout33);
    obj.label33:setAlign("left");
    obj.label33:setText("Alcance: ");
    obj.label33:setAutoSize(true);
    obj.label33:setName("label33");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout33);
    obj.edit33:setAlign("client");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setField("alcanceArma5");
    obj.edit33:setName("edit33");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.scrollBox1);
    obj.layout34:setAlign("top");
    obj.layout34:setHeight(30);
    obj.layout34:setMargins({bottom=4, top=240});
    obj.layout34:setName("layout34");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout34);
    obj.button1:setText("Criar Novo Item");
    obj.button1:setWidth(150);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.scrollBox1);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("top");
    obj.rclListaDosItens:setSelectable(true);
    obj.rclListaDosItens:setLayout("horizontal");
    obj.rclListaDosItens:setHeight(40);

    obj.boxDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.scrollBox1);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setAlign("client");
    obj.boxDetalhesDoItem:setMargins({left=4, right=4, top=4});

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.boxDetalhesDoItem);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle2:setName("rectangle2");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.scrollBox2);
    obj.layout35:setAlign("top");
    obj.layout35:setHeight(30);
    obj.layout35:setMargins({bottom=4});
    obj.layout35:setName("layout35");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout35);
    obj.label34:setAlign("left");
    obj.label34:setText("Item:");
    obj.label34:setAutoSize(true);
    obj.label34:setName("label34");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout35);
    obj.edit34:setAlign("client");
    obj.edit34:setField("campoTitulo");
    obj.edit34:setName("edit34");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.scrollBox2);
    obj.layout36:setAlign("top");
    obj.layout36:setHeight(130);
    obj.layout36:setName("layout36");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout36);
    obj.image1:setAlign("left");
    obj.image1:setEditable(true);
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setField("campoURLImagem");
    obj.image1:setWidth(300);
    obj.image1:setName("image1");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout36);
    obj.layout37:setAlign("client");
    obj.layout37:setMargins({left=2});
    obj.layout37:setName("layout37");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout37);
    obj.edit35:setFontSize(14);
    obj.edit35:setAlign("top");
    obj.edit35:setField("campoSubTitulo");
    obj.edit35:setHeight(30);
    obj.edit35:setName("edit35");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout37);
    obj.textEditor1:setFontSize(14);
    obj.textEditor1:setAlign("top");
    obj.textEditor1:setField("campoTextoGrande");
    obj.textEditor1:setHeight(100);
    obj.textEditor1:setName("textEditor1");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.scrollBox1);
    obj.layout38:setLeft(10);
    obj.layout38:setTop(510);
    obj.layout38:setHeight(25);
    obj.layout38:setWidth(200);
    obj.layout38:setName("layout38");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout38);
    obj.label35:setAlign("left");
    obj.label35:setText("Dólares: ");
    obj.label35:setAutoSize(true);
    obj.label35:setName("label35");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout38);
    obj.edit36:setAlign("client");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setField("dinheiro");
    obj.edit36:setName("edit36");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.scrollBox1);
    obj.layout39:setLeft(250);
    obj.layout39:setTop(510);
    obj.layout39:setHeight(25);
    obj.layout39:setWidth(200);
    obj.layout39:setName("layout39");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout39);
    obj.label36:setAlign("left");
    obj.label36:setText("Tibares: ");
    obj.label36:setAutoSize(true);
    obj.label36:setName("label36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout39);
    obj.edit37:setAlign("client");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setField("tibardinheiro");
    obj.edit37:setName("edit37");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclListaDosItens:append();
        end, obj);

    obj._e_event1 = obj.rclListaDosItens:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                                  --]]                      
                                  local node = self.rclListaDosItens.selectedNode; 
                                         self.boxDetalhesDoItem.node = node;                       
                                  -- a caixa de detalhe só ficará visível se houver item selecionado
                                          self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event2 = obj.rclListaDosItens:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return utils.compareStringPtBr(nodeA.campoTitulo, nodeB.campoTitulo);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmEquipamentos()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmEquipamentos();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmEquipamentos = {
    newEditor = newfrmEquipamentos, 
    new = newfrmEquipamentos, 
    name = "frmEquipamentos", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmEquipamentos = _frmEquipamentos;
Firecast.registrarForm(_frmEquipamentos);

return _frmEquipamentos;
