require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmAlvorecerT20()
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
    obj:setFormType("sheetTemplate");
    obj:setDataType("Alvorecer_Tormenta_20");
    obj:setTitle("Alvorecer Tormenta 20");
    obj:setName("frmAlvorecerT20");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Frente");
    obj.tab1:setName("tab1");

    obj.frmFrente = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFrente:setParent(obj.tab1);
    obj.frmFrente:setName("frmFrente");
    obj.frmFrente:setTheme("dark");
    obj.frmFrente:setAlign("client");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.frmFrente);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmFrente);
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
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontSize(14);

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
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontSize(14);

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
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontSize(14);

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
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontSize(14);

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
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontSize(14);

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
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontSize(14);

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
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontSize(14);

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
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontSize(14);

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
    obj.label9:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontSize(14);

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
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontSize(14);

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
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontSize(14);

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
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontSize(14);

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
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontSize(14);

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
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontSize(14);

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout14);
    obj.label15:setField("modificadorDeCA");
    obj.label15:setAlign("right");
    obj.label15:setText("valor");
    obj.label15:setWidth(70);
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontSize(14);

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
    obj.label16:setFontColor("#FF0000");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontSize(14);

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout15);
    obj.label17:setField("modificadorDeForca");
    obj.label17:setAlign("right");
    obj.label17:setText("valor");
    obj.label17:setWidth(70);
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontSize(14);

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
    obj.label18:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontSize(14);

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout16);
    obj.label19:setField("modificadorDeDestreza");
    obj.label19:setAlign("right");
    obj.label19:setText("valor");
    obj.label19:setWidth(70);
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontSize(14);

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
    obj.label20:setFontColor("#ADFF2F");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontSize(14);

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout17);
    obj.label21:setField("modificadorDeConstituicao");
    obj.label21:setAlign("right");
    obj.label21:setText("valor");
    obj.label21:setWidth(70);
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontSize(14);

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
    obj.label22:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontSize(14);

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout18);
    obj.label23:setField("modificadorDeInteligencia");
    obj.label23:setAlign("right");
    obj.label23:setText("valor");
    obj.label23:setWidth(70);
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontSize(14);

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
    obj.label24:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontSize(14);

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout19);
    obj.label25:setField("modificadorDeSabedoria");
    obj.label25:setAlign("right");
    obj.label25:setText("valor");
    obj.label25:setWidth(70);
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontSize(14);

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
    obj.label26:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontSize(14);

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout20);
    obj.label27:setField("modificadorDeCarisma");
    obj.label27:setAlign("right");
    obj.label27:setText("valor");
    obj.label27:setWidth(70);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontSize(14);

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
    obj.label28:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontSize(14);

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout21);
    obj.label29:setField("modificadorDeAcrobacia");
    obj.label29:setAlign("right");
    obj.label29:setText("valor");
    obj.label29:setWidth(70);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setName("label29");
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontSize(14);

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
    obj.label30:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontSize(14);

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout22);
    obj.label31:setField("modificadorDeAdestramento");
    obj.label31:setAlign("right");
    obj.label31:setText("valor");
    obj.label31:setWidth(70);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setName("label31");
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontSize(14);

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
    obj.label32:setFontColor("#FF0000");
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontSize(14);

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout23);
    obj.label33:setField("modificadorDeAtletismo");
    obj.label33:setAlign("right");
    obj.label33:setText("valor");
    obj.label33:setWidth(70);
    obj.label33:setHorzTextAlign("center");
    obj.label33:setName("label33");
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");
    obj.label33:setFontSize(14);

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
    obj.label34:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontSize(14);

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout24);
    obj.label35:setField("modificadorDeAtuacao");
    obj.label35:setAlign("right");
    obj.label35:setText("valor");
    obj.label35:setWidth(70);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setName("label35");
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontSize(14);

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
    obj.label36:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setFontSize(14);

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout25);
    obj.label37:setField("modificadorDeCavalgar");
    obj.label37:setAlign("right");
    obj.label37:setText("valor");
    obj.label37:setWidth(70);
    obj.label37:setHorzTextAlign("center");
    obj.label37:setName("label37");
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontSize(14);

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
    obj.label38:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setFontSize(14);

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout26);
    obj.label39:setField("modificadorDeCurar");
    obj.label39:setAlign("right");
    obj.label39:setText("valor");
    obj.label39:setWidth(70);
    obj.label39:setHorzTextAlign("center");
    obj.label39:setName("label39");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setFontSize(14);

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
    obj.label40:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setFontSize(14);

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout27);
    obj.label41:setField("modificadorDeDiplomacia");
    obj.label41:setAlign("right");
    obj.label41:setText("valor");
    obj.label41:setWidth(70);
    obj.label41:setHorzTextAlign("center");
    obj.label41:setName("label41");
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setFontSize(14);

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
    obj.label42:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setFontSize(14);

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout28);
    obj.label43:setField("modificadorDeEnganacao");
    obj.label43:setAlign("right");
    obj.label43:setText("valor");
    obj.label43:setWidth(70);
    obj.label43:setHorzTextAlign("center");
    obj.label43:setName("label43");
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setFontSize(14);

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
    obj.label44:setFontColor("#ADFF2F");
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setFontSize(14);

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout29);
    obj.label45:setField("modificadorDeFortitude");
    obj.label45:setAlign("right");
    obj.label45:setText("valor");
    obj.label45:setWidth(70);
    obj.label45:setHorzTextAlign("center");
    obj.label45:setName("label45");
    lfm_setPropAsString(obj.label45, "fontStyle",  "bold");
    obj.label45:setFontSize(14);

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
    obj.label46:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setFontSize(14);

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout30);
    obj.label47:setField("modificadorDeFurtividade");
    obj.label47:setAlign("right");
    obj.label47:setText("valor");
    obj.label47:setWidth(70);
    obj.label47:setHorzTextAlign("center");
    obj.label47:setName("label47");
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontSize(14);

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
    obj.label48:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontSize(14);

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout31);
    obj.label49:setField("modificadorDeIniciativa");
    obj.label49:setAlign("right");
    obj.label49:setText("valor");
    obj.label49:setWidth(70);
    obj.label49:setHorzTextAlign("center");
    obj.label49:setName("label49");
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontSize(14);

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
    obj.label50:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setFontSize(14);

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout32);
    obj.label51:setField("modificadorDeIntimidacao");
    obj.label51:setAlign("right");
    obj.label51:setText("valor");
    obj.label51:setWidth(70);
    obj.label51:setHorzTextAlign("center");
    obj.label51:setName("label51");
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setFontSize(14);

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
    obj.label52:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setFontSize(14);

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout33);
    obj.label53:setField("modificadorDeIntuicao");
    obj.label53:setAlign("right");
    obj.label53:setText("valor");
    obj.label53:setWidth(70);
    obj.label53:setHorzTextAlign("center");
    obj.label53:setName("label53");
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setFontSize(14);

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
    obj.label54:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label54, "fontStyle",  "bold");
    obj.label54:setFontSize(14);

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout34);
    obj.label55:setField("modificadorDeInvestigacao");
    obj.label55:setAlign("right");
    obj.label55:setText("valor");
    obj.label55:setWidth(70);
    obj.label55:setHorzTextAlign("center");
    obj.label55:setName("label55");
    lfm_setPropAsString(obj.label55, "fontStyle",  "bold");
    obj.label55:setFontSize(14);

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
    obj.label56:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label56, "fontStyle",  "bold");
    obj.label56:setFontSize(14);

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout35);
    obj.label57:setField("modificadorDeJogatina");
    obj.label57:setAlign("right");
    obj.label57:setText("valor");
    obj.label57:setWidth(70);
    obj.label57:setHorzTextAlign("center");
    obj.label57:setName("label57");
    lfm_setPropAsString(obj.label57, "fontStyle",  "bold");
    obj.label57:setFontSize(14);

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
    obj.label58:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label58, "fontStyle",  "bold");
    obj.label58:setFontSize(14);

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout36);
    obj.label59:setField("modificadorDeLadinagem");
    obj.label59:setAlign("right");
    obj.label59:setText("valor");
    obj.label59:setWidth(70);
    obj.label59:setHorzTextAlign("center");
    obj.label59:setName("label59");
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setFontSize(14);

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
    obj.label60:setFontColor("#FF0000");
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setFontSize(14);

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout37);
    obj.label61:setField("modificadorDeLuta");
    obj.label61:setAlign("right");
    obj.label61:setText("valor");
    obj.label61:setWidth(70);
    obj.label61:setHorzTextAlign("center");
    obj.label61:setName("label61");
    lfm_setPropAsString(obj.label61, "fontStyle",  "bold");
    obj.label61:setFontSize(14);

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
    obj.label62:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label62, "fontStyle",  "bold");
    obj.label62:setFontSize(14);

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout38);
    obj.label63:setField("modificadorDePercepcao");
    obj.label63:setAlign("right");
    obj.label63:setText("valor");
    obj.label63:setWidth(70);
    obj.label63:setHorzTextAlign("center");
    obj.label63:setName("label63");
    lfm_setPropAsString(obj.label63, "fontStyle",  "bold");
    obj.label63:setFontSize(14);

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
    obj.label64:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setFontSize(14);

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout39);
    obj.label65:setField("modificadorDePilotagem");
    obj.label65:setAlign("right");
    obj.label65:setText("valor");
    obj.label65:setWidth(70);
    obj.label65:setHorzTextAlign("center");
    obj.label65:setName("label65");
    lfm_setPropAsString(obj.label65, "fontStyle",  "bold");
    obj.label65:setFontSize(14);

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
    obj.label66:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label66, "fontStyle",  "bold");
    obj.label66:setFontSize(14);

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout40);
    obj.label67:setField("modificadorDePontaria");
    obj.label67:setAlign("right");
    obj.label67:setText("valor");
    obj.label67:setWidth(70);
    obj.label67:setHorzTextAlign("center");
    obj.label67:setName("label67");
    lfm_setPropAsString(obj.label67, "fontStyle",  "bold");
    obj.label67:setFontSize(14);

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
    obj.label68:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label68, "fontStyle",  "bold");
    obj.label68:setFontSize(14);

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout41);
    obj.label69:setField("modificadorDeReflexos");
    obj.label69:setAlign("right");
    obj.label69:setText("valor");
    obj.label69:setWidth(70);
    obj.label69:setHorzTextAlign("center");
    obj.label69:setName("label69");
    lfm_setPropAsString(obj.label69, "fontStyle",  "bold");
    obj.label69:setFontSize(14);

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
    obj.label70:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setFontSize(14);

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout42);
    obj.label71:setField("modificadorDeReligiao");
    obj.label71:setAlign("right");
    obj.label71:setText("valor");
    obj.label71:setWidth(70);
    obj.label71:setHorzTextAlign("center");
    obj.label71:setName("label71");
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontSize(14);

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
    obj.label72:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setFontSize(14);

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout43);
    obj.label73:setField("modificadorDeSobrevivencia");
    obj.label73:setAlign("right");
    obj.label73:setText("valor");
    obj.label73:setWidth(70);
    obj.label73:setHorzTextAlign("center");
    obj.label73:setName("label73");
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setFontSize(14);

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
    obj.label74:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setFontSize(14);

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout44);
    obj.label75:setField("modificadorDeSeducao");
    obj.label75:setAlign("right");
    obj.label75:setText("valor");
    obj.label75:setWidth(70);
    obj.label75:setHorzTextAlign("center");
    obj.label75:setName("label75");
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setFontSize(14);

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
    obj.label76:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setFontSize(14);

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout45);
    obj.label77:setField("modificadorDeVontade");
    obj.label77:setAlign("right");
    obj.label77:setText("valor");
    obj.label77:setWidth(70);
    obj.label77:setHorzTextAlign("center");
    obj.label77:setName("label77");
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setFontSize(14);

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
    obj.label78:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setFontSize(14);

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout46);
    obj.label79:setField("modificadorDeConhecimento");
    obj.label79:setAlign("right");
    obj.label79:setText("valor");
    obj.label79:setWidth(70);
    obj.label79:setHorzTextAlign("center");
    obj.label79:setName("label79");
    lfm_setPropAsString(obj.label79, "fontStyle",  "bold");
    obj.label79:setFontSize(14);

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
    obj.label80:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setFontSize(14);

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout47);
    obj.label81:setField("modificadorDeGuerra");
    obj.label81:setAlign("right");
    obj.label81:setText("valor");
    obj.label81:setWidth(70);
    obj.label81:setHorzTextAlign("center");
    obj.label81:setName("label81");
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setFontSize(14);

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
    obj.label82:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label82, "fontStyle",  "bold");
    obj.label82:setFontSize(14);

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout48);
    obj.label83:setField("modificadorDeMisticismo");
    obj.label83:setAlign("right");
    obj.label83:setText("valor");
    obj.label83:setWidth(70);
    obj.label83:setHorzTextAlign("center");
    obj.label83:setName("label83");
    lfm_setPropAsString(obj.label83, "fontStyle",  "bold");
    obj.label83:setFontSize(14);

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
    obj.label84:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setFontSize(14);

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout49);
    obj.label85:setField("modificadorDeTecnologia");
    obj.label85:setAlign("right");
    obj.label85:setText("valor");
    obj.label85:setWidth(70);
    obj.label85:setHorzTextAlign("center");
    obj.label85:setName("label85");
    lfm_setPropAsString(obj.label85, "fontStyle",  "bold");
    obj.label85:setFontSize(14);

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
    obj.label86:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label86, "fontStyle",  "bold");
    obj.label86:setFontSize(14);

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout50);
    obj.label87:setField("modificadorDeAlfaiate");
    obj.label87:setAlign("right");
    obj.label87:setText("valor");
    obj.label87:setWidth(70);
    obj.label87:setHorzTextAlign("center");
    obj.label87:setName("label87");
    lfm_setPropAsString(obj.label87, "fontStyle",  "bold");
    obj.label87:setFontSize(14);

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
    obj.label88:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setFontSize(14);

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout51);
    obj.label89:setField("modificadorDeAlquimia");
    obj.label89:setAlign("right");
    obj.label89:setText("valor");
    obj.label89:setWidth(70);
    obj.label89:setHorzTextAlign("center");
    obj.label89:setName("label89");
    lfm_setPropAsString(obj.label89, "fontStyle",  "bold");
    obj.label89:setFontSize(14);

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
    obj.label90:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label90, "fontStyle",  "bold");
    obj.label90:setFontSize(14);

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout52);
    obj.label91:setField("modificadorDeArmeiro");
    obj.label91:setAlign("right");
    obj.label91:setText("valor");
    obj.label91:setWidth(70);
    obj.label91:setHorzTextAlign("center");
    obj.label91:setName("label91");
    lfm_setPropAsString(obj.label91, "fontStyle",  "bold");
    obj.label91:setFontSize(14);

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
    obj.label92:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label92, "fontStyle",  "bold");
    obj.label92:setFontSize(14);

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout53);
    obj.label93:setField("modificadorDeArtesanato");
    obj.label93:setAlign("right");
    obj.label93:setText("valor");
    obj.label93:setWidth(70);
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");
    lfm_setPropAsString(obj.label93, "fontStyle",  "bold");
    obj.label93:setFontSize(14);

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
    obj.label94:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label94, "fontStyle",  "bold");
    obj.label94:setFontSize(14);

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout54);
    obj.label95:setField("modificadorDeCulinária");
    obj.label95:setAlign("right");
    obj.label95:setText("valor");
    obj.label95:setWidth(70);
    obj.label95:setHorzTextAlign("center");
    obj.label95:setName("label95");
    lfm_setPropAsString(obj.label95, "fontStyle",  "bold");
    obj.label95:setFontSize(14);

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
    obj.label96:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label96, "fontStyle",  "bold");
    obj.label96:setFontSize(14);

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout55);
    obj.label97:setField("modificadorDeConhecimento1");
    obj.label97:setAlign("right");
    obj.label97:setText("valor");
    obj.label97:setWidth(70);
    obj.label97:setHorzTextAlign("center");
    obj.label97:setName("label97");
    lfm_setPropAsString(obj.label97, "fontStyle",  "bold");
    obj.label97:setFontSize(14);

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
    obj.label98:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label98, "fontStyle",  "bold");
    obj.label98:setFontSize(14);

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout56);
    obj.label99:setField("modificadorDeConhecimento2");
    obj.label99:setAlign("right");
    obj.label99:setText("valor");
    obj.label99:setWidth(70);
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");
    lfm_setPropAsString(obj.label99, "fontStyle",  "bold");
    obj.label99:setFontSize(14);

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
    obj.label100:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label100, "fontStyle",  "bold");
    obj.label100:setFontSize(14);

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout57);
    obj.label101:setField("modificadorDeConhecimento3");
    obj.label101:setAlign("right");
    obj.label101:setText("valor");
    obj.label101:setWidth(70);
    obj.label101:setHorzTextAlign("center");
    obj.label101:setName("label101");
    lfm_setPropAsString(obj.label101, "fontStyle",  "bold");
    obj.label101:setFontSize(14);

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
    obj.label102:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label102, "fontStyle",  "bold");
    obj.label102:setFontSize(14);

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout58);
    obj.label103:setField("modificadorDeConhecimento4");
    obj.label103:setAlign("right");
    obj.label103:setText("valor");
    obj.label103:setWidth(70);
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");
    lfm_setPropAsString(obj.label103, "fontStyle",  "bold");
    obj.label103:setFontSize(14);

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
    obj.label104:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label104, "fontStyle",  "bold");
    obj.label104:setFontSize(14);

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout59);
    obj.label105:setField("modificadorDeConhecimento5");
    obj.label105:setAlign("right");
    obj.label105:setText("valor");
    obj.label105:setWidth(70);
    obj.label105:setHorzTextAlign("center");
    obj.label105:setName("label105");
    lfm_setPropAsString(obj.label105, "fontStyle",  "bold");
    obj.label105:setFontSize(14);

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
    lfm_setPropAsString(obj.label106, "fontStyle",  "bold");
    obj.label106:setFontSize(14);

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.rectangle2);
    obj.label107:setLeft(100);
    obj.label107:setTop(40);
    obj.label107:setWidth(100);
    obj.label107:setHeight(200);
    obj.label107:setText("Insira a imagem de seu personagem aqui");
    obj.label107:setHorzTextAlign("center");
    obj.label107:setName("label107");
    lfm_setPropAsString(obj.label107, "fontStyle",  "bold");
    obj.label107:setFontSize(14);

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

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Atributos e Pericias");
    obj.tab2:setName("tab2");

    obj.frmAtributosPericias = GUI.fromHandle(_obj_newObject("form"));
    obj.frmAtributosPericias:setParent(obj.tab2);
    obj.frmAtributosPericias:setName("frmAtributosPericias");
    obj.frmAtributosPericias:setAlign("client");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.frmAtributosPericias);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setName("rectangle3");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frmAtributosPericias);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.scrollBox2);
    obj.layout60:setLeft(10);
    obj.layout60:setTop(20);
    obj.layout60:setHeight(25);
    obj.layout60:setWidth(200);
    obj.layout60:setName("layout60");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout60);
    obj.label108:setAlign("left");
    obj.label108:setText("Força: ");
    obj.label108:setAutoSize(true);
    obj.label108:setName("label108");
    obj.label108:setFontColor("#FF0000");
    lfm_setPropAsString(obj.label108, "fontStyle",  "bold");
    obj.label108:setFontSize(14);

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout60);
    obj.edit14:setAlign("client");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setField("forca");
    obj.edit14:setName("edit14");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.scrollBox2);
    obj.layout61:setLeft(250);
    obj.layout61:setTop(20);
    obj.layout61:setHeight(25);
    obj.layout61:setWidth(200);
    obj.layout61:setName("layout61");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout61);
    obj.label109:setAlign("left");
    obj.label109:setText("Destreza: ");
    obj.label109:setAutoSize(true);
    obj.label109:setName("label109");
    obj.label109:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label109, "fontStyle",  "bold");
    obj.label109:setFontSize(14);

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout61);
    obj.edit15:setAlign("client");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setField("destreza");
    obj.edit15:setName("edit15");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.scrollBox2);
    obj.layout62:setLeft(500);
    obj.layout62:setTop(20);
    obj.layout62:setHeight(25);
    obj.layout62:setWidth(200);
    obj.layout62:setName("layout62");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout62);
    obj.label110:setAlign("left");
    obj.label110:setText("Constituição: ");
    obj.label110:setAutoSize(true);
    obj.label110:setName("label110");
    obj.label110:setFontColor("#ADFF2F");
    lfm_setPropAsString(obj.label110, "fontStyle",  "bold");
    obj.label110:setFontSize(14);

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout62);
    obj.edit16:setAlign("client");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setField("constituicao");
    obj.edit16:setName("edit16");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox2);
    obj.layout63:setLeft(10);
    obj.layout63:setTop(50);
    obj.layout63:setHeight(25);
    obj.layout63:setWidth(200);
    obj.layout63:setName("layout63");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout63);
    obj.label111:setAlign("left");
    obj.label111:setText("Inteligência: ");
    obj.label111:setAutoSize(true);
    obj.label111:setName("label111");
    obj.label111:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label111, "fontStyle",  "bold");
    obj.label111:setFontSize(14);

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout63);
    obj.edit17:setAlign("client");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setField("inteligencia");
    obj.edit17:setName("edit17");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.scrollBox2);
    obj.layout64:setLeft(250);
    obj.layout64:setTop(50);
    obj.layout64:setHeight(25);
    obj.layout64:setWidth(200);
    obj.layout64:setName("layout64");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout64);
    obj.label112:setAlign("left");
    obj.label112:setText("Sabedoria: ");
    obj.label112:setAutoSize(true);
    obj.label112:setName("label112");
    obj.label112:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label112, "fontStyle",  "bold");
    obj.label112:setFontSize(14);

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout64);
    obj.edit18:setAlign("client");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setField("sabedoria");
    obj.edit18:setName("edit18");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.scrollBox2);
    obj.layout65:setLeft(500);
    obj.layout65:setTop(50);
    obj.layout65:setHeight(25);
    obj.layout65:setWidth(200);
    obj.layout65:setName("layout65");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout65);
    obj.label113:setAlign("left");
    obj.label113:setText("Carisma: ");
    obj.label113:setAutoSize(true);
    obj.label113:setName("label113");
    obj.label113:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label113, "fontStyle",  "bold");
    obj.label113:setFontSize(14);

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout65);
    obj.edit19:setAlign("client");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setField("carisma");
    obj.edit19:setName("edit19");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.scrollBox2);
    obj.layout66:setLeft(10);
    obj.layout66:setTop(80);
    obj.layout66:setHeight(25);
    obj.layout66:setWidth(200);
    obj.layout66:setName("layout66");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.layout66);
    obj.label114:setAlign("left");
    obj.label114:setText("Acrobacia: ");
    obj.label114:setAutoSize(true);
    obj.label114:setName("label114");
    obj.label114:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label114, "fontStyle",  "bold");
    obj.label114:setFontSize(14);

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout66);
    obj.edit20:setAlign("client");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setField("acrobacia");
    obj.edit20:setName("edit20");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.scrollBox2);
    obj.layout67:setLeft(250);
    obj.layout67:setTop(80);
    obj.layout67:setHeight(25);
    obj.layout67:setWidth(200);
    obj.layout67:setName("layout67");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout67);
    obj.label115:setAlign("left");
    obj.label115:setText("Adestramento: ");
    obj.label115:setAutoSize(true);
    obj.label115:setName("label115");
    obj.label115:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label115, "fontStyle",  "bold");
    obj.label115:setFontSize(14);

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout67);
    obj.edit21:setAlign("client");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setField("adestramento");
    obj.edit21:setName("edit21");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.scrollBox2);
    obj.layout68:setLeft(500);
    obj.layout68:setTop(80);
    obj.layout68:setHeight(25);
    obj.layout68:setWidth(200);
    obj.layout68:setName("layout68");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout68);
    obj.label116:setAlign("left");
    obj.label116:setText("Atletismo: ");
    obj.label116:setAutoSize(true);
    obj.label116:setName("label116");
    obj.label116:setFontColor("#FF0000");
    lfm_setPropAsString(obj.label116, "fontStyle",  "bold");
    obj.label116:setFontSize(14);

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout68);
    obj.edit22:setAlign("client");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setField("atletismo");
    obj.edit22:setName("edit22");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.scrollBox2);
    obj.layout69:setLeft(10);
    obj.layout69:setTop(110);
    obj.layout69:setHeight(25);
    obj.layout69:setWidth(200);
    obj.layout69:setName("layout69");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout69);
    obj.label117:setAlign("left");
    obj.label117:setText("Atuação: ");
    obj.label117:setAutoSize(true);
    obj.label117:setName("label117");
    obj.label117:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label117, "fontStyle",  "bold");
    obj.label117:setFontSize(14);

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout69);
    obj.edit23:setAlign("client");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setField("atuacao");
    obj.edit23:setName("edit23");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.scrollBox2);
    obj.layout70:setLeft(250);
    obj.layout70:setTop(110);
    obj.layout70:setHeight(25);
    obj.layout70:setWidth(200);
    obj.layout70:setName("layout70");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout70);
    obj.label118:setAlign("left");
    obj.label118:setText("Cavalgar: ");
    obj.label118:setAutoSize(true);
    obj.label118:setName("label118");
    obj.label118:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label118, "fontStyle",  "bold");
    obj.label118:setFontSize(14);

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout70);
    obj.edit24:setAlign("client");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setField("cavalgar");
    obj.edit24:setName("edit24");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.scrollBox2);
    obj.layout71:setLeft(500);
    obj.layout71:setTop(110);
    obj.layout71:setHeight(25);
    obj.layout71:setWidth(200);
    obj.layout71:setName("layout71");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout71);
    obj.label119:setAlign("left");
    obj.label119:setText("Cura: ");
    obj.label119:setAutoSize(true);
    obj.label119:setName("label119");
    obj.label119:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label119, "fontStyle",  "bold");
    obj.label119:setFontSize(14);

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout71);
    obj.edit25:setAlign("client");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setField("cura");
    obj.edit25:setName("edit25");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.scrollBox2);
    obj.layout72:setLeft(10);
    obj.layout72:setTop(140);
    obj.layout72:setHeight(25);
    obj.layout72:setWidth(200);
    obj.layout72:setName("layout72");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout72);
    obj.label120:setAlign("left");
    obj.label120:setText("Diplomacia: ");
    obj.label120:setAutoSize(true);
    obj.label120:setName("label120");
    obj.label120:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label120, "fontStyle",  "bold");
    obj.label120:setFontSize(14);

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout72);
    obj.edit26:setAlign("client");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setField("diplomacia");
    obj.edit26:setName("edit26");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.scrollBox2);
    obj.layout73:setLeft(250);
    obj.layout73:setTop(140);
    obj.layout73:setHeight(25);
    obj.layout73:setWidth(200);
    obj.layout73:setName("layout73");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout73);
    obj.label121:setAlign("left");
    obj.label121:setText("Enganação: ");
    obj.label121:setAutoSize(true);
    obj.label121:setName("label121");
    obj.label121:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label121, "fontStyle",  "bold");
    obj.label121:setFontSize(14);

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout73);
    obj.edit27:setAlign("client");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setField("enganacao");
    obj.edit27:setName("edit27");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.scrollBox2);
    obj.layout74:setLeft(500);
    obj.layout74:setTop(140);
    obj.layout74:setHeight(25);
    obj.layout74:setWidth(200);
    obj.layout74:setName("layout74");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout74);
    obj.label122:setAlign("left");
    obj.label122:setText("Fortitude: ");
    obj.label122:setAutoSize(true);
    obj.label122:setName("label122");
    obj.label122:setFontColor("#ADFF2F");
    lfm_setPropAsString(obj.label122, "fontStyle",  "bold");
    obj.label122:setFontSize(14);

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout74);
    obj.edit28:setAlign("client");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setField("fortitude");
    obj.edit28:setName("edit28");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.scrollBox2);
    obj.layout75:setLeft(10);
    obj.layout75:setTop(170);
    obj.layout75:setHeight(25);
    obj.layout75:setWidth(200);
    obj.layout75:setName("layout75");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout75);
    obj.label123:setAlign("left");
    obj.label123:setText("Furtividade: ");
    obj.label123:setAutoSize(true);
    obj.label123:setName("label123");
    obj.label123:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label123, "fontStyle",  "bold");
    obj.label123:setFontSize(14);

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout75);
    obj.edit29:setAlign("client");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setField("furtividade");
    obj.edit29:setName("edit29");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.scrollBox2);
    obj.layout76:setLeft(250);
    obj.layout76:setTop(170);
    obj.layout76:setHeight(25);
    obj.layout76:setWidth(200);
    obj.layout76:setName("layout76");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout76);
    obj.label124:setAlign("left");
    obj.label124:setText("Iniciativa: ");
    obj.label124:setAutoSize(true);
    obj.label124:setName("label124");
    obj.label124:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label124, "fontStyle",  "bold");
    obj.label124:setFontSize(14);

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout76);
    obj.edit30:setAlign("client");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setField("iniciativa");
    obj.edit30:setName("edit30");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.scrollBox2);
    obj.layout77:setLeft(500);
    obj.layout77:setTop(170);
    obj.layout77:setHeight(25);
    obj.layout77:setWidth(200);
    obj.layout77:setName("layout77");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout77);
    obj.label125:setAlign("left");
    obj.label125:setText("Intimidação: ");
    obj.label125:setAutoSize(true);
    obj.label125:setName("label125");
    obj.label125:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label125, "fontStyle",  "bold");
    obj.label125:setFontSize(14);

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout77);
    obj.edit31:setAlign("client");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setField("intimidacao");
    obj.edit31:setName("edit31");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.scrollBox2);
    obj.layout78:setLeft(10);
    obj.layout78:setTop(200);
    obj.layout78:setHeight(25);
    obj.layout78:setWidth(200);
    obj.layout78:setName("layout78");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout78);
    obj.label126:setAlign("left");
    obj.label126:setText("Intuição: ");
    obj.label126:setAutoSize(true);
    obj.label126:setName("label126");
    obj.label126:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label126, "fontStyle",  "bold");
    obj.label126:setFontSize(14);

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout78);
    obj.edit32:setAlign("client");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setField("intuicao");
    obj.edit32:setName("edit32");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.scrollBox2);
    obj.layout79:setLeft(250);
    obj.layout79:setTop(200);
    obj.layout79:setHeight(25);
    obj.layout79:setWidth(200);
    obj.layout79:setName("layout79");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout79);
    obj.label127:setAlign("left");
    obj.label127:setText("Investigação: ");
    obj.label127:setAutoSize(true);
    obj.label127:setName("label127");
    obj.label127:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label127, "fontStyle",  "bold");
    obj.label127:setFontSize(14);

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout79);
    obj.edit33:setAlign("client");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setField("investigacao");
    obj.edit33:setName("edit33");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.scrollBox2);
    obj.layout80:setLeft(500);
    obj.layout80:setTop(200);
    obj.layout80:setHeight(25);
    obj.layout80:setWidth(200);
    obj.layout80:setName("layout80");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout80);
    obj.label128:setAlign("left");
    obj.label128:setText("Jogatina: ");
    obj.label128:setAutoSize(true);
    obj.label128:setName("label128");
    obj.label128:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label128, "fontStyle",  "bold");
    obj.label128:setFontSize(14);

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout80);
    obj.edit34:setAlign("client");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setField("jogatina");
    obj.edit34:setName("edit34");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.scrollBox2);
    obj.layout81:setLeft(10);
    obj.layout81:setTop(230);
    obj.layout81:setHeight(25);
    obj.layout81:setWidth(200);
    obj.layout81:setName("layout81");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout81);
    obj.label129:setAlign("left");
    obj.label129:setText("Ladinagem: ");
    obj.label129:setAutoSize(true);
    obj.label129:setName("label129");
    obj.label129:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label129, "fontStyle",  "bold");
    obj.label129:setFontSize(14);

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout81);
    obj.edit35:setAlign("client");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setField("ladinagem");
    obj.edit35:setName("edit35");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.scrollBox2);
    obj.layout82:setLeft(250);
    obj.layout82:setTop(230);
    obj.layout82:setHeight(25);
    obj.layout82:setWidth(200);
    obj.layout82:setName("layout82");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout82);
    obj.label130:setAlign("left");
    obj.label130:setText("Luta: ");
    obj.label130:setAutoSize(true);
    obj.label130:setName("label130");
    obj.label130:setFontColor("#FF0000");
    lfm_setPropAsString(obj.label130, "fontStyle",  "bold");
    obj.label130:setFontSize(14);

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout82);
    obj.edit36:setAlign("client");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setField("luta");
    obj.edit36:setName("edit36");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.scrollBox2);
    obj.layout83:setLeft(500);
    obj.layout83:setTop(230);
    obj.layout83:setHeight(25);
    obj.layout83:setWidth(200);
    obj.layout83:setName("layout83");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout83);
    obj.label131:setAlign("left");
    obj.label131:setText("Percepção: ");
    obj.label131:setAutoSize(true);
    obj.label131:setName("label131");
    obj.label131:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label131, "fontStyle",  "bold");
    obj.label131:setFontSize(14);

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout83);
    obj.edit37:setAlign("client");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setField("percepcao");
    obj.edit37:setName("edit37");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.scrollBox2);
    obj.layout84:setLeft(10);
    obj.layout84:setTop(260);
    obj.layout84:setHeight(25);
    obj.layout84:setWidth(200);
    obj.layout84:setName("layout84");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout84);
    obj.label132:setAlign("left");
    obj.label132:setText("Pilotagem: ");
    obj.label132:setAutoSize(true);
    obj.label132:setName("label132");
    obj.label132:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label132, "fontStyle",  "bold");
    obj.label132:setFontSize(14);

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout84);
    obj.edit38:setAlign("client");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setField("pilotagem");
    obj.edit38:setName("edit38");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.scrollBox2);
    obj.layout85:setLeft(250);
    obj.layout85:setTop(260);
    obj.layout85:setHeight(25);
    obj.layout85:setWidth(200);
    obj.layout85:setName("layout85");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout85);
    obj.label133:setAlign("left");
    obj.label133:setText("Pontaria: ");
    obj.label133:setAutoSize(true);
    obj.label133:setName("label133");
    obj.label133:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label133, "fontStyle",  "bold");
    obj.label133:setFontSize(14);

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout85);
    obj.edit39:setAlign("client");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setField("pontaria");
    obj.edit39:setName("edit39");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.scrollBox2);
    obj.layout86:setLeft(500);
    obj.layout86:setTop(260);
    obj.layout86:setHeight(25);
    obj.layout86:setWidth(200);
    obj.layout86:setName("layout86");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.layout86);
    obj.label134:setAlign("left");
    obj.label134:setText("Reflexos: ");
    obj.label134:setAutoSize(true);
    obj.label134:setName("label134");
    obj.label134:setFontColor("#32CD32");
    lfm_setPropAsString(obj.label134, "fontStyle",  "bold");
    obj.label134:setFontSize(14);

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout86);
    obj.edit40:setAlign("client");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setField("reflexos");
    obj.edit40:setName("edit40");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.scrollBox2);
    obj.layout87:setLeft(10);
    obj.layout87:setTop(290);
    obj.layout87:setHeight(25);
    obj.layout87:setWidth(200);
    obj.layout87:setName("layout87");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.layout87);
    obj.label135:setAlign("left");
    obj.label135:setText("Religião: ");
    obj.label135:setAutoSize(true);
    obj.label135:setName("label135");
    obj.label135:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label135, "fontStyle",  "bold");
    obj.label135:setFontSize(14);

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout87);
    obj.edit41:setAlign("client");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setField("religiao");
    obj.edit41:setName("edit41");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.scrollBox2);
    obj.layout88:setLeft(250);
    obj.layout88:setTop(290);
    obj.layout88:setHeight(25);
    obj.layout88:setWidth(200);
    obj.layout88:setName("layout88");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.layout88);
    obj.label136:setAlign("left");
    obj.label136:setText("Sobrevivência: ");
    obj.label136:setAutoSize(true);
    obj.label136:setName("label136");
    obj.label136:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label136, "fontStyle",  "bold");
    obj.label136:setFontSize(14);

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout88);
    obj.edit42:setAlign("client");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setField("sobrevivencia");
    obj.edit42:setName("edit42");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.scrollBox2);
    obj.layout89:setLeft(500);
    obj.layout89:setTop(290);
    obj.layout89:setHeight(25);
    obj.layout89:setWidth(200);
    obj.layout89:setName("layout89");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout89);
    obj.label137:setAlign("left");
    obj.label137:setText("Sedução: ");
    obj.label137:setAutoSize(true);
    obj.label137:setName("label137");
    obj.label137:setFontColor("#FFFF00");
    lfm_setPropAsString(obj.label137, "fontStyle",  "bold");
    obj.label137:setFontSize(14);

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout89);
    obj.edit43:setAlign("client");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setField("seducao");
    obj.edit43:setName("edit43");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.scrollBox2);
    obj.layout90:setLeft(10);
    obj.layout90:setTop(320);
    obj.layout90:setHeight(25);
    obj.layout90:setWidth(200);
    obj.layout90:setName("layout90");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout90);
    obj.label138:setAlign("left");
    obj.label138:setText("Vontade: ");
    obj.label138:setAutoSize(true);
    obj.label138:setName("label138");
    obj.label138:setFontColor("#40E0D0");
    lfm_setPropAsString(obj.label138, "fontStyle",  "bold");
    obj.label138:setFontSize(14);

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout90);
    obj.edit44:setAlign("client");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setField("vontade");
    obj.edit44:setName("edit44");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.scrollBox2);
    obj.layout91:setLeft(10);
    obj.layout91:setTop(350);
    obj.layout91:setHeight(25);
    obj.layout91:setWidth(200);
    obj.layout91:setName("layout91");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout91);
    obj.label139:setAlign("left");
    obj.label139:setText("Conhecimento: ");
    obj.label139:setAutoSize(true);
    obj.label139:setName("label139");
    obj.label139:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label139, "fontStyle",  "bold");
    obj.label139:setFontSize(14);

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout91);
    obj.edit45:setAlign("client");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setField("conhecimento");
    obj.edit45:setName("edit45");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.scrollBox2);
    obj.layout92:setLeft(250);
    obj.layout92:setTop(350);
    obj.layout92:setHeight(25);
    obj.layout92:setWidth(200);
    obj.layout92:setName("layout92");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout92);
    obj.label140:setAlign("left");
    obj.label140:setText("Guerra: ");
    obj.label140:setAutoSize(true);
    obj.label140:setName("label140");
    obj.label140:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label140, "fontStyle",  "bold");
    obj.label140:setFontSize(14);

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout92);
    obj.edit46:setAlign("client");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setField("guerra");
    obj.edit46:setName("edit46");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.scrollBox2);
    obj.layout93:setLeft(500);
    obj.layout93:setTop(350);
    obj.layout93:setHeight(25);
    obj.layout93:setWidth(200);
    obj.layout93:setName("layout93");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout93);
    obj.label141:setAlign("left");
    obj.label141:setText("Misticismo: ");
    obj.label141:setAutoSize(true);
    obj.label141:setName("label141");
    obj.label141:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label141, "fontStyle",  "bold");
    obj.label141:setFontSize(14);

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout93);
    obj.edit47:setAlign("client");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setField("misticismo");
    obj.edit47:setName("edit47");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.scrollBox2);
    obj.layout94:setLeft(10);
    obj.layout94:setTop(380);
    obj.layout94:setHeight(25);
    obj.layout94:setWidth(200);
    obj.layout94:setName("layout94");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.layout94);
    obj.label142:setAlign("left");
    obj.label142:setText("Tecnologia: ");
    obj.label142:setAutoSize(true);
    obj.label142:setName("label142");
    obj.label142:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label142, "fontStyle",  "bold");
    obj.label142:setFontSize(14);

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout94);
    obj.edit48:setAlign("client");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setField("tecnologia");
    obj.edit48:setName("edit48");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.scrollBox2);
    obj.layout95:setLeft(250);
    obj.layout95:setTop(380);
    obj.layout95:setHeight(25);
    obj.layout95:setWidth(200);
    obj.layout95:setName("layout95");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout95);
    obj.edit49:setAlign("left");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setField("Cunhecimento1");
    obj.edit49:setName("edit49");
    obj.edit49:setFontColor("#4169E1");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout95);
    obj.edit50:setAlign("client");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setField("conhecimento1");
    obj.edit50:setName("edit50");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.scrollBox2);
    obj.layout96:setLeft(500);
    obj.layout96:setTop(380);
    obj.layout96:setHeight(25);
    obj.layout96:setWidth(200);
    obj.layout96:setName("layout96");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout96);
    obj.edit51:setAlign("left");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setField("Cunhecimento2");
    obj.edit51:setName("edit51");
    obj.edit51:setFontColor("#4169E1");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout96);
    obj.edit52:setAlign("client");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setField("conhecimento2");
    obj.edit52:setName("edit52");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.scrollBox2);
    obj.layout97:setLeft(10);
    obj.layout97:setTop(410);
    obj.layout97:setHeight(25);
    obj.layout97:setWidth(200);
    obj.layout97:setName("layout97");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout97);
    obj.edit53:setAlign("left");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setField("Cunhecimento3");
    obj.edit53:setName("edit53");
    obj.edit53:setFontColor("#4169E1");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout97);
    obj.edit54:setAlign("client");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setField("conhecimento3");
    obj.edit54:setName("edit54");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.scrollBox2);
    obj.layout98:setLeft(250);
    obj.layout98:setTop(410);
    obj.layout98:setHeight(25);
    obj.layout98:setWidth(200);
    obj.layout98:setName("layout98");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout98);
    obj.edit55:setAlign("left");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setField("Cunhecimento4");
    obj.edit55:setName("edit55");
    obj.edit55:setFontColor("#4169E1");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout98);
    obj.edit56:setAlign("client");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setField("conhecimento4");
    obj.edit56:setName("edit56");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.scrollBox2);
    obj.layout99:setLeft(500);
    obj.layout99:setTop(410);
    obj.layout99:setHeight(25);
    obj.layout99:setWidth(200);
    obj.layout99:setName("layout99");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout99);
    obj.edit57:setAlign("left");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setField("Cunhecimento5");
    obj.edit57:setName("edit57");
    obj.edit57:setFontColor("#4169E1");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout99);
    obj.edit58:setAlign("client");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setField("conhecimento5");
    obj.edit58:setName("edit58");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.scrollBox2);
    obj.layout100:setLeft(10);
    obj.layout100:setTop(440);
    obj.layout100:setHeight(25);
    obj.layout100:setWidth(200);
    obj.layout100:setName("layout100");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.layout100);
    obj.label143:setAlign("left");
    obj.label143:setText("Alfaiate: ");
    obj.label143:setAutoSize(true);
    obj.label143:setName("label143");
    obj.label143:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label143, "fontStyle",  "bold");
    obj.label143:setFontSize(14);

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout100);
    obj.edit59:setAlign("client");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setField("Alfaiate");
    obj.edit59:setName("edit59");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.scrollBox2);
    obj.layout101:setLeft(250);
    obj.layout101:setTop(440);
    obj.layout101:setHeight(25);
    obj.layout101:setWidth(200);
    obj.layout101:setName("layout101");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout101);
    obj.label144:setAlign("left");
    obj.label144:setText("Alquimia: ");
    obj.label144:setAutoSize(true);
    obj.label144:setName("label144");
    obj.label144:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label144, "fontStyle",  "bold");
    obj.label144:setFontSize(14);

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout101);
    obj.edit60:setAlign("client");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setField("alquimia");
    obj.edit60:setName("edit60");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.scrollBox2);
    obj.layout102:setLeft(500);
    obj.layout102:setTop(440);
    obj.layout102:setHeight(25);
    obj.layout102:setWidth(200);
    obj.layout102:setName("layout102");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout102);
    obj.label145:setAlign("left");
    obj.label145:setText("Armeiro: ");
    obj.label145:setAutoSize(true);
    obj.label145:setName("label145");
    obj.label145:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label145, "fontStyle",  "bold");
    obj.label145:setFontSize(14);

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout102);
    obj.edit61:setAlign("client");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setField("armeiro");
    obj.edit61:setName("edit61");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.scrollBox2);
    obj.layout103:setLeft(10);
    obj.layout103:setTop(470);
    obj.layout103:setHeight(25);
    obj.layout103:setWidth(200);
    obj.layout103:setName("layout103");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.layout103);
    obj.label146:setAlign("left");
    obj.label146:setText("Artesanato: ");
    obj.label146:setAutoSize(true);
    obj.label146:setName("label146");
    obj.label146:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label146, "fontStyle",  "bold");
    obj.label146:setFontSize(14);

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout103);
    obj.edit62:setAlign("client");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setField("artesanato");
    obj.edit62:setName("edit62");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.scrollBox2);
    obj.layout104:setLeft(250);
    obj.layout104:setTop(470);
    obj.layout104:setHeight(25);
    obj.layout104:setWidth(200);
    obj.layout104:setName("layout104");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout104);
    obj.label147:setAlign("left");
    obj.label147:setText("Culinária: ");
    obj.label147:setAutoSize(true);
    obj.label147:setName("label147");
    obj.label147:setFontColor("#4169E1");
    lfm_setPropAsString(obj.label147, "fontStyle",  "bold");
    obj.label147:setFontSize(14);

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout104);
    obj.edit63:setAlign("client");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setField("culinaria");
    obj.edit63:setName("edit63");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamentos");
    obj.tab3:setName("tab3");

    obj.frmEquipamentos = GUI.fromHandle(_obj_newObject("form"));
    obj.frmEquipamentos:setParent(obj.tab3);
    obj.frmEquipamentos:setName("frmEquipamentos");
    obj.frmEquipamentos:setAlign("client");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.frmEquipamentos);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle4);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.scrollBox3);
    obj.layout105:setLeft(10);
    obj.layout105:setTop(20);
    obj.layout105:setHeight(25);
    obj.layout105:setWidth(200);
    obj.layout105:setName("layout105");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout105);
    obj.label148:setAlign("left");
    obj.label148:setText("Armadura: ");
    obj.label148:setAutoSize(true);
    obj.label148:setName("label148");
    lfm_setPropAsString(obj.label148, "fontStyle",  "bold");
    obj.label148:setFontSize(14);

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout105);
    obj.edit64:setAlign("client");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setField("nomeArmadura");
    obj.edit64:setName("edit64");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.scrollBox3);
    obj.layout106:setLeft(250);
    obj.layout106:setTop(20);
    obj.layout106:setHeight(25);
    obj.layout106:setWidth(200);
    obj.layout106:setName("layout106");

    obj.label149 = GUI.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.layout106);
    obj.label149:setAlign("left");
    obj.label149:setText("Bônus de Defesa: ");
    obj.label149:setAutoSize(true);
    obj.label149:setName("label149");
    lfm_setPropAsString(obj.label149, "fontStyle",  "bold");
    obj.label149:setFontSize(14);

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout106);
    obj.edit65:setAlign("client");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setField("ArmaduraCA");
    obj.edit65:setName("edit65");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.scrollBox3);
    obj.layout107:setLeft(500);
    obj.layout107:setTop(20);
    obj.layout107:setHeight(25);
    obj.layout107:setWidth(200);
    obj.layout107:setName("layout107");

    obj.label150 = GUI.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.layout107);
    obj.label150:setAlign("left");
    obj.label150:setText("Penalidade: ");
    obj.label150:setAutoSize(true);
    obj.label150:setName("label150");
    lfm_setPropAsString(obj.label150, "fontStyle",  "bold");
    obj.label150:setFontSize(14);

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout107);
    obj.edit66:setAlign("client");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setField("PenalidadeArmadura");
    obj.edit66:setName("edit66");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.scrollBox3);
    obj.layout108:setLeft(800);
    obj.layout108:setTop(20);
    obj.layout108:setHeight(25);
    obj.layout108:setWidth(200);
    obj.layout108:setName("layout108");

    obj.label151 = GUI.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.layout108);
    obj.label151:setAlign("left");
    obj.label151:setText("Mod Atb p/ DEF: ");
    obj.label151:setAutoSize(true);
    obj.label151:setName("label151");
    lfm_setPropAsString(obj.label151, "fontStyle",  "bold");
    obj.label151:setFontSize(14);

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout108);
    obj.edit67:setAlign("client");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setField("modAtributoCA");
    obj.edit67:setName("edit67");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.scrollBox3);
    obj.layout109:setLeft(10);
    obj.layout109:setTop(50);
    obj.layout109:setHeight(25);
    obj.layout109:setWidth(200);
    obj.layout109:setName("layout109");

    obj.label152 = GUI.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.layout109);
    obj.label152:setAlign("left");
    obj.label152:setText("Escudo: ");
    obj.label152:setAutoSize(true);
    obj.label152:setName("label152");
    lfm_setPropAsString(obj.label152, "fontStyle",  "bold");
    obj.label152:setFontSize(14);

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout109);
    obj.edit68:setAlign("client");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setField("nomeEscudo");
    obj.edit68:setName("edit68");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.scrollBox3);
    obj.layout110:setLeft(250);
    obj.layout110:setTop(50);
    obj.layout110:setHeight(25);
    obj.layout110:setWidth(200);
    obj.layout110:setName("layout110");

    obj.label153 = GUI.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.layout110);
    obj.label153:setAlign("left");
    obj.label153:setText("Bônus de Defesa: ");
    obj.label153:setAutoSize(true);
    obj.label153:setName("label153");
    lfm_setPropAsString(obj.label153, "fontStyle",  "bold");
    obj.label153:setFontSize(14);

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout110);
    obj.edit69:setAlign("client");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setField("EscudoCA");
    obj.edit69:setName("edit69");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.scrollBox3);
    obj.layout111:setLeft(500);
    obj.layout111:setTop(50);
    obj.layout111:setHeight(25);
    obj.layout111:setWidth(200);
    obj.layout111:setName("layout111");

    obj.label154 = GUI.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.layout111);
    obj.label154:setAlign("left");
    obj.label154:setText("Penalidade: ");
    obj.label154:setAutoSize(true);
    obj.label154:setName("label154");
    lfm_setPropAsString(obj.label154, "fontStyle",  "bold");
    obj.label154:setFontSize(14);

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout111);
    obj.edit70:setAlign("client");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setField("PenalidadeEscudo");
    obj.edit70:setName("edit70");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.scrollBox3);
    obj.layout112:setLeft(800);
    obj.layout112:setTop(50);
    obj.layout112:setHeight(25);
    obj.layout112:setWidth(200);
    obj.layout112:setName("layout112");

    obj.label155 = GUI.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.layout112);
    obj.label155:setAlign("left");
    obj.label155:setText("Bônus Extra DEF: ");
    obj.label155:setAutoSize(true);
    obj.label155:setName("label155");
    lfm_setPropAsString(obj.label155, "fontStyle",  "bold");
    obj.label155:setFontSize(14);

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout112);
    obj.edit71:setAlign("client");
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setField("bonusCA");
    obj.edit71:setName("edit71");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.scrollBox3);
    obj.layout113:setLeft(10);
    obj.layout113:setTop(80);
    obj.layout113:setHeight(25);
    obj.layout113:setWidth(200);
    obj.layout113:setName("layout113");

    obj.label156 = GUI.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.layout113);
    obj.label156:setAlign("left");
    obj.label156:setText("Arma: ");
    obj.label156:setAutoSize(true);
    obj.label156:setName("label156");
    lfm_setPropAsString(obj.label156, "fontStyle",  "bold");
    obj.label156:setFontSize(14);

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout113);
    obj.edit72:setAlign("client");
    obj.edit72:setHorzTextAlign("center");
    obj.edit72:setField("nomeArma1");
    obj.edit72:setName("edit72");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.scrollBox3);
    obj.layout114:setLeft(250);
    obj.layout114:setTop(80);
    obj.layout114:setHeight(25);
    obj.layout114:setWidth(200);
    obj.layout114:setName("layout114");

    obj.label157 = GUI.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.layout114);
    obj.label157:setAlign("left");
    obj.label157:setText("Bônus: ");
    obj.label157:setAutoSize(true);
    obj.label157:setName("label157");
    lfm_setPropAsString(obj.label157, "fontStyle",  "bold");
    obj.label157:setFontSize(14);

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout114);
    obj.edit73:setAlign("client");
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setField("bonusArma1");
    obj.edit73:setName("edit73");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.scrollBox3);
    obj.layout115:setLeft(500);
    obj.layout115:setTop(80);
    obj.layout115:setHeight(25);
    obj.layout115:setWidth(200);
    obj.layout115:setName("layout115");

    obj.label158 = GUI.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.layout115);
    obj.label158:setAlign("left");
    obj.label158:setText("Dano/Crítico: ");
    obj.label158:setAutoSize(true);
    obj.label158:setName("label158");
    lfm_setPropAsString(obj.label158, "fontStyle",  "bold");
    obj.label158:setFontSize(14);

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout115);
    obj.edit74:setAlign("client");
    obj.edit74:setHorzTextAlign("center");
    obj.edit74:setField("dcArma1");
    obj.edit74:setName("edit74");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.scrollBox3);
    obj.layout116:setLeft(800);
    obj.layout116:setTop(80);
    obj.layout116:setHeight(25);
    obj.layout116:setWidth(200);
    obj.layout116:setName("layout116");

    obj.label159 = GUI.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.layout116);
    obj.label159:setAlign("left");
    obj.label159:setText("Tipo: ");
    obj.label159:setAutoSize(true);
    obj.label159:setName("label159");
    lfm_setPropAsString(obj.label159, "fontStyle",  "bold");
    obj.label159:setFontSize(14);

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout116);
    obj.edit75:setAlign("client");
    obj.edit75:setHorzTextAlign("center");
    obj.edit75:setField("tipoArma1");
    obj.edit75:setName("edit75");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.scrollBox3);
    obj.layout117:setLeft(1100);
    obj.layout117:setTop(80);
    obj.layout117:setHeight(25);
    obj.layout117:setWidth(200);
    obj.layout117:setName("layout117");

    obj.label160 = GUI.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.layout117);
    obj.label160:setAlign("left");
    obj.label160:setText("Alcance: ");
    obj.label160:setAutoSize(true);
    obj.label160:setName("label160");
    lfm_setPropAsString(obj.label160, "fontStyle",  "bold");
    obj.label160:setFontSize(14);

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout117);
    obj.edit76:setAlign("client");
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setField("alcanceArma1");
    obj.edit76:setName("edit76");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.scrollBox3);
    obj.layout118:setLeft(10);
    obj.layout118:setTop(110);
    obj.layout118:setHeight(25);
    obj.layout118:setWidth(200);
    obj.layout118:setName("layout118");

    obj.label161 = GUI.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.layout118);
    obj.label161:setAlign("left");
    obj.label161:setText("Arma: ");
    obj.label161:setAutoSize(true);
    obj.label161:setName("label161");
    lfm_setPropAsString(obj.label161, "fontStyle",  "bold");
    obj.label161:setFontSize(14);

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout118);
    obj.edit77:setAlign("client");
    obj.edit77:setHorzTextAlign("center");
    obj.edit77:setField("nomeArma2");
    obj.edit77:setName("edit77");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.scrollBox3);
    obj.layout119:setLeft(250);
    obj.layout119:setTop(110);
    obj.layout119:setHeight(25);
    obj.layout119:setWidth(200);
    obj.layout119:setName("layout119");

    obj.label162 = GUI.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.layout119);
    obj.label162:setAlign("left");
    obj.label162:setText("Bônus: ");
    obj.label162:setAutoSize(true);
    obj.label162:setName("label162");
    lfm_setPropAsString(obj.label162, "fontStyle",  "bold");
    obj.label162:setFontSize(14);

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout119);
    obj.edit78:setAlign("client");
    obj.edit78:setHorzTextAlign("center");
    obj.edit78:setField("bonusArma2");
    obj.edit78:setName("edit78");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.scrollBox3);
    obj.layout120:setLeft(500);
    obj.layout120:setTop(110);
    obj.layout120:setHeight(25);
    obj.layout120:setWidth(200);
    obj.layout120:setName("layout120");

    obj.label163 = GUI.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.layout120);
    obj.label163:setAlign("left");
    obj.label163:setText("Dano/Crítico: ");
    obj.label163:setAutoSize(true);
    obj.label163:setName("label163");
    lfm_setPropAsString(obj.label163, "fontStyle",  "bold");
    obj.label163:setFontSize(14);

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout120);
    obj.edit79:setAlign("client");
    obj.edit79:setHorzTextAlign("center");
    obj.edit79:setField("dcArma2");
    obj.edit79:setName("edit79");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.scrollBox3);
    obj.layout121:setLeft(800);
    obj.layout121:setTop(110);
    obj.layout121:setHeight(25);
    obj.layout121:setWidth(200);
    obj.layout121:setName("layout121");

    obj.label164 = GUI.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.layout121);
    obj.label164:setAlign("left");
    obj.label164:setText("Tipo: ");
    obj.label164:setAutoSize(true);
    obj.label164:setName("label164");
    lfm_setPropAsString(obj.label164, "fontStyle",  "bold");
    obj.label164:setFontSize(14);

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout121);
    obj.edit80:setAlign("client");
    obj.edit80:setHorzTextAlign("center");
    obj.edit80:setField("tipoArma2");
    obj.edit80:setName("edit80");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.scrollBox3);
    obj.layout122:setLeft(1100);
    obj.layout122:setTop(110);
    obj.layout122:setHeight(25);
    obj.layout122:setWidth(200);
    obj.layout122:setName("layout122");

    obj.label165 = GUI.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.layout122);
    obj.label165:setAlign("left");
    obj.label165:setText("Alcance: ");
    obj.label165:setAutoSize(true);
    obj.label165:setName("label165");
    lfm_setPropAsString(obj.label165, "fontStyle",  "bold");
    obj.label165:setFontSize(14);

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout122);
    obj.edit81:setAlign("client");
    obj.edit81:setHorzTextAlign("center");
    obj.edit81:setField("alcanceArma2");
    obj.edit81:setName("edit81");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.scrollBox3);
    obj.layout123:setLeft(10);
    obj.layout123:setTop(140);
    obj.layout123:setHeight(25);
    obj.layout123:setWidth(200);
    obj.layout123:setName("layout123");

    obj.label166 = GUI.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.layout123);
    obj.label166:setAlign("left");
    obj.label166:setText("Arma: ");
    obj.label166:setAutoSize(true);
    obj.label166:setName("label166");
    lfm_setPropAsString(obj.label166, "fontStyle",  "bold");
    obj.label166:setFontSize(14);

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout123);
    obj.edit82:setAlign("client");
    obj.edit82:setHorzTextAlign("center");
    obj.edit82:setField("nomeArma3");
    obj.edit82:setName("edit82");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.scrollBox3);
    obj.layout124:setLeft(250);
    obj.layout124:setTop(140);
    obj.layout124:setHeight(25);
    obj.layout124:setWidth(200);
    obj.layout124:setName("layout124");

    obj.label167 = GUI.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.layout124);
    obj.label167:setAlign("left");
    obj.label167:setText("Bônus: ");
    obj.label167:setAutoSize(true);
    obj.label167:setName("label167");
    lfm_setPropAsString(obj.label167, "fontStyle",  "bold");
    obj.label167:setFontSize(14);

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout124);
    obj.edit83:setAlign("client");
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setField("bonusArma3");
    obj.edit83:setName("edit83");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.scrollBox3);
    obj.layout125:setLeft(500);
    obj.layout125:setTop(140);
    obj.layout125:setHeight(25);
    obj.layout125:setWidth(200);
    obj.layout125:setName("layout125");

    obj.label168 = GUI.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.layout125);
    obj.label168:setAlign("left");
    obj.label168:setText("Dano/Crítico: ");
    obj.label168:setAutoSize(true);
    obj.label168:setName("label168");
    lfm_setPropAsString(obj.label168, "fontStyle",  "bold");
    obj.label168:setFontSize(14);

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout125);
    obj.edit84:setAlign("client");
    obj.edit84:setHorzTextAlign("center");
    obj.edit84:setField("dcArma3");
    obj.edit84:setName("edit84");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.scrollBox3);
    obj.layout126:setLeft(800);
    obj.layout126:setTop(140);
    obj.layout126:setHeight(25);
    obj.layout126:setWidth(200);
    obj.layout126:setName("layout126");

    obj.label169 = GUI.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.layout126);
    obj.label169:setAlign("left");
    obj.label169:setText("Tipo: ");
    obj.label169:setAutoSize(true);
    obj.label169:setName("label169");
    lfm_setPropAsString(obj.label169, "fontStyle",  "bold");
    obj.label169:setFontSize(14);

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout126);
    obj.edit85:setAlign("client");
    obj.edit85:setHorzTextAlign("center");
    obj.edit85:setField("tipoArma3");
    obj.edit85:setName("edit85");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.scrollBox3);
    obj.layout127:setLeft(1100);
    obj.layout127:setTop(140);
    obj.layout127:setHeight(25);
    obj.layout127:setWidth(200);
    obj.layout127:setName("layout127");

    obj.label170 = GUI.fromHandle(_obj_newObject("label"));
    obj.label170:setParent(obj.layout127);
    obj.label170:setAlign("left");
    obj.label170:setText("Alcance: ");
    obj.label170:setAutoSize(true);
    obj.label170:setName("label170");
    lfm_setPropAsString(obj.label170, "fontStyle",  "bold");
    obj.label170:setFontSize(14);

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout127);
    obj.edit86:setAlign("client");
    obj.edit86:setHorzTextAlign("center");
    obj.edit86:setField("alcanceArma3");
    obj.edit86:setName("edit86");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.scrollBox3);
    obj.layout128:setLeft(10);
    obj.layout128:setTop(170);
    obj.layout128:setHeight(25);
    obj.layout128:setWidth(200);
    obj.layout128:setName("layout128");

    obj.label171 = GUI.fromHandle(_obj_newObject("label"));
    obj.label171:setParent(obj.layout128);
    obj.label171:setAlign("left");
    obj.label171:setText("Arma: ");
    obj.label171:setAutoSize(true);
    obj.label171:setName("label171");
    lfm_setPropAsString(obj.label171, "fontStyle",  "bold");
    obj.label171:setFontSize(14);

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout128);
    obj.edit87:setAlign("client");
    obj.edit87:setHorzTextAlign("center");
    obj.edit87:setField("nomeArma4");
    obj.edit87:setName("edit87");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.scrollBox3);
    obj.layout129:setLeft(250);
    obj.layout129:setTop(170);
    obj.layout129:setHeight(25);
    obj.layout129:setWidth(200);
    obj.layout129:setName("layout129");

    obj.label172 = GUI.fromHandle(_obj_newObject("label"));
    obj.label172:setParent(obj.layout129);
    obj.label172:setAlign("left");
    obj.label172:setText("Bônus: ");
    obj.label172:setAutoSize(true);
    obj.label172:setName("label172");
    lfm_setPropAsString(obj.label172, "fontStyle",  "bold");
    obj.label172:setFontSize(14);

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout129);
    obj.edit88:setAlign("client");
    obj.edit88:setHorzTextAlign("center");
    obj.edit88:setField("bonusArma4");
    obj.edit88:setName("edit88");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.scrollBox3);
    obj.layout130:setLeft(500);
    obj.layout130:setTop(170);
    obj.layout130:setHeight(25);
    obj.layout130:setWidth(200);
    obj.layout130:setName("layout130");

    obj.label173 = GUI.fromHandle(_obj_newObject("label"));
    obj.label173:setParent(obj.layout130);
    obj.label173:setAlign("left");
    obj.label173:setText("Dano/Crítico: ");
    obj.label173:setAutoSize(true);
    obj.label173:setName("label173");
    lfm_setPropAsString(obj.label173, "fontStyle",  "bold");
    obj.label173:setFontSize(14);

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout130);
    obj.edit89:setAlign("client");
    obj.edit89:setHorzTextAlign("center");
    obj.edit89:setField("dcArma4");
    obj.edit89:setName("edit89");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.scrollBox3);
    obj.layout131:setLeft(800);
    obj.layout131:setTop(170);
    obj.layout131:setHeight(25);
    obj.layout131:setWidth(200);
    obj.layout131:setName("layout131");

    obj.label174 = GUI.fromHandle(_obj_newObject("label"));
    obj.label174:setParent(obj.layout131);
    obj.label174:setAlign("left");
    obj.label174:setText("Tipo: ");
    obj.label174:setAutoSize(true);
    obj.label174:setName("label174");
    lfm_setPropAsString(obj.label174, "fontStyle",  "bold");
    obj.label174:setFontSize(14);

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout131);
    obj.edit90:setAlign("client");
    obj.edit90:setHorzTextAlign("center");
    obj.edit90:setField("tipoArma4");
    obj.edit90:setName("edit90");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.scrollBox3);
    obj.layout132:setLeft(1100);
    obj.layout132:setTop(170);
    obj.layout132:setHeight(25);
    obj.layout132:setWidth(200);
    obj.layout132:setName("layout132");

    obj.label175 = GUI.fromHandle(_obj_newObject("label"));
    obj.label175:setParent(obj.layout132);
    obj.label175:setAlign("left");
    obj.label175:setText("Alcance: ");
    obj.label175:setAutoSize(true);
    obj.label175:setName("label175");
    lfm_setPropAsString(obj.label175, "fontStyle",  "bold");
    obj.label175:setFontSize(14);

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.layout132);
    obj.edit91:setAlign("client");
    obj.edit91:setHorzTextAlign("center");
    obj.edit91:setField("alcanceArma4");
    obj.edit91:setName("edit91");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.scrollBox3);
    obj.layout133:setLeft(10);
    obj.layout133:setTop(200);
    obj.layout133:setHeight(25);
    obj.layout133:setWidth(200);
    obj.layout133:setName("layout133");

    obj.label176 = GUI.fromHandle(_obj_newObject("label"));
    obj.label176:setParent(obj.layout133);
    obj.label176:setAlign("left");
    obj.label176:setText("Arma: ");
    obj.label176:setAutoSize(true);
    obj.label176:setName("label176");
    lfm_setPropAsString(obj.label176, "fontStyle",  "bold");
    obj.label176:setFontSize(14);

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.layout133);
    obj.edit92:setAlign("client");
    obj.edit92:setHorzTextAlign("center");
    obj.edit92:setField("nomeArma5");
    obj.edit92:setName("edit92");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.scrollBox3);
    obj.layout134:setLeft(250);
    obj.layout134:setTop(200);
    obj.layout134:setHeight(25);
    obj.layout134:setWidth(200);
    obj.layout134:setName("layout134");

    obj.label177 = GUI.fromHandle(_obj_newObject("label"));
    obj.label177:setParent(obj.layout134);
    obj.label177:setAlign("left");
    obj.label177:setText("Bônus: ");
    obj.label177:setAutoSize(true);
    obj.label177:setName("label177");
    lfm_setPropAsString(obj.label177, "fontStyle",  "bold");
    obj.label177:setFontSize(14);

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.layout134);
    obj.edit93:setAlign("client");
    obj.edit93:setHorzTextAlign("center");
    obj.edit93:setField("bonusArma5");
    obj.edit93:setName("edit93");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.scrollBox3);
    obj.layout135:setLeft(500);
    obj.layout135:setTop(200);
    obj.layout135:setHeight(25);
    obj.layout135:setWidth(200);
    obj.layout135:setName("layout135");

    obj.label178 = GUI.fromHandle(_obj_newObject("label"));
    obj.label178:setParent(obj.layout135);
    obj.label178:setAlign("left");
    obj.label178:setText("Dano/Crítico: ");
    obj.label178:setAutoSize(true);
    obj.label178:setName("label178");
    lfm_setPropAsString(obj.label178, "fontStyle",  "bold");
    obj.label178:setFontSize(14);

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.layout135);
    obj.edit94:setAlign("client");
    obj.edit94:setHorzTextAlign("center");
    obj.edit94:setField("dcArma5");
    obj.edit94:setName("edit94");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.scrollBox3);
    obj.layout136:setLeft(800);
    obj.layout136:setTop(200);
    obj.layout136:setHeight(25);
    obj.layout136:setWidth(200);
    obj.layout136:setName("layout136");

    obj.label179 = GUI.fromHandle(_obj_newObject("label"));
    obj.label179:setParent(obj.layout136);
    obj.label179:setAlign("left");
    obj.label179:setText("Tipo: ");
    obj.label179:setAutoSize(true);
    obj.label179:setName("label179");
    lfm_setPropAsString(obj.label179, "fontStyle",  "bold");
    obj.label179:setFontSize(14);

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.layout136);
    obj.edit95:setAlign("client");
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setField("tipoArma5");
    obj.edit95:setName("edit95");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.scrollBox3);
    obj.layout137:setLeft(1100);
    obj.layout137:setTop(200);
    obj.layout137:setHeight(25);
    obj.layout137:setWidth(200);
    obj.layout137:setName("layout137");

    obj.label180 = GUI.fromHandle(_obj_newObject("label"));
    obj.label180:setParent(obj.layout137);
    obj.label180:setAlign("left");
    obj.label180:setText("Alcance: ");
    obj.label180:setAutoSize(true);
    obj.label180:setName("label180");
    lfm_setPropAsString(obj.label180, "fontStyle",  "bold");
    obj.label180:setFontSize(14);

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.layout137);
    obj.edit96:setAlign("client");
    obj.edit96:setHorzTextAlign("center");
    obj.edit96:setField("alcanceArma5");
    obj.edit96:setName("edit96");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.scrollBox3);
    obj.layout138:setAlign("top");
    obj.layout138:setHeight(30);
    obj.layout138:setMargins({bottom=4, top=240});
    obj.layout138:setName("layout138");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout138);
    obj.button2:setText("Criar Novo Item");
    obj.button2:setWidth(150);
    obj.button2:setAlign("left");
    obj.button2:setName("button2");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.scrollBox3);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("top");
    obj.rclListaDosItens:setSelectable(true);
    obj.rclListaDosItens:setLayout("horizontal");
    obj.rclListaDosItens:setHeight(40);

    obj.boxDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.scrollBox3);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setAlign("client");
    obj.boxDetalhesDoItem:setMargins({left=4, right=4, top=4});

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.boxDetalhesDoItem);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle5:setName("rectangle5");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.rectangle5);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.scrollBox4);
    obj.layout139:setAlign("top");
    obj.layout139:setHeight(30);
    obj.layout139:setMargins({bottom=4});
    obj.layout139:setName("layout139");

    obj.label181 = GUI.fromHandle(_obj_newObject("label"));
    obj.label181:setParent(obj.layout139);
    obj.label181:setAlign("left");
    obj.label181:setText("Item:");
    obj.label181:setAutoSize(true);
    obj.label181:setName("label181");
    lfm_setPropAsString(obj.label181, "fontStyle",  "bold");
    obj.label181:setFontSize(14);

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.layout139);
    obj.edit97:setAlign("client");
    obj.edit97:setField("campoTitulo");
    obj.edit97:setName("edit97");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.scrollBox4);
    obj.layout140:setAlign("top");
    obj.layout140:setHeight(130);
    obj.layout140:setName("layout140");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout140);
    obj.image2:setAlign("left");
    obj.image2:setEditable(true);
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setField("campoURLImagem");
    obj.image2:setWidth(300);
    obj.image2:setName("image2");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.layout140);
    obj.layout141:setAlign("client");
    obj.layout141:setMargins({left=2});
    obj.layout141:setName("layout141");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.layout141);
    obj.edit98:setFontSize(14);
    obj.edit98:setAlign("top");
    obj.edit98:setField("campoSubTitulo");
    obj.edit98:setHeight(30);
    obj.edit98:setName("edit98");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout141);
    obj.textEditor1:setFontSize(14);
    obj.textEditor1:setAlign("top");
    obj.textEditor1:setField("campoTextoGrande");
    obj.textEditor1:setHeight(100);
    obj.textEditor1:setName("textEditor1");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.scrollBox3);
    obj.layout142:setLeft(10);
    obj.layout142:setTop(510);
    obj.layout142:setHeight(25);
    obj.layout142:setWidth(200);
    obj.layout142:setName("layout142");

    obj.label182 = GUI.fromHandle(_obj_newObject("label"));
    obj.label182:setParent(obj.layout142);
    obj.label182:setAlign("left");
    obj.label182:setText("Dólares: ");
    obj.label182:setAutoSize(true);
    obj.label182:setName("label182");
    lfm_setPropAsString(obj.label182, "fontStyle",  "bold");
    obj.label182:setFontSize(14);

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.layout142);
    obj.edit99:setAlign("client");
    obj.edit99:setHorzTextAlign("center");
    obj.edit99:setField("dinheiro");
    obj.edit99:setName("edit99");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.scrollBox3);
    obj.layout143:setLeft(250);
    obj.layout143:setTop(510);
    obj.layout143:setHeight(25);
    obj.layout143:setWidth(200);
    obj.layout143:setName("layout143");

    obj.label183 = GUI.fromHandle(_obj_newObject("label"));
    obj.label183:setParent(obj.layout143);
    obj.label183:setAlign("left");
    obj.label183:setText("Tibares: ");
    obj.label183:setAutoSize(true);
    obj.label183:setName("label183");
    lfm_setPropAsString(obj.label183, "fontStyle",  "bold");
    obj.label183:setFontSize(14);

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.layout143);
    obj.edit100:setAlign("client");
    obj.edit100:setHorzTextAlign("center");
    obj.edit100:setField("tibardinheiro");
    obj.edit100:setName("edit100");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Magias, Poderes e Talentos");
    obj.tab4:setName("tab4");

    obj.frmPoderesMagias = GUI.fromHandle(_obj_newObject("form"));
    obj.frmPoderesMagias:setParent(obj.tab4);
    obj.frmPoderesMagias:setName("frmPoderesMagias");
    obj.frmPoderesMagias:setTheme("dark");
    obj.frmPoderesMagias:setAlign("client");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.frmPoderesMagias);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.frmPoderesMagias);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.scrollBox5);
    obj.layout144:setAlign("top");
    obj.layout144:setHeight(30);
    obj.layout144:setMargins({bottom=4});
    obj.layout144:setName("layout144");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.layout144);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.label184 = GUI.fromHandle(_obj_newObject("label"));
    obj.label184:setParent(obj.scrollBox6);
    obj.label184:setLeft(315);
    obj.label184:setTop(1);
    obj.label184:setWidth(900);
    obj.label184:setHeight(20);
    obj.label184:setText("Dar ENTER nas descrições e titulos para salvar. Legenda: [P] Poderes, [D] Domínio, [T] Talentos, [M] Magias");
    obj.label184:setName("label184");
    lfm_setPropAsString(obj.label184, "fontStyle",  "bold");
    obj.label184:setFontSize(14);

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox6);
    obj.button3:setText("Criar Novo Poder/Magia/Talento");
    obj.button3:setWidth(300);
    obj.button3:setAlign("left");
    obj.button3:setName("button3");

    obj.rcllistaMagias = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rcllistaMagias:setParent(obj.scrollBox5);
    obj.rcllistaMagias:setName("rcllistaMagias");
    obj.rcllistaMagias:setField("campoDaMagia");
    obj.rcllistaMagias:setTemplateForm("frmlistaMagias");
    obj.rcllistaMagias:setAlign("top");
    obj.rcllistaMagias:setSelectable(true);
    obj.rcllistaMagias:setLayout("horizontal");
    obj.rcllistaMagias:setHeight(150);
    obj.rcllistaMagias:setWidth(300);

    obj.boxDestalhesDaMagia = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDestalhesDaMagia:setParent(obj.scrollBox5);
    obj.boxDestalhesDaMagia:setName("boxDestalhesDaMagia");
    obj.boxDestalhesDaMagia:setVisible(false);
    obj.boxDestalhesDaMagia:setAlign("client");
    obj.boxDestalhesDaMagia:setMargins({left=4, right=4, top=2});

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.boxDestalhesDaMagia);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setXradius(10);
    obj.rectangle7:setYradius(10);
    obj.rectangle7:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle7:setName("rectangle7");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.rectangle7);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.scrollBox7);
    obj.layout145:setAlign("top");
    obj.layout145:setHeight(30);
    obj.layout145:setMargins({bottom=4});
    obj.layout145:setName("layout145");

    obj.label185 = GUI.fromHandle(_obj_newObject("label"));
    obj.label185:setParent(obj.layout145);
    obj.label185:setAlign("left");
    obj.label185:setText("Nome:");
    obj.label185:setAutoSize(true);
    obj.label185:setName("label185");
    lfm_setPropAsString(obj.label185, "fontStyle",  "bold");
    obj.label185:setFontSize(14);

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.layout145);
    obj.edit101:setAlign("client");
    obj.edit101:setField("campoTitulo");
    obj.edit101:setName("edit101");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.scrollBox7);
    obj.layout146:setAlign("top");
    obj.layout146:setHeight(200);
    obj.layout146:setWidth(400);
    obj.layout146:setName("layout146");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout146);
    obj.image3:setAlign("left");
    obj.image3:setEditable(true);
    obj.image3:setField("campoURLImagem");
    lfm_setPropAsString(obj.image3, "animate",  "true");
    obj.image3:setWidth(400);
    obj.image3:setName("image3");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.layout146);
    obj.layout147:setAlign("client");
    obj.layout147:setMargins({left=2});
    obj.layout147:setName("layout147");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.layout147);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.scrollBox8);
    obj.edit102:setAlign("top");
    obj.edit102:setField("campoSubTitulo");
    obj.edit102:setHeight(30);
    obj.edit102:setName("edit102");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.scrollBox8);
    obj.textEditor2:setAlign("top");
    obj.textEditor2:setField("campoTextoGrande");
    obj.textEditor2:setFontSize(14);
    obj.textEditor2:setHeight(800);
    obj.textEditor2:setName("textEditor2");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Magias de Esferas");
    obj.tab5:setName("tab5");

    obj.frmEsferasMagias = GUI.fromHandle(_obj_newObject("form"));
    obj.frmEsferasMagias:setParent(obj.tab5);
    obj.frmEsferasMagias:setName("frmEsferasMagias");
    obj.frmEsferasMagias:setTheme("dark");
    obj.frmEsferasMagias:setAlign("client");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.frmEsferasMagias);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setName("rectangle8");

    obj.scrollBox9 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.frmEsferasMagias);
    obj.scrollBox9:setAlign("client");
    obj.scrollBox9:setName("scrollBox9");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.scrollBox9);
    obj.layout148:setAlign("top");
    obj.layout148:setHeight(30);
    obj.layout148:setMargins({bottom=4});
    obj.layout148:setName("layout148");

    obj.scrollBox10 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.layout148);
    obj.scrollBox10:setAlign("client");
    obj.scrollBox10:setName("scrollBox10");

    obj.label186 = GUI.fromHandle(_obj_newObject("label"));
    obj.label186:setParent(obj.scrollBox10);
    obj.label186:setLeft(315);
    obj.label186:setTop(1);
    obj.label186:setWidth(900);
    obj.label186:setHeight(20);
    obj.label186:setText("Dar ENTER nas descrições e titulos para salvar. Legenda: [Nome Esfera] [Nível] [Desc da Magia]");
    obj.label186:setName("label186");
    lfm_setPropAsString(obj.label186, "fontStyle",  "bold");
    obj.label186:setFontSize(14);

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox10);
    obj.button4:setText("Criar Nova Magia de Esfera");
    obj.button4:setWidth(300);
    obj.button4:setAlign("left");
    obj.button4:setName("button4");

    obj.rcllistaEsfera = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rcllistaEsfera:setParent(obj.scrollBox9);
    obj.rcllistaEsfera:setName("rcllistaEsfera");
    obj.rcllistaEsfera:setField("campoDaEsfera");
    obj.rcllistaEsfera:setTemplateForm("frmlistaEsferas");
    obj.rcllistaEsfera:setAlign("top");
    obj.rcllistaEsfera:setSelectable(true);
    obj.rcllistaEsfera:setLayout("horizontal");
    obj.rcllistaEsfera:setHeight(150);
    obj.rcllistaEsfera:setWidth(300);

    obj.boxDetalhedaEsfera = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhedaEsfera:setParent(obj.scrollBox9);
    obj.boxDetalhedaEsfera:setName("boxDetalhedaEsfera");
    obj.boxDetalhedaEsfera:setVisible(false);
    obj.boxDetalhedaEsfera:setAlign("client");
    obj.boxDetalhedaEsfera:setMargins({left=4, right=4, top=2});

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.boxDetalhedaEsfera);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setXradius(10);
    obj.rectangle9:setYradius(10);
    obj.rectangle9:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle9:setName("rectangle9");

    obj.scrollBox11 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.rectangle9);
    obj.scrollBox11:setAlign("client");
    obj.scrollBox11:setName("scrollBox11");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.scrollBox11);
    obj.layout149:setAlign("top");
    obj.layout149:setHeight(30);
    obj.layout149:setMargins({bottom=4});
    obj.layout149:setName("layout149");

    obj.label187 = GUI.fromHandle(_obj_newObject("label"));
    obj.label187:setParent(obj.layout149);
    obj.label187:setAlign("left");
    obj.label187:setText("Nome:");
    obj.label187:setAutoSize(true);
    obj.label187:setName("label187");
    lfm_setPropAsString(obj.label187, "fontStyle",  "bold");
    obj.label187:setFontSize(14);

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.layout149);
    obj.edit103:setAlign("client");
    obj.edit103:setField("campoTitulo");
    obj.edit103:setName("edit103");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout149);
    obj.button5:setAlign("right");
    obj.button5:setText("Apagar!");
    obj.button5:setMargins({left=4, right=4, top=2, bottom=2});
    obj.button5:setWidth(150);
    obj.button5:setName("button5");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.scrollBox11);
    obj.layout150:setAlign("top");
    obj.layout150:setHeight(200);
    obj.layout150:setWidth(400);
    obj.layout150:setName("layout150");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout150);
    obj.image4:setAlign("left");
    obj.image4:setEditable(true);
    obj.image4:setField("campoURLImagem");
    lfm_setPropAsString(obj.image4, "animate",  "true");
    obj.image4:setWidth(400);
    obj.image4:setName("image4");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.layout150);
    obj.layout151:setAlign("client");
    obj.layout151:setMargins({left=2});
    obj.layout151:setName("layout151");

    obj.scrollBox12 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox12:setParent(obj.layout151);
    obj.scrollBox12:setAlign("client");
    obj.scrollBox12:setName("scrollBox12");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.scrollBox12);
    obj.edit104:setAlign("top");
    obj.edit104:setField("campoSubTitulo");
    obj.edit104:setHeight(30);
    obj.edit104:setName("edit104");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.scrollBox12);
    obj.textEditor3:setAlign("top");
    obj.textEditor3:setField("campoTextoGrande");
    obj.textEditor3:setFontSize(14);
    obj.textEditor3:setHeight(800);
    obj.textEditor3:setName("textEditor3");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Background, Personalidade e Anotações");
    obj.tab6:setName("tab6");

    obj.frmPersonagemSobre = GUI.fromHandle(_obj_newObject("form"));
    obj.frmPersonagemSobre:setParent(obj.tab6);
    obj.frmPersonagemSobre:setName("frmPersonagemSobre");
    obj.frmPersonagemSobre:setAlign("client");

    obj.scrollBox13 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox13:setParent(obj.frmPersonagemSobre);
    obj.scrollBox13:setAlign("client");
    obj.scrollBox13:setName("scrollBox13");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.scrollBox13);
    obj.layout152:setLeft(0);
    obj.layout152:setTop(0);
    obj.layout152:setWidth(410);
    obj.layout152:setHeight(400);
    obj.layout152:setName("layout152");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout152);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.scrollBox14 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox14:setParent(obj.layout152);
    obj.scrollBox14:setAlign("client");
    obj.scrollBox14:setName("scrollBox14");

    obj.label188 = GUI.fromHandle(_obj_newObject("label"));
    obj.label188:setParent(obj.scrollBox14);
    obj.label188:setLeft(5);
    obj.label188:setTop(1);
    obj.label188:setWidth(300);
    obj.label188:setHeight(20);
    obj.label188:setText("CARACTERÍSTICAS FÍSICAS E PSICOLÓGICAS");
    obj.label188:setName("label188");
    lfm_setPropAsString(obj.label188, "fontStyle",  "bold");
    obj.label188:setFontSize(14);

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.scrollBox14);
    obj.textEditor4:setFontSize(14);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(25);
    obj.textEditor4:setWidth(400);
    obj.textEditor4:setHeight(350);
    obj.textEditor4:setField("personalidade");
    obj.textEditor4:setName("textEditor4");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.scrollBox13);
    obj.layout153:setLeft(0);
    obj.layout153:setTop(380);
    obj.layout153:setWidth(410);
    obj.layout153:setHeight(400);
    obj.layout153:setName("layout153");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout153);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setName("rectangle11");

    obj.scrollBox15 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox15:setParent(obj.layout153);
    obj.scrollBox15:setAlign("client");
    obj.scrollBox15:setName("scrollBox15");

    obj.label189 = GUI.fromHandle(_obj_newObject("label"));
    obj.label189:setParent(obj.scrollBox15);
    obj.label189:setLeft(5);
    obj.label189:setTop(1);
    obj.label189:setWidth(200);
    obj.label189:setHeight(20);
    obj.label189:setText("ANOTAÇÕES EXTRAS");
    obj.label189:setName("label189");
    lfm_setPropAsString(obj.label189, "fontStyle",  "bold");
    obj.label189:setFontSize(14);

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.scrollBox15);
    obj.textEditor5:setFontSize(14);
    obj.textEditor5:setLeft(5);
    obj.textEditor5:setTop(25);
    obj.textEditor5:setWidth(400);
    obj.textEditor5:setHeight(350);
    obj.textEditor5:setField("anotacoes1");
    obj.textEditor5:setName("textEditor5");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.scrollBox13);
    obj.layout154:setLeft(410);
    obj.layout154:setTop(0);
    obj.layout154:setWidth(900);
    obj.layout154:setHeight(400);
    obj.layout154:setName("layout154");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout154);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setName("rectangle12");

    obj.label190 = GUI.fromHandle(_obj_newObject("label"));
    obj.label190:setParent(obj.layout154);
    obj.label190:setLeft(5);
    obj.label190:setTop(1);
    obj.label190:setWidth(100);
    obj.label190:setHeight(20);
    obj.label190:setText("HISTORIA");
    obj.label190:setName("label190");
    lfm_setPropAsString(obj.label190, "fontStyle",  "bold");
    obj.label190:setFontSize(14);

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout154);
    obj.richEdit1:setLeft(5);
    obj.richEdit1:setTop(25);
    obj.richEdit1:setWidth(850);
    obj.richEdit1:setHeight(350);
    obj.richEdit1:setField("background");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setName("richEdit1");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.scrollBox13);
    obj.layout155:setLeft(410);
    obj.layout155:setTop(380);
    obj.layout155:setWidth(900);
    obj.layout155:setHeight(400);
    obj.layout155:setName("layout155");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout155);
    obj.rectangle13:setAlign("client");
    obj.rectangle13:setColor("black");
    obj.rectangle13:setName("rectangle13");

    obj.scrollBox16 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox16:setParent(obj.layout155);
    obj.scrollBox16:setAlign("client");
    obj.scrollBox16:setName("scrollBox16");

    obj.label191 = GUI.fromHandle(_obj_newObject("label"));
    obj.label191:setParent(obj.scrollBox16);
    obj.label191:setLeft(5);
    obj.label191:setTop(1);
    obj.label191:setWidth(600);
    obj.label191:setHeight(20);
    obj.label191:setText("ANOTAÇÕES SOBRE DESENVOLVIMENTO DA PERSONAGEM");
    obj.label191:setName("label191");
    lfm_setPropAsString(obj.label191, "fontStyle",  "bold");
    obj.label191:setFontSize(14);

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.scrollBox16);
    obj.textEditor6:setFontSize(14);
    obj.textEditor6:setLeft(5);
    obj.textEditor6:setTop(25);
    obj.textEditor6:setWidth(850);
    obj.textEditor6:setHeight(350);
    obj.textEditor6:setField("anotacoes2");
    obj.textEditor6:setName("textEditor6");

    obj.tab7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tabControl1);
    obj.tab7:setTitle("Histórico de Modificações para o Personagem");
    obj.tab7:setName("tab7");

    obj.frmhistoricodeModificacoes = GUI.fromHandle(_obj_newObject("form"));
    obj.frmhistoricodeModificacoes:setParent(obj.tab7);
    obj.frmhistoricodeModificacoes:setName("frmhistoricodeModificacoes");
    obj.frmhistoricodeModificacoes:setAlign("client");

    obj.scrollBox17 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox17:setParent(obj.frmhistoricodeModificacoes);
    obj.scrollBox17:setAlign("client");
    obj.scrollBox17:setName("scrollBox17");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.scrollBox17);
    obj.layout156:setLeft(0);
    obj.layout156:setTop(0);
    obj.layout156:setWidth(1366);
    obj.layout156:setHeight(768);
    obj.layout156:setName("layout156");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout156);
    obj.rectangle14:setAlign("client");
    obj.rectangle14:setColor("black");
    obj.rectangle14:setName("rectangle14");

    obj.label192 = GUI.fromHandle(_obj_newObject("label"));
    obj.label192:setParent(obj.layout156);
    obj.label192:setLeft(5);
    obj.label192:setTop(1);
    obj.label192:setWidth(300);
    obj.label192:setHeight(20);
    obj.label192:setText("Historico de Modificações do Personagem");
    obj.label192:setName("label192");
    lfm_setPropAsString(obj.label192, "fontStyle",  "bold");
    obj.label192:setFontSize(14);

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.layout156);
    obj.richEdit2:setLeft(5);
    obj.richEdit2:setTop(25);
    obj.richEdit2:setWidth(1280);
    obj.richEdit2:setHeight(720);
    obj.richEdit2:setField("background");
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit2, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    obj.richEdit2:setName("richEdit2");

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

    obj._e_event12 = obj.button2:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclListaDosItens:append();
        end, obj);

    obj._e_event13 = obj.rclListaDosItens:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                                  --]]                      
                                  local node = self.rclListaDosItens.selectedNode; 
                                         self.boxDetalhesDoItem.node = node;                       
                                  -- a caixa de detalhe só ficará visível se houver item selecionado
                                          self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event14 = obj.rclListaDosItens:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return utils.compareStringPtBr(nodeA.campoTitulo, nodeB.campoTitulo);
        end, obj);

    obj._e_event15 = obj.button3:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rcllistaMagias:append();
        end, obj);

    obj._e_event16 = obj.rcllistaMagias:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                                  --]]                      
                                  local node = self.rcllistaMagias.selectedNode; 
                                         self.boxDestalhesDaMagia.node = node;                       
                                  -- a caixa de detalhe só ficará visível se houver item selecionado
                                          self.boxDestalhesDaMagia.visible = (node ~= nil);
        end, obj);

    obj._e_event17 = obj.rcllistaMagias:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return utils.compareStringPtBr(nodeA.campoTitulo, nodeB.campoTitulo);
        end, obj);

    obj._e_event18 = obj.button4:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rcllistaEsfera:append();
        end, obj);

    obj._e_event19 = obj.rcllistaEsfera:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                                  --]]                      
                                  local node = self.rcllistaEsfera.selectedNode; 
                                         self.boxDetalhedaEsfera.node = node;                       
                                  -- a caixa de detalhe só ficará visível se houver item selecionado
                                          self.boxDetalhedaEsfera.visible = (node ~= nil);
        end, obj);

    obj._e_event20 = obj.rcllistaEsfera:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return utils.compareStringPtBr(nodeA.campoTitulo, nodeB.campoTitulo);
        end, obj);

    obj._e_event21 = obj.button5:addEventListener("onClick",
        function (_)
            ndb.deleteNode(self.boxDetalhedaEsfera.node);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
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
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.boxDetalhedaEsfera ~= nil then self.boxDetalhedaEsfera:destroy(); self.boxDetalhedaEsfera = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.label192 ~= nil then self.label192:destroy(); self.label192 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.label186 ~= nil then self.label186:destroy(); self.label186 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.frmFrente ~= nil then self.frmFrente:destroy(); self.frmFrente = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label176 ~= nil then self.label176:destroy(); self.label176 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.label184 ~= nil then self.label184:destroy(); self.label184 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.frmPersonagemSobre ~= nil then self.frmPersonagemSobre:destroy(); self.frmPersonagemSobre = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.label170 ~= nil then self.label170:destroy(); self.label170 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.label185 ~= nil then self.label185:destroy(); self.label185 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.scrollBox12 ~= nil then self.scrollBox12:destroy(); self.scrollBox12 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.label181 ~= nil then self.label181:destroy(); self.label181 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label175 ~= nil then self.label175:destroy(); self.label175 = nil; end;
        if self.frmPoderesMagias ~= nil then self.frmPoderesMagias:destroy(); self.frmPoderesMagias = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.scrollBox17 ~= nil then self.scrollBox17:destroy(); self.scrollBox17 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label188 ~= nil then self.label188:destroy(); self.label188 = nil; end;
        if self.scrollBox15 ~= nil then self.scrollBox15:destroy(); self.scrollBox15 = nil; end;
        if self.scrollBox13 ~= nil then self.scrollBox13:destroy(); self.scrollBox13 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.label177 ~= nil then self.label177:destroy(); self.label177 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.boxDestalhesDaMagia ~= nil then self.boxDestalhesDaMagia:destroy(); self.boxDestalhesDaMagia = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.rcllistaMagias ~= nil then self.rcllistaMagias:destroy(); self.rcllistaMagias = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label190 ~= nil then self.label190:destroy(); self.label190 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.scrollBox16 ~= nil then self.scrollBox16:destroy(); self.scrollBox16 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.frmEquipamentos ~= nil then self.frmEquipamentos:destroy(); self.frmEquipamentos = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.label191 ~= nil then self.label191:destroy(); self.label191 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.label182 ~= nil then self.label182:destroy(); self.label182 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.frmhistoricodeModificacoes ~= nil then self.frmhistoricodeModificacoes:destroy(); self.frmhistoricodeModificacoes = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.frmEsferasMagias ~= nil then self.frmEsferasMagias:destroy(); self.frmEsferasMagias = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.label171 ~= nil then self.label171:destroy(); self.label171 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.label178 ~= nil then self.label178:destroy(); self.label178 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label179 ~= nil then self.label179:destroy(); self.label179 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label174 ~= nil then self.label174:destroy(); self.label174 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.label173 ~= nil then self.label173:destroy(); self.label173 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.rcllistaEsfera ~= nil then self.rcllistaEsfera:destroy(); self.rcllistaEsfera = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label189 ~= nil then self.label189:destroy(); self.label189 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.scrollBox14 ~= nil then self.scrollBox14:destroy(); self.scrollBox14 = nil; end;
        if self.label180 ~= nil then self.label180:destroy(); self.label180 = nil; end;
        if self.label172 ~= nil then self.label172:destroy(); self.label172 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.frmAtributosPericias ~= nil then self.frmAtributosPericias:destroy(); self.frmAtributosPericias = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.label187 ~= nil then self.label187:destroy(); self.label187 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.label183 ~= nil then self.label183:destroy(); self.label183 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmAlvorecerT20()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmAlvorecerT20();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmAlvorecerT20 = {
    newEditor = newfrmAlvorecerT20, 
    new = newfrmAlvorecerT20, 
    name = "frmAlvorecerT20", 
    dataType = "Alvorecer_Tormenta_20", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Alvorecer Tormenta 20", 
    description=""};

frmAlvorecerT20 = _frmAlvorecerT20;
Firecast.registrarForm(_frmAlvorecerT20);
Firecast.registrarDataType(_frmAlvorecerT20);

return _frmAlvorecerT20;
