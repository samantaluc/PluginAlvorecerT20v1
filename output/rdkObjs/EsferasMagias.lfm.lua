require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmEsferasMagias()
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
    obj:setName("frmEsferasMagias");
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
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({bottom=4});
    obj.layout1:setName("layout1");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.layout1);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox2);
    obj.label1:setLeft(315);
    obj.label1:setTop(1);
    obj.label1:setWidth(900);
    obj.label1:setHeight(20);
    obj.label1:setText("Dar ENTER nas descrições e titulos para salvar. Legenda: [Nome Esfera] [Nível] [Desc da Magia]");
    obj.label1:setName("label1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox2);
    obj.button1:setText("Criar Nova Magia de Esfera");
    obj.button1:setWidth(300);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");

    obj.rcllistaEsfera = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rcllistaEsfera:setParent(obj.scrollBox1);
    obj.rcllistaEsfera:setName("rcllistaEsfera");
    obj.rcllistaEsfera:setField("campoDaEsfera");
    obj.rcllistaEsfera:setTemplateForm("frmlistaEsferas");
    obj.rcllistaEsfera:setAlign("top");
    obj.rcllistaEsfera:setSelectable(true);
    obj.rcllistaEsfera:setLayout("horizontal");
    obj.rcllistaEsfera:setHeight(150);
    obj.rcllistaEsfera:setWidth(300);

    obj.boxDetalhedaEsfera = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhedaEsfera:setParent(obj.scrollBox1);
    obj.boxDetalhedaEsfera:setName("boxDetalhedaEsfera");
    obj.boxDetalhedaEsfera:setVisible(false);
    obj.boxDetalhedaEsfera:setAlign("client");
    obj.boxDetalhedaEsfera:setMargins({left=4, right=4, top=2});

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.boxDetalhedaEsfera);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle2:setName("rectangle2");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle2);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox3);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(30);
    obj.layout2:setMargins({bottom=4});
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setAlign("left");
    obj.label2:setText("Nome:");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setAlign("client");
    obj.edit1:setField("campoTitulo");
    obj.edit1:setName("edit1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout2);
    obj.button2:setAlign("right");
    obj.button2:setText("Apagar!");
    obj.button2:setMargins({left=4, right=4, top=2, bottom=2});
    obj.button2:setWidth(150);
    obj.button2:setName("button2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox3);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(200);
    obj.layout3:setWidth(400);
    obj.layout3:setName("layout3");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout3);
    obj.image1:setAlign("left");
    obj.image1:setEditable(true);
    obj.image1:setField("campoURLImagem");
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setWidth(400);
    obj.image1:setName("image1");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setAlign("client");
    obj.layout4:setMargins({left=2});
    obj.layout4:setName("layout4");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.layout4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.scrollBox4);
    obj.edit2:setAlign("top");
    obj.edit2:setField("campoSubTitulo");
    obj.edit2:setHeight(30);
    obj.edit2:setName("edit2");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.scrollBox4);
    obj.textEditor1:setAlign("top");
    obj.textEditor1:setField("campoTextoGrande");
    obj.textEditor1:setFontSize(14);
    obj.textEditor1:setHeight(800);
    obj.textEditor1:setName("textEditor1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rcllistaEsfera:append();
        end, obj);

    obj._e_event1 = obj.rcllistaEsfera:addEventListener("onSelect",
        function (_)
            --[[
                                    Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
                                  --]]                      
                                  local node = self.rcllistaEsfera.selectedNode; 
                                         self.boxDetalhedaEsfera.node = node;                       
                                  -- a caixa de detalhe só ficará visível se houver item selecionado
                                          self.boxDetalhedaEsfera.visible = (node ~= nil);
        end, obj);

    obj._e_event2 = obj.rcllistaEsfera:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return utils.compareStringPtBr(nodeA.campoTitulo, nodeB.campoTitulo);
        end, obj);

    obj._e_event3 = obj.button2:addEventListener("onClick",
        function (_)
            ndb.deleteNode(self.boxDetalhedaEsfera.node);
        end, obj);

    function obj:_releaseEvents()
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

        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rcllistaEsfera ~= nil then self.rcllistaEsfera:destroy(); self.rcllistaEsfera = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.boxDetalhedaEsfera ~= nil then self.boxDetalhedaEsfera:destroy(); self.boxDetalhedaEsfera = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmEsferasMagias()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmEsferasMagias();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmEsferasMagias = {
    newEditor = newfrmEsferasMagias, 
    new = newfrmEsferasMagias, 
    name = "frmEsferasMagias", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmEsferasMagias = _frmEsferasMagias;
Firecast.registrarForm(_frmEsferasMagias);

return _frmEsferasMagias;
