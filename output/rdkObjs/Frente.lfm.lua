require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFrente()
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
    obj:setName("frmFrente");
    obj:setTheme("dark");
    obj:setAlign("client");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(02);
    obj.layout1:setHeight(25);
    obj.layout1:setWidth(400);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setText("Nome Completo: ");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("client");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setField("nomePersonagem");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(30);
    obj.layout2:setHeight(25);
    obj.layout2:setWidth(400);
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setAlign("left");
    obj.label2:setText("Classes e Níveis: ");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setAlign("client");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("nomeClasses");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(10);
    obj.layout3:setTop(60);
    obj.layout3:setHeight(25);
    obj.layout3:setWidth(250);
    obj.layout3:setName("layout3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setAlign("left");
    obj.label3:setText("Origem: ");
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setAlign("client");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setField("nomeOrigem");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(10);
    obj.layout4:setTop(90);
    obj.layout4:setHeight(25);
    obj.layout4:setWidth(250);
    obj.layout4:setName("layout4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setAlign("left");
    obj.label4:setText("Alinhamento: ");
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setAlign("client");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setField("nomeAlinhamento");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(420);
    obj.layout5:setTop(02);
    obj.layout5:setHeight(25);
    obj.layout5:setWidth(370);
    obj.layout5:setName("layout5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setAlign("left");
    obj.label5:setText("Parente / Legado: ");
    obj.label5:setAutoSize(true);
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setAlign("client");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setField("nomeParenteDivino");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(420);
    obj.layout6:setTop(30);
    obj.layout6:setHeight(25);
    obj.layout6:setWidth(370);
    obj.layout6:setName("layout6");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setAlign("left");
    obj.label6:setText("Benção: ");
    obj.label6:setAutoSize(true);
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setAlign("client");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setField("nomeBencao");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(300);
    obj.layout7:setTop(60);
    obj.layout7:setHeight(25);
    obj.layout7:setWidth(250);
    obj.layout7:setName("layout7");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout7);
    obj.label7:setAlign("left");
    obj.label7:setText("Nascimento: ");
    obj.label7:setAutoSize(true);
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setAlign("client");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setField("nomeNascimento");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(580);
    obj.layout8:setTop(60);
    obj.layout8:setHeight(25);
    obj.layout8:setWidth(210);
    obj.layout8:setName("layout8");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setAlign("left");
    obj.label8:setText("Deslocamento: ");
    obj.label8:setAutoSize(true);
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setAlign("client");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("nomeDeslocamento");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(300);
    obj.layout9:setTop(90);
    obj.layout9:setHeight(25);
    obj.layout9:setWidth(490);
    obj.layout9:setName("layout9");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout9);
    obj.label9:setAlign("left");
    obj.label9:setText("Idiomas: ");
    obj.label9:setAutoSize(true);
    obj.label9:setName("label9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setAlign("client");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("nomeIdiomas");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(800);
    obj.layout10:setTop(02);
    obj.layout10:setHeight(25);
    obj.layout10:setWidth(200);
    obj.layout10:setName("layout10");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout10);
    obj.label10:setAlign("left");
    obj.label10:setText("Panteão: ");
    obj.label10:setAutoSize(true);
    obj.label10:setName("label10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setAlign("client");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("nomePanteao");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(800);
    obj.layout11:setTop(30);
    obj.layout11:setHeight(25);
    obj.layout11:setWidth(200);
    obj.layout11:setName("layout11");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout11);
    obj.label11:setAlign("left");
    obj.label11:setText("HP: ");
    obj.label11:setAutoSize(true);
    obj.label11:setName("label11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setAlign("client");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setField("HP");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox1);
    obj.layout12:setLeft(800);
    obj.layout12:setTop(60);
    obj.layout12:setHeight(25);
    obj.layout12:setWidth(200);
    obj.layout12:setName("layout12");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout12);
    obj.label12:setAlign("left");
    obj.label12:setText("MP: ");
    obj.label12:setAutoSize(true);
    obj.label12:setName("label12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setAlign("client");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setField("MP");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setLeft(800);
    obj.layout13:setTop(90);
    obj.layout13:setHeight(25);
    obj.layout13:setWidth(200);
    obj.layout13:setName("layout13");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout13);
    obj.label13:setAlign("left");
    obj.label13:setText("XP: ");
    obj.label13:setAutoSize(true);
    obj.label13:setName("label13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setAlign("client");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setField("XP");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(800);
    obj.layout14:setTop(120);
    obj.layout14:setHeight(25);
    obj.layout14:setWidth(200);
    obj.layout14:setName("layout14");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout14);
    obj.label14:setAlign("left");
    obj.label14:setText("Defesa: ");
    obj.label14:setAutoSize(true);
    obj.label14:setName("label14");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout14);
    obj.label15:setField("modificadorDeCA");
    obj.label15:setAlign("right");
    obj.label15:setText("valor");
    obj.label15:setWidth(70);
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox1);
    obj.layout15:setLeft(10);
    obj.layout15:setTop(90);
    obj.layout15:setHeight(80);
    obj.layout15:setWidth(200);
    obj.layout15:setName("layout15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout15);
    obj.label16:setAlign("left");
    obj.label16:setText("Força: ");
    obj.label16:setAutoSize(true);
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout15);
    obj.label17:setField("modificadorDeForca");
    obj.label17:setAlign("right");
    obj.label17:setText("valor");
    obj.label17:setWidth(70);
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(250);
    obj.layout16:setTop(90);
    obj.layout16:setHeight(80);
    obj.layout16:setWidth(200);
    obj.layout16:setName("layout16");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout16);
    obj.label18:setAlign("left");
    obj.label18:setText("Destreza: ");
    obj.label18:setAutoSize(true);
    obj.label18:setName("label18");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout16);
    obj.label19:setField("modificadorDeDestreza");
    obj.label19:setAlign("right");
    obj.label19:setText("valor");
    obj.label19:setWidth(70);
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(500);
    obj.layout17:setTop(90);
    obj.layout17:setHeight(80);
    obj.layout17:setWidth(200);
    obj.layout17:setName("layout17");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout17);
    obj.label20:setAlign("left");
    obj.label20:setText("Constituição: ");
    obj.label20:setAutoSize(true);
    obj.label20:setName("label20");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout17);
    obj.label21:setField("modificadorDeConstituicao");
    obj.label21:setAlign("right");
    obj.label21:setText("valor");
    obj.label21:setWidth(70);
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(10);
    obj.layout18:setTop(120);
    obj.layout18:setHeight(80);
    obj.layout18:setWidth(200);
    obj.layout18:setName("layout18");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout18);
    obj.label22:setAlign("left");
    obj.label22:setText("Inteligência: ");
    obj.label22:setAutoSize(true);
    obj.label22:setName("label22");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout18);
    obj.label23:setField("modificadorDeInteligencia");
    obj.label23:setAlign("right");
    obj.label23:setText("valor");
    obj.label23:setWidth(70);
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(250);
    obj.layout19:setTop(120);
    obj.layout19:setHeight(80);
    obj.layout19:setWidth(200);
    obj.layout19:setName("layout19");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout19);
    obj.label24:setAlign("left");
    obj.label24:setText("Sabedoria: ");
    obj.label24:setAutoSize(true);
    obj.label24:setName("label24");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout19);
    obj.label25:setField("modificadorDeSabedoria");
    obj.label25:setAlign("right");
    obj.label25:setText("valor");
    obj.label25:setWidth(70);
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(500);
    obj.layout20:setTop(120);
    obj.layout20:setHeight(80);
    obj.layout20:setWidth(200);
    obj.layout20:setName("layout20");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout20);
    obj.label26:setAlign("left");
    obj.label26:setText("Carisma: ");
    obj.label26:setAutoSize(true);
    obj.label26:setName("label26");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout20);
    obj.label27:setField("modificadorDeCarisma");
    obj.label27:setAlign("right");
    obj.label27:setText("valor");
    obj.label27:setWidth(70);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setLeft(10);
    obj.layout21:setTop(150);
    obj.layout21:setHeight(80);
    obj.layout21:setWidth(200);
    obj.layout21:setName("layout21");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout21);
    obj.label28:setAlign("left");
    obj.label28:setText("Acrobacia: ");
    obj.label28:setAutoSize(true);
    obj.label28:setName("label28");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout21);
    obj.label29:setField("modificadorDeAcrobacia");
    obj.label29:setAlign("right");
    obj.label29:setText("valor");
    obj.label29:setWidth(70);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setName("label29");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setLeft(250);
    obj.layout22:setTop(150);
    obj.layout22:setHeight(80);
    obj.layout22:setWidth(200);
    obj.layout22:setName("layout22");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout22);
    obj.label30:setAlign("left");
    obj.label30:setText("Adestramento: ");
    obj.label30:setAutoSize(true);
    obj.label30:setName("label30");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout22);
    obj.label31:setField("modificadorDeAdestramento");
    obj.label31:setAlign("right");
    obj.label31:setText("valor");
    obj.label31:setWidth(70);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setName("label31");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.scrollBox1);
    obj.layout23:setLeft(500);
    obj.layout23:setTop(150);
    obj.layout23:setHeight(80);
    obj.layout23:setWidth(200);
    obj.layout23:setName("layout23");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout23);
    obj.label32:setAlign("left");
    obj.label32:setText("Atletismo: ");
    obj.label32:setAutoSize(true);
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout23);
    obj.label33:setField("modificadorDeAtletismo");
    obj.label33:setAlign("right");
    obj.label33:setText("valor");
    obj.label33:setWidth(70);
    obj.label33:setHorzTextAlign("center");
    obj.label33:setName("label33");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.scrollBox1);
    obj.layout24:setLeft(10);
    obj.layout24:setTop(180);
    obj.layout24:setHeight(80);
    obj.layout24:setWidth(200);
    obj.layout24:setName("layout24");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout24);
    obj.label34:setAlign("left");
    obj.label34:setText("Atuação: ");
    obj.label34:setAutoSize(true);
    obj.label34:setName("label34");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout24);
    obj.label35:setField("modificadorDeAtuacao");
    obj.label35:setAlign("right");
    obj.label35:setText("valor");
    obj.label35:setWidth(70);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setName("label35");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox1);
    obj.layout25:setLeft(250);
    obj.layout25:setTop(180);
    obj.layout25:setHeight(80);
    obj.layout25:setWidth(200);
    obj.layout25:setName("layout25");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout25);
    obj.label36:setAlign("left");
    obj.label36:setText("Cavalgar: ");
    obj.label36:setAutoSize(true);
    obj.label36:setName("label36");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout25);
    obj.label37:setField("modificadorDeCavalgar");
    obj.label37:setAlign("right");
    obj.label37:setText("valor");
    obj.label37:setWidth(70);
    obj.label37:setHorzTextAlign("center");
    obj.label37:setName("label37");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.scrollBox1);
    obj.layout26:setLeft(500);
    obj.layout26:setTop(180);
    obj.layout26:setHeight(80);
    obj.layout26:setWidth(200);
    obj.layout26:setName("layout26");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout26);
    obj.label38:setAlign("left");
    obj.label38:setText("Curar: ");
    obj.label38:setAutoSize(true);
    obj.label38:setName("label38");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout26);
    obj.label39:setField("modificadorDeCurar");
    obj.label39:setAlign("right");
    obj.label39:setText("valor");
    obj.label39:setWidth(70);
    obj.label39:setHorzTextAlign("center");
    obj.label39:setName("label39");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.scrollBox1);
    obj.layout27:setLeft(10);
    obj.layout27:setTop(210);
    obj.layout27:setHeight(80);
    obj.layout27:setWidth(200);
    obj.layout27:setName("layout27");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout27);
    obj.label40:setAlign("left");
    obj.label40:setText("Diplomacia: ");
    obj.label40:setAutoSize(true);
    obj.label40:setName("label40");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout27);
    obj.label41:setField("modificadorDeDiplomacia");
    obj.label41:setAlign("right");
    obj.label41:setText("valor");
    obj.label41:setWidth(70);
    obj.label41:setHorzTextAlign("center");
    obj.label41:setName("label41");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox1);
    obj.layout28:setLeft(250);
    obj.layout28:setTop(210);
    obj.layout28:setHeight(80);
    obj.layout28:setWidth(200);
    obj.layout28:setName("layout28");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout28);
    obj.label42:setAlign("left");
    obj.label42:setText("Enganação: ");
    obj.label42:setAutoSize(true);
    obj.label42:setName("label42");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout28);
    obj.label43:setField("modificadorDeEnganacao");
    obj.label43:setAlign("right");
    obj.label43:setText("valor");
    obj.label43:setWidth(70);
    obj.label43:setHorzTextAlign("center");
    obj.label43:setName("label43");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox1);
    obj.layout29:setLeft(500);
    obj.layout29:setTop(210);
    obj.layout29:setHeight(80);
    obj.layout29:setWidth(200);
    obj.layout29:setName("layout29");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout29);
    obj.label44:setAlign("left");
    obj.label44:setText("Fortitude: ");
    obj.label44:setAutoSize(true);
    obj.label44:setName("label44");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout29);
    obj.label45:setField("modificadorDeFortitude");
    obj.label45:setAlign("right");
    obj.label45:setText("valor");
    obj.label45:setWidth(70);
    obj.label45:setHorzTextAlign("center");
    obj.label45:setName("label45");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox1);
    obj.layout30:setLeft(10);
    obj.layout30:setTop(240);
    obj.layout30:setHeight(80);
    obj.layout30:setWidth(200);
    obj.layout30:setName("layout30");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout30);
    obj.label46:setAlign("left");
    obj.label46:setText("Furtividade: ");
    obj.label46:setAutoSize(true);
    obj.label46:setName("label46");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout30);
    obj.label47:setField("modificadorDeFurtividade");
    obj.label47:setAlign("right");
    obj.label47:setText("valor");
    obj.label47:setWidth(70);
    obj.label47:setHorzTextAlign("center");
    obj.label47:setName("label47");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.scrollBox1);
    obj.layout31:setLeft(250);
    obj.layout31:setTop(240);
    obj.layout31:setHeight(80);
    obj.layout31:setWidth(200);
    obj.layout31:setName("layout31");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout31);
    obj.label48:setAlign("left");
    obj.label48:setText("Iniciativa: ");
    obj.label48:setAutoSize(true);
    obj.label48:setName("label48");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout31);
    obj.label49:setField("modificadorDeIniciativa");
    obj.label49:setAlign("right");
    obj.label49:setText("valor");
    obj.label49:setWidth(70);
    obj.label49:setHorzTextAlign("center");
    obj.label49:setName("label49");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.scrollBox1);
    obj.layout32:setLeft(500);
    obj.layout32:setTop(240);
    obj.layout32:setHeight(80);
    obj.layout32:setWidth(200);
    obj.layout32:setName("layout32");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout32);
    obj.label50:setAlign("left");
    obj.label50:setText("Intimidação: ");
    obj.label50:setAutoSize(true);
    obj.label50:setName("label50");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout32);
    obj.label51:setField("modificadorDeIntimidacao");
    obj.label51:setAlign("right");
    obj.label51:setText("valor");
    obj.label51:setWidth(70);
    obj.label51:setHorzTextAlign("center");
    obj.label51:setName("label51");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.scrollBox1);
    obj.layout33:setLeft(10);
    obj.layout33:setTop(270);
    obj.layout33:setHeight(80);
    obj.layout33:setWidth(200);
    obj.layout33:setName("layout33");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout33);
    obj.label52:setAlign("left");
    obj.label52:setText("Intuição: ");
    obj.label52:setAutoSize(true);
    obj.label52:setName("label52");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout33);
    obj.label53:setField("modificadorDeIntuicao");
    obj.label53:setAlign("right");
    obj.label53:setText("valor");
    obj.label53:setWidth(70);
    obj.label53:setHorzTextAlign("center");
    obj.label53:setName("label53");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.scrollBox1);
    obj.layout34:setLeft(250);
    obj.layout34:setTop(270);
    obj.layout34:setHeight(80);
    obj.layout34:setWidth(200);
    obj.layout34:setName("layout34");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout34);
    obj.label54:setAlign("left");
    obj.label54:setText("Investigação: ");
    obj.label54:setAutoSize(true);
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout34);
    obj.label55:setField("modificadorDeInvestigacao");
    obj.label55:setAlign("right");
    obj.label55:setText("valor");
    obj.label55:setWidth(70);
    obj.label55:setHorzTextAlign("center");
    obj.label55:setName("label55");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.scrollBox1);
    obj.layout35:setLeft(500);
    obj.layout35:setTop(270);
    obj.layout35:setHeight(80);
    obj.layout35:setWidth(200);
    obj.layout35:setName("layout35");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout35);
    obj.label56:setAlign("left");
    obj.label56:setText("Jogatina: ");
    obj.label56:setAutoSize(true);
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout35);
    obj.label57:setField("modificadorDeJogatina");
    obj.label57:setAlign("right");
    obj.label57:setText("valor");
    obj.label57:setWidth(70);
    obj.label57:setHorzTextAlign("center");
    obj.label57:setName("label57");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.scrollBox1);
    obj.layout36:setLeft(10);
    obj.layout36:setTop(300);
    obj.layout36:setHeight(80);
    obj.layout36:setWidth(200);
    obj.layout36:setName("layout36");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout36);
    obj.label58:setAlign("left");
    obj.label58:setText("Ladinagem *: ");
    obj.label58:setAutoSize(true);
    obj.label58:setName("label58");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout36);
    obj.label59:setField("modificadorDeLadinagem");
    obj.label59:setAlign("right");
    obj.label59:setText("valor");
    obj.label59:setWidth(70);
    obj.label59:setHorzTextAlign("center");
    obj.label59:setName("label59");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.scrollBox1);
    obj.layout37:setLeft(250);
    obj.layout37:setTop(300);
    obj.layout37:setHeight(80);
    obj.layout37:setWidth(200);
    obj.layout37:setName("layout37");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout37);
    obj.label60:setAlign("left");
    obj.label60:setText("Luta: ");
    obj.label60:setAutoSize(true);
    obj.label60:setName("label60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout37);
    obj.label61:setField("modificadorDeLuta");
    obj.label61:setAlign("right");
    obj.label61:setText("valor");
    obj.label61:setWidth(70);
    obj.label61:setHorzTextAlign("center");
    obj.label61:setName("label61");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.scrollBox1);
    obj.layout38:setLeft(500);
    obj.layout38:setTop(300);
    obj.layout38:setHeight(80);
    obj.layout38:setWidth(200);
    obj.layout38:setName("layout38");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout38);
    obj.label62:setAlign("left");
    obj.label62:setText("Percepção: ");
    obj.label62:setAutoSize(true);
    obj.label62:setName("label62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout38);
    obj.label63:setField("modificadorDePercepcao");
    obj.label63:setAlign("right");
    obj.label63:setText("valor");
    obj.label63:setWidth(70);
    obj.label63:setHorzTextAlign("center");
    obj.label63:setName("label63");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.scrollBox1);
    obj.layout39:setLeft(10);
    obj.layout39:setTop(330);
    obj.layout39:setHeight(80);
    obj.layout39:setWidth(200);
    obj.layout39:setName("layout39");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout39);
    obj.label64:setAlign("left");
    obj.label64:setText("Pilotagem: ");
    obj.label64:setAutoSize(true);
    obj.label64:setName("label64");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout39);
    obj.label65:setField("modificadorDePilotagem");
    obj.label65:setAlign("right");
    obj.label65:setText("valor");
    obj.label65:setWidth(70);
    obj.label65:setHorzTextAlign("center");
    obj.label65:setName("label65");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.scrollBox1);
    obj.layout40:setLeft(250);
    obj.layout40:setTop(330);
    obj.layout40:setHeight(80);
    obj.layout40:setWidth(200);
    obj.layout40:setName("layout40");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout40);
    obj.label66:setAlign("left");
    obj.label66:setText("Pontaria: ");
    obj.label66:setAutoSize(true);
    obj.label66:setName("label66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout40);
    obj.label67:setField("modificadorDePontaria");
    obj.label67:setAlign("right");
    obj.label67:setText("valor");
    obj.label67:setWidth(70);
    obj.label67:setHorzTextAlign("center");
    obj.label67:setName("label67");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.scrollBox1);
    obj.layout41:setLeft(500);
    obj.layout41:setTop(330);
    obj.layout41:setHeight(80);
    obj.layout41:setWidth(200);
    obj.layout41:setName("layout41");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout41);
    obj.label68:setAlign("left");
    obj.label68:setText("Reflexos: ");
    obj.label68:setAutoSize(true);
    obj.label68:setName("label68");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout41);
    obj.label69:setField("modificadorDeReflexos");
    obj.label69:setAlign("right");
    obj.label69:setText("valor");
    obj.label69:setWidth(70);
    obj.label69:setHorzTextAlign("center");
    obj.label69:setName("label69");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.scrollBox1);
    obj.layout42:setLeft(10);
    obj.layout42:setTop(360);
    obj.layout42:setHeight(80);
    obj.layout42:setWidth(200);
    obj.layout42:setName("layout42");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout42);
    obj.label70:setAlign("left");
    obj.label70:setText("Religião: ");
    obj.label70:setAutoSize(true);
    obj.label70:setName("label70");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout42);
    obj.label71:setField("modificadorDeReligiao");
    obj.label71:setAlign("right");
    obj.label71:setText("valor");
    obj.label71:setWidth(70);
    obj.label71:setHorzTextAlign("center");
    obj.label71:setName("label71");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.scrollBox1);
    obj.layout43:setLeft(250);
    obj.layout43:setTop(360);
    obj.layout43:setHeight(80);
    obj.layout43:setWidth(200);
    obj.layout43:setName("layout43");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout43);
    obj.label72:setAlign("left");
    obj.label72:setText("Sobrevivência: ");
    obj.label72:setAutoSize(true);
    obj.label72:setName("label72");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout43);
    obj.label73:setField("modificadorDeSobrevivencia");
    obj.label73:setAlign("right");
    obj.label73:setText("valor");
    obj.label73:setWidth(70);
    obj.label73:setHorzTextAlign("center");
    obj.label73:setName("label73");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.scrollBox1);
    obj.layout44:setLeft(500);
    obj.layout44:setTop(360);
    obj.layout44:setHeight(80);
    obj.layout44:setWidth(200);
    obj.layout44:setName("layout44");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout44);
    obj.label74:setAlign("left");
    obj.label74:setText("Sedução: ");
    obj.label74:setAutoSize(true);
    obj.label74:setName("label74");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout44);
    obj.label75:setField("modificadorDeSeducao");
    obj.label75:setAlign("right");
    obj.label75:setText("valor");
    obj.label75:setWidth(70);
    obj.label75:setHorzTextAlign("center");
    obj.label75:setName("label75");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.scrollBox1);
    obj.layout45:setLeft(10);
    obj.layout45:setTop(390);
    obj.layout45:setHeight(80);
    obj.layout45:setWidth(200);
    obj.layout45:setName("layout45");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout45);
    obj.label76:setAlign("left");
    obj.label76:setText("Vontade: ");
    obj.label76:setAutoSize(true);
    obj.label76:setName("label76");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout45);
    obj.label77:setField("modificadorDeVontade");
    obj.label77:setAlign("right");
    obj.label77:setText("valor");
    obj.label77:setWidth(70);
    obj.label77:setHorzTextAlign("center");
    obj.label77:setName("label77");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.scrollBox1);
    obj.layout46:setLeft(250);
    obj.layout46:setTop(390);
    obj.layout46:setHeight(80);
    obj.layout46:setWidth(200);
    obj.layout46:setName("layout46");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout46);
    obj.label78:setAlign("left");
    obj.label78:setText("Conhecimento: ");
    obj.label78:setAutoSize(true);
    obj.label78:setName("label78");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout46);
    obj.label79:setField("modificadorDeConhecimento");
    obj.label79:setAlign("right");
    obj.label79:setText("valor");
    obj.label79:setWidth(70);
    obj.label79:setHorzTextAlign("center");
    obj.label79:setName("label79");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.scrollBox1);
    obj.layout47:setLeft(500);
    obj.layout47:setTop(390);
    obj.layout47:setHeight(80);
    obj.layout47:setWidth(200);
    obj.layout47:setName("layout47");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout47);
    obj.label80:setAlign("left");
    obj.label80:setText("Guerra: ");
    obj.label80:setAutoSize(true);
    obj.label80:setName("label80");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout47);
    obj.label81:setField("modificadorDeGuerra");
    obj.label81:setAlign("right");
    obj.label81:setText("valor");
    obj.label81:setWidth(70);
    obj.label81:setHorzTextAlign("center");
    obj.label81:setName("label81");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.scrollBox1);
    obj.layout48:setLeft(10);
    obj.layout48:setTop(420);
    obj.layout48:setHeight(80);
    obj.layout48:setWidth(200);
    obj.layout48:setName("layout48");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout48);
    obj.label82:setAlign("left");
    obj.label82:setText("Misticismo: ");
    obj.label82:setAutoSize(true);
    obj.label82:setName("label82");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout48);
    obj.label83:setField("modificadorDeMisticismo");
    obj.label83:setAlign("right");
    obj.label83:setText("valor");
    obj.label83:setWidth(70);
    obj.label83:setHorzTextAlign("center");
    obj.label83:setName("label83");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.scrollBox1);
    obj.layout49:setLeft(250);
    obj.layout49:setTop(420);
    obj.layout49:setHeight(80);
    obj.layout49:setWidth(200);
    obj.layout49:setName("layout49");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout49);
    obj.label84:setAlign("left");
    obj.label84:setText("Tecnologia: ");
    obj.label84:setAutoSize(true);
    obj.label84:setName("label84");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout49);
    obj.label85:setField("modificadorDeTecnologia");
    obj.label85:setAlign("right");
    obj.label85:setText("valor");
    obj.label85:setWidth(70);
    obj.label85:setHorzTextAlign("center");
    obj.label85:setName("label85");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.scrollBox1);
    obj.layout50:setLeft(500);
    obj.layout50:setTop(420);
    obj.layout50:setHeight(80);
    obj.layout50:setWidth(200);
    obj.layout50:setName("layout50");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout50);
    obj.label86:setAlign("left");
    obj.label86:setText("Alfaiate: ");
    obj.label86:setAutoSize(true);
    obj.label86:setName("label86");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout50);
    obj.label87:setField("modificadorDeAlfaiate");
    obj.label87:setAlign("right");
    obj.label87:setText("valor");
    obj.label87:setWidth(70);
    obj.label87:setHorzTextAlign("center");
    obj.label87:setName("label87");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.scrollBox1);
    obj.layout51:setLeft(10);
    obj.layout51:setTop(450);
    obj.layout51:setHeight(80);
    obj.layout51:setWidth(200);
    obj.layout51:setName("layout51");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout51);
    obj.label88:setAlign("left");
    obj.label88:setText("Alquimia: ");
    obj.label88:setAutoSize(true);
    obj.label88:setName("label88");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout51);
    obj.label89:setField("modificadorDeAlquimia");
    obj.label89:setAlign("right");
    obj.label89:setText("valor");
    obj.label89:setWidth(70);
    obj.label89:setHorzTextAlign("center");
    obj.label89:setName("label89");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.scrollBox1);
    obj.layout52:setLeft(250);
    obj.layout52:setTop(450);
    obj.layout52:setHeight(80);
    obj.layout52:setWidth(200);
    obj.layout52:setName("layout52");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout52);
    obj.label90:setAlign("left");
    obj.label90:setText("Armeiro: ");
    obj.label90:setAutoSize(true);
    obj.label90:setName("label90");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout52);
    obj.label91:setField("modificadorDeArmeiro");
    obj.label91:setAlign("right");
    obj.label91:setText("valor");
    obj.label91:setWidth(70);
    obj.label91:setHorzTextAlign("center");
    obj.label91:setName("label91");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.scrollBox1);
    obj.layout53:setLeft(500);
    obj.layout53:setTop(450);
    obj.layout53:setHeight(80);
    obj.layout53:setWidth(200);
    obj.layout53:setName("layout53");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout53);
    obj.label92:setAlign("left");
    obj.label92:setText("Artesanato: ");
    obj.label92:setAutoSize(true);
    obj.label92:setName("label92");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout53);
    obj.label93:setField("modificadorDeArtesanato");
    obj.label93:setAlign("right");
    obj.label93:setText("valor");
    obj.label93:setWidth(70);
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.scrollBox1);
    obj.layout54:setLeft(10);
    obj.layout54:setTop(480);
    obj.layout54:setHeight(80);
    obj.layout54:setWidth(200);
    obj.layout54:setName("layout54");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout54);
    obj.label94:setAlign("left");
    obj.label94:setText("Culinária: ");
    obj.label94:setAutoSize(true);
    obj.label94:setName("label94");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout54);
    obj.label95:setField("modificadorDeCulinária");
    obj.label95:setAlign("right");
    obj.label95:setText("valor");
    obj.label95:setWidth(70);
    obj.label95:setHorzTextAlign("center");
    obj.label95:setName("label95");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.scrollBox1);
    obj.layout55:setLeft(250);
    obj.layout55:setTop(480);
    obj.layout55:setHeight(80);
    obj.layout55:setWidth(200);
    obj.layout55:setName("layout55");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout55);
    obj.label96:setField("Cunhecimento1");
    obj.label96:setAlign("left");
    obj.label96:setText("Cunhecimento1");
    obj.label96:setWidth(70);
    obj.label96:setHorzTextAlign("center");
    obj.label96:setName("label96");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout55);
    obj.label97:setField("modificadorDeConhecimento1");
    obj.label97:setAlign("right");
    obj.label97:setText("valor");
    obj.label97:setWidth(70);
    obj.label97:setHorzTextAlign("center");
    obj.label97:setName("label97");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.scrollBox1);
    obj.layout56:setLeft(500);
    obj.layout56:setTop(480);
    obj.layout56:setHeight(80);
    obj.layout56:setWidth(200);
    obj.layout56:setName("layout56");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout56);
    obj.label98:setField("Cunhecimento2");
    obj.label98:setAlign("left");
    obj.label98:setText("Cunhecimento2");
    obj.label98:setWidth(70);
    obj.label98:setHorzTextAlign("center");
    obj.label98:setName("label98");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout56);
    obj.label99:setField("modificadorDeConhecimento2");
    obj.label99:setAlign("right");
    obj.label99:setText("valor");
    obj.label99:setWidth(70);
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.scrollBox1);
    obj.layout57:setLeft(10);
    obj.layout57:setTop(510);
    obj.layout57:setHeight(80);
    obj.layout57:setWidth(200);
    obj.layout57:setName("layout57");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout57);
    obj.label100:setField("Cunhecimento3");
    obj.label100:setAlign("left");
    obj.label100:setText("Cunhecimento3");
    obj.label100:setWidth(70);
    obj.label100:setHorzTextAlign("center");
    obj.label100:setName("label100");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout57);
    obj.label101:setField("modificadorDeConhecimento3");
    obj.label101:setAlign("right");
    obj.label101:setText("valor");
    obj.label101:setWidth(70);
    obj.label101:setHorzTextAlign("center");
    obj.label101:setName("label101");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.scrollBox1);
    obj.layout58:setLeft(250);
    obj.layout58:setTop(510);
    obj.layout58:setHeight(80);
    obj.layout58:setWidth(200);
    obj.layout58:setName("layout58");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout58);
    obj.label102:setField("Cunhecimento4");
    obj.label102:setAlign("left");
    obj.label102:setText("Cunhecimento4");
    obj.label102:setWidth(70);
    obj.label102:setHorzTextAlign("center");
    obj.label102:setName("label102");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout58);
    obj.label103:setField("modificadorDeConhecimento4");
    obj.label103:setAlign("right");
    obj.label103:setText("valor");
    obj.label103:setWidth(70);
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.scrollBox1);
    obj.layout59:setLeft(500);
    obj.layout59:setTop(510);
    obj.layout59:setHeight(80);
    obj.layout59:setWidth(200);
    obj.layout59:setName("layout59");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout59);
    obj.label104:setField("Cunhecimento5");
    obj.label104:setAlign("left");
    obj.label104:setText("Cunhecimento5");
    obj.label104:setWidth(70);
    obj.label104:setHorzTextAlign("center");
    obj.label104:setName("label104");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout59);
    obj.label105:setField("modificadorDeConhecimento5");
    obj.label105:setAlign("right");
    obj.label105:setText("valor");
    obj.label105:setWidth(70);
    obj.label105:setHorzTextAlign("center");
    obj.label105:setName("label105");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox1);
    obj.rectangle2:setLeft(700);
    obj.rectangle2:setTop(160);
    obj.rectangle2:setWidth(350);
    obj.rectangle2:setHeight(350);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.rectangle2);
    obj.label106:setLeft(3);
    obj.label106:setTop(1);
    obj.label106:setWidth(150);
    obj.label106:setHeight(20);
    obj.label106:setText("AVATAR");
    obj.label106:setName("label106");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.rectangle2);
    obj.label107:setLeft(100);
    obj.label107:setTop(40);
    obj.label107:setWidth(100);
    obj.label107:setHeight(200);
    obj.label107:setText("Insira a imagem de seu personagem aqui");
    obj.label107:setHorzTextAlign("center");
    obj.label107:setName("label107");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle2);
    obj.image1:setAlign("client");
    obj.image1:setField("avatar");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setMargins({left=2, right=2, top=2, bottom=2});
    obj.image1:setName("image1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox1);
    obj.button1:setLeft(700);
    obj.button1:setTop(530);
    obj.button1:setWidth(300);
    obj.button1:setText("Atualizar o plugin");
    obj.button1:setName("button1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setField("forca");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.scrollBox1);
    obj.dataLink2:setField("destreza");
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.scrollBox1);
    obj.dataLink3:setField("constituicao");
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.scrollBox1);
    obj.dataLink4:setField("sabedoria");
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.scrollBox1);
    obj.dataLink5:setField("inteligencia");
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.scrollBox1);
    obj.dataLink6:setField("carisma");
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.scrollBox1);
    obj.dataLink7:setFields({'modAtributoCA', 'ArmaduraCA', 'EscudoCA', 'bonusCA'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.scrollBox1);
    obj.dataLink8:setFields({'modificadorDeDestreza', 'modificadorDeForca', 'modificadorDeCarisma', 'modificadorDeSabedoria',
        'modificadorDeConstituicao', 'modificadorDeInteligencia',
         'atletismo', 'atuacao', 'cavalgar', 'cura', 'diplomacia', 'enganacao', 'fortitude',
        'iniciativa', 'intimidacao', 'intuicao', 'investigacao', 'luta', 'percepcao', 
        'pontaria', 'reflexos', 'seducao', 'sobrevivencia', 'vontade'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.scrollBox1);
    obj.dataLink9:setFields({'modificadorDeDestreza', 'acrobacia', 'furtividade', 'ladinagem', 'PenalidadeArmadura', 'PenalidadeEscudo'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.scrollBox1);
    obj.dataLink10:setFields({'modificadorDeCarisma', 'modificadorDeDestreza', 'modificadorDeInteligencia', 'modificadorDeSabedoria', 
        'adestramento', 'jogatina', 'pilotagem', 'religiao', 'conhecimento', 'conhecimento1',
        'conhecimento2','conhecimento3','conhecimento4','conhecimento5','guerra',
        'misticismo', 'tecnologia', 'alfaiate', 'alquimia', 'armeiro', 'artesanato', 'culinaria'});
    obj.dataLink10:setName("dataLink10");

    obj._e_event0 = obj.image1:addEventListener("onStartDrag",
        function (_, drag, x, y)
            drag:addData("imageURL", sheet.avatar);
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://github.com/samantaluc/PluginAlvorecerT20v1/blob/master/output/PluginAlvorecerT20.rpk?raw=true')
        end, obj);

    obj._e_event2 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.forca or 10) / 2) - 5);
                                    if (mod >= 0) then
                                            mod = "+" .. mod;
                                    end;                       
                                    sheet.modificadorDeForca = mod;
        end, obj);

    obj._e_event3 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.destreza or 10) / 2) - 5);
                                    if (mod >= 0) then
                                            mod = "+" .. mod;
                                    end;                       
                                    sheet.modificadorDeDestreza = mod;
        end, obj);

    obj._e_event4 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.constituicao or 10) / 2) - 5);
                                    if (mod >= 0) then
                                            mod = "+" .. mod;
                                    end;                       
                                    sheet.modificadorDeConstituicao = mod;
        end, obj);

    obj._e_event5 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.sabedoria or 10) / 2) - 5);
                                    if (mod >= 0) then
                                            mod = "+" .. mod;
                                    end;                       
                                    sheet.modificadorDeSabedoria = mod;
        end, obj);

    obj._e_event6 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.inteligencia or 10) / 2) - 5);
                                    if (mod >= 0) then
                                            mod = "+" .. mod;
                                    end;                       
                                    sheet.modificadorDeInteligencia = mod;
        end, obj);

    obj._e_event7 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.carisma or 10) / 2) - 5);
                                    if (mod >= 0) then
                                            mod = "+" .. mod;
                                    end;                       
                                    sheet.modificadorDeCarisma = mod;
        end, obj);

    obj._e_event8 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.CA =
                                    (tonumber(10))+
                                    (tonumber(sheet.modAtributoCA)or 0) +
                                    (tonumber(sheet.ArmaduraCA)or 0) +
                                    (tonumber(sheet.EscudoCA)or 0) +  
                                    (tonumber(sheet.bonusCA)or 0);
            
                                    if sheet.CA >=0 then                       
                                    sheet.modificadorDeCA = "+" .. sheet.CA;
                                    end;
        end, obj);

    obj._e_event9 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.atle =
                                    (tonumber(sheet.modificadorDeForca)or 0) +
                                    (tonumber(sheet.atletismo)or 0);
                                    sheet.atua =
                                    (tonumber(sheet.modificadorDeCarisma)or 0) +
                                    (tonumber(sheet.atuacao)or 0);
                                    sheet.caval =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.cavalgar)or 0);
                                    sheet.cure =
                                    (tonumber(sheet.modificadorDeSabedoria)or 0) +
                                    (tonumber(sheet.curar)or 0);
                                    sheet.diploma =
                                    (tonumber(sheet.modificadorDeCarisma)or 0) +
                                    (tonumber(sheet.diplomacia)or 0);
                                    sheet.engana =
                                    (tonumber(sheet.modificadorDeCarisma)or 0) +
                                    (tonumber(sheet.enganacao)or 0);                        
                                    sheet.fort =
                                    (tonumber(sheet.modificadorDeConstituicao)or 0) +
                                    (tonumber(sheet.fortitude)or 0);
                                    sheet.inic =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.iniciativa)or 0);
                                    sheet.intim =
                                    (tonumber(sheet.modificadorDeCarisma)or 0) +
                                    (tonumber(sheet.intimidacao)or 0);                        
                                    sheet.intui =
                                    (tonumber(sheet.modificadorDeSabedoria)or 0) +
                                    (tonumber(sheet.intuicao)or 0);
                                    sheet.inves =
                                    (tonumber(sheet.modificadorDeInteligencia)or 0) +
                                    (tonumber(sheet.investigacao)or 0);
                                    sheet.fight =
                                    (tonumber(sheet.modificadorDeForca)or 0) +
                                    (tonumber(sheet.luta)or 0);                        
                                    sheet.percep =
                                    (tonumber(sheet.modificadorDeSabedoria)or 0) +
                                    (tonumber(sheet.percepcao)or 0);
                                    sheet.pontar =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.pontaria)or 0);
                                    sheet.reflex =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.reflexos)or 0);                        
                                    sheet.seduc =
                                    (tonumber(sheet.modificadorDeCarisma)or 0) +
                                    (tonumber(sheet.seducao)or 0);
                                    sheet.sobrev =
                                    (tonumber(sheet.modificadorDeSabedoria)or 0) +
                                    (tonumber(sheet.sobrevivencia)or 0);
                                    sheet.vontad =
                                    (tonumber(sheet.modificadorDeSabedoria)or 0) +
                                    (tonumber(sheet.vontade)or 0);
            
            
                                    if sheet.atle >=0  then                       
                                    sheet.modificadorDeAtletismo = "+" .. sheet.atle;
                                    end;
                                    if sheet.atua >=0  then                       
                                    sheet.modificadorDeAtuacao = "+" .. sheet.atua;
                                    end;
                                    if sheet.caval  then                       
                                    sheet.modificadorDeCavalgar = "+" .. sheet.caval;
                                    end;
                                    if sheet.cure >=0  then                       
                                    sheet.modificadorDeCurar = "+" .. sheet.cure;
                                    end;
                                    if sheet.diploma >=0  then                       
                                    sheet.modificadorDeDiplomacia = "+" .. sheet.diploma;
                                    end;
                                    if sheet.engana  then                       
                                    sheet.modificadorDeEnganacao = "+" .. sheet.engana;
                                    end;
                                    if sheet.fort >=0  then                       
                                    sheet.modificadorDeFortitude = "+" .. sheet.fort;
                                    end;
                                    if sheet.inic >=0  then                       
                                    sheet.modificadorDeIniciativa = "+" .. sheet.inic;
                                    end;
                                    if sheet.intim  then                       
                                    sheet.modificadorDeIntimidacao = "+" .. sheet.intim;
                                    end;
                                    if sheet.intui >=0  then                       
                                    sheet.modificadorDeIntuicao = "+" .. sheet.intui;
                                    end;
                                    if sheet.inves >=0  then                       
                                    sheet.modificadorDeInvestigacao = "+" .. sheet.inves;
                                    end;
                                    if sheet.fight  then                       
                                    sheet.modificadorDeLuta = "+" .. sheet.fight;
                                    end;
                                    if sheet.percep >=0  then                       
                                    sheet.modificadorDePercepcao = "+" .. sheet.percep;
                                    end;
                                    if sheet.reflex >=0  then                       
                                    sheet.modificadorDeReflexos = "+" .. sheet.reflex;
                                    end;
                                    if sheet.pontar  then                       
                                    sheet.modificadorDePontaria = "+" .. sheet.pontar;
                                    end;
                                    if sheet.seduc >=0  then                       
                                    sheet.modificadorDeSeducao = "+" .. sheet.seduc;
                                    end;
                                    if sheet.sobrev >=0  then                       
                                    sheet.modificadorDeSobrevivencia = "+" .. sheet.sobrev;
                                    end;
                                    if sheet.vontad  then                       
                                    sheet.modificadorDeVontade = "+" .. sheet.vontad;
                                    end;
        end, obj);

    obj._e_event10 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.acrobaciaA =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.acrobacia)or 0) -
                                    (tonumber(sheet.PenalidadeArmadura)or 0) -
                                    (tonumber(sheet.PenalidadeEscudo)or 0);
                                    sheet.furtividadeA =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.furtividade)or 0) -
                                    (tonumber(sheet.PenalidadeArmadura)or 0) -
                                    (tonumber(sheet.PenalidadeEscudo)or 0);
                                    sheet.ladinagemA =
                                    (tonumber(sheet.modificadorDeDestreza)or 0) +
                                    (tonumber(sheet.ladinagem)or 0) -
                                    (tonumber(sheet.PenalidadeArmadura)or 0) -
                                    (tonumber(sheet.PenalidadeEscudo)or 0);
            
                                    if sheet.acrobaciaA  then                       
                                    sheet.modificadorDeAcrobacia = sheet.acrobaciaA;
                                    end;
                                    if sheet.furtividadeA  then                       
                                    sheet.modificadorDeFurtividade = sheet.furtividadeA;
                                    end;
                                    if sheet.ladinagemA  then                       
                                    sheet.modificadorDeLadinagem = sheet.ladinagemA;
                                    end;
        end, obj);

    obj._e_event11 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorAdestramento = tonumber(sheet.adestramento);                      
            
                                            if (valorAdestramento ~= 0) then
                                                   sheet.modificadorDeAdestramento = math.floor(valorAdestramento + sheet.modificadorDeCarisma); 
            
                                                    if sheet.modificadorDeAdestramento > 0 then
                                                    sheet.modificadorDeAdestramento = "+" .. sheet.modificadorDeAdestramento;
                                            end;
                                            else
                                                    sheet.modificadorDeAdestramento = 0;
                                            end;
                                    
                                    local valorJogatina = tonumber(sheet.jogatina);                      
            
                                            if (valorJogatina ~= 0) then
                                                   sheet.modificadorDeJogatina = math.floor(valorJogatina + sheet.modificadorDeCarisma); 
            
                                                    if sheet.modificadorDeJogatina > 0 then
                                                    sheet.modificadorDeJogatina = "+" .. sheet.modificadorDeJogatina;
                                            end;
                                            else
                                                    sheet.modificadorDeJogatina = 0;
                                            end;
                                    
                                    local valorPilotagem = tonumber(sheet.pilotagem);                      
            
                                            if (valorPilotagem ~= 0) then
                                                   sheet.modificadorDePilotagem = math.floor(valorPilotagem + sheet.modificadorDeDestreza); 
            
                                                    if sheet.modificadorDePilotagem > 0 then
                                                    sheet.modificadorDePilotagem = "+" .. sheet.modificadorDePilotagem;
                                            end;
                                            else
                                                    sheet.modificadorDePilotagem = 0;
                                            end;
                                    
                                    local valorReligiao = tonumber(sheet.religiao);                      
            
                                            if (valorReligiao ~= 0) then
                                                   sheet.modificadorDeReligiao = math.floor(valorReligiao + sheet.modificadorDeSabedoria); 
            
                                                    if sheet.modificadorDeReligiao > 0 then
                                                    sheet.modificadorDeReligiao = "+" .. sheet.modificadorDeReligiao;
                                            end;
                                            else
                                                    sheet.modificadorDeReligiao = 0;
                                            end;
            
                                            local valorConhecimento = tonumber(sheet.conhecimento);                      
            
                                            if (valorConhecimento ~= 0) then
                                                   sheet.modificadorDeConhecimento = math.floor(valorConhecimento + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeConhecimento > 0 then
                                                    sheet.modificadorDeConhecimento = "+" .. sheet.modificadorDeConhecimento;
                                            end;
                                            else
                                                    sheet.modificadorDeConhecimento = 0;
                                            end;
            
                                            local valorConhecimento1 = tonumber(sheet.conhecimento1);                      
            
                                            if (valorConhecimento1 ~= 0) then
                                                   sheet.modificadorDeConhecimento1 = math.floor(valorConhecimento1 + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeConhecimento1 > 0 then
                                                    sheet.modificadorDeConhecimento1 = "+" .. sheet.modificadorDeConhecimento1;
                                            end;
                                            else
                                                    sheet.modificadorDeConhecimento1 = 0;
                                            end;
            
                                            local valorConhecimento2 = tonumber(sheet.conhecimento2);                      
            
                                            if (valorConhecimento2 ~= 0) then
                                                   sheet.modificadorDeConhecimento2 = math.floor(valorConhecimento2 + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeConhecimento2 > 0 then
                                                    sheet.modificadorDeConhecimento2 = "+" .. sheet.modificadorDeConhecimento2;
                                            end;
                                            else
                                                    sheet.modificadorDeConhecimento2 = 0;
                                            end;
            
                                            local valorConhecimento3 = tonumber(sheet.conhecimento3);                      
            
                                            if (valorConhecimento3 ~= 0) then
                                                   sheet.modificadorDeConhecimento3 = math.floor(valorConhecimento3 + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeConhecimento3 > 0 then
                                                    sheet.modificadorDeConhecimento3 = "+" .. sheet.modificadorDeConhecimento3;
                                            end;
                                            else
                                                    sheet.modificadorDeConhecimento3 = 0;
                                            end;
                                            
                                            local valorConhecimento4 = tonumber(sheet.conhecimento4);                      
            
                                            if (valorConhecimento4 ~= 0) then
                                                   sheet.modificadorDeConhecimento4 = math.floor(valorConhecimento4 + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeConhecimento4 > 0 then
                                                    sheet.modificadorDeConhecimento4 = "+" .. sheet.modificadorDeConhecimento4;
                                            end;
                                            else
                                                    sheet.modificadorDeConhecimento4 = 0;
                                            end;
                                            
                                            local valorConhecimento5 = tonumber(sheet.conhecimento5);                      
            
                                            if (valorConhecimento5 ~= 0) then
                                                   sheet.modificadorDeConhecimento5 = math.floor(valorConhecimento5 + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeConhecimento5 > 0 then
                                                    sheet.modificadorDeConhecimento5 = "+" .. sheet.modificadorDeConhecimento5;
                                            end;
                                            else
                                                    sheet.modificadorDeConhecimento5 = 0;
                                            end;
            
                                            local valorGuerra = tonumber(sheet.guerra);                      
            
                                            if (valorGuerra ~= 0) then
                                                   sheet.modificadorDeGuerra = math.floor(valorGuerra + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeGuerra > 0 then
                                                    sheet.modificadorDeGuerra = "+" .. sheet.modificadorDeGuerra;
                                            end;
                                            else
                                                    sheet.modificadorDeGuerra = 0;
                                            end;
            
                                            local valorMisticismo = tonumber(sheet.misticismo);                      
            
                                            if (valorMisticismo ~= 0) then
                                                   sheet.modificadorDeMisticismo = math.floor(valorMisticismo + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeMisticismo > 0 then
                                                    sheet.modificadorDeMisticismo = "+" .. sheet.modificadorDeMisticismo;
                                            end;
                                            else
                                                    sheet.modificadorDeMisticismo = 0;
                                            end;
            
                                            local valorTecnologia = tonumber(sheet.tecnologia);                      
            
                                            if (valorTecnologia ~= 0) then
                                                   sheet.modificadorDeTecnologia = math.floor(valorTecnologia + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeTecnologia > 0 then
                                                    sheet.modificadorDeTecnologia = "+" .. sheet.modificadorDeTecnologia;
                                            end;
                                            else
                                                    sheet.modificadorDeTecnologia = 0;
                                            end;
            
                                            local valorAlfaiate = tonumber(sheet.alfaiate);                      
            
                                            if (valorAlfaiate ~= 0) then
                                                   sheet.modificadorDeAlfaiate = math.floor(valorAlfaiate + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeAlfaiate > 0 then
                                                    sheet.modificadorDeAlfaiate = "+" .. sheet.modificadorDeAlfaiate;
                                            end;
                                            else
                                                    sheet.modificadorDeAlfaiate = 0;
                                            end;
                                            
                                            local valorAlquimia = tonumber(sheet.alquimia);                      
            
                                            if (valorAlquimia ~= 0) then
                                                   sheet.modificadorDeAlquimia = math.floor(valorAlquimia + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeAlquimia > 0 then
                                                    sheet.modificadorDeAlquimia = "+" .. sheet.modificadorDeAlquimia;
                                            end;
                                            else
                                                    sheet.modificadorDeAlquimia = 0;
                                            end;                                
                                            
                                            local valorArmeiro = tonumber(sheet.armeiro);                      
            
                                            if (valorArmeiro ~= 0) then
                                                   sheet.modificadorDeArmeiro = math.floor(valorArmeiro + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeArmeiro > 0 then
                                                    sheet.modificadorDeArmeiro = "+" .. sheet.modificadorDeArmeiro;
                                            end;
                                            else
                                                    sheet.modificadorDeArmeiro = 0;
                                            end;                                
                                            
                                            local valorArtesanato = tonumber(sheet.artesanato);                      
            
                                            if (valorArtesanato ~= 0) then
                                                   sheet.modificadorDeArtesanato = math.floor(valorArtesanato + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeArtesanato > 0 then
                                                    sheet.modificadorDeArtesanato = "+" .. sheet.modificadorDeArtesanato;
                                            end;
                                            else
                                                    sheet.modificadorDeArtesanato = 0;
                                            end;                                
                                            
                                            local valorCulinaria = tonumber(sheet.culinaria);                      
            
                                            if (valorCulinaria ~= 0) then
                                                   sheet.modificadorDeCulinaria = math.floor(valorCulinaria + sheet.modificadorDeInteligencia); 
            
                                                    if sheet.modificadorDeCulinaria > 0 then
                                                    sheet.modificadorDeCulinaria = "+" .. sheet.modificadorDeCulinaria;
                                            end;
                                            else
                                                    sheet.modificadorDeCulinaria = 0;
                                            end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
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

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFrente()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFrente();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFrente = {
    newEditor = newfrmFrente, 
    new = newfrmFrente, 
    name = "frmFrente", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFrente = _frmFrente;
Firecast.registrarForm(_frmFrente);

return _frmFrente;
