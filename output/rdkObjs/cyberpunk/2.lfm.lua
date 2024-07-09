require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmcyberpunk2_svg()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

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
    obj:setName("frmcyberpunk2_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1728);
    obj.rectangle1:setHeight(972);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1728);
    obj.image1:setHeight(972);
    obj.image1:setSRC("/cyberpunk/images/2.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(32);
    obj.layout1:setTop(45);
    obj.layout1:setWidth(823);
    obj.layout1:setHeight(23);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(8.6);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(823);
    obj.edit1:setHeight(24);
    obj.edit1:setField("ALIADOS");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(32);
    obj.layout2:setTop(86);
    obj.layout2:setWidth(180);
    obj.layout2:setHeight(23);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(8.6);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(180);
    obj.edit2:setHeight(24);
    obj.edit2:setField("PONTOS_DE_EXPERIÊNCIA");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(216);
    obj.layout3:setTop(86);
    obj.layout3:setWidth(180);
    obj.layout3:setHeight(23);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(8.6);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(180);
    obj.edit3:setHeight(24);
    obj.edit3:setField("PONTOS_DE_EXPERIÊNCIA_TOTAIS");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(32);
    obj.layout4:setTop(126);
    obj.layout4:setWidth(364);
    obj.layout4:setHeight(23);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(8.6);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(364);
    obj.edit4:setHeight(24);
    obj.edit4:setField("REPUTAÇÃO");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(401);
    obj.layout5:setTop(93.2);
    obj.layout5:setWidth(454);
    obj.layout5:setHeight(55.8);
    obj.layout5:setName("layout5");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout5);
    obj.textEditor1:setLeft(0);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(454);
    obj.textEditor1:setHeight(55.8);
    obj.textEditor1:setFontSize(8.6);
    obj.textEditor1:setFontColor("#000000");
    obj.textEditor1:setField("EVENTOS_DE_REPUTAÇÃO");
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setName("textEditor1");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(32);
    obj.layout6:setTop(219.2);
    obj.layout6:setWidth(409);
    obj.layout6:setHeight(33.8);
    obj.layout6:setName("layout6");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout6);
    obj.textEditor2:setLeft(0);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(409);
    obj.textEditor2:setHeight(33.8);
    obj.textEditor2:setFontSize(8.6);
    obj.textEditor2:setFontColor("#000000");
    obj.textEditor2:setField("ORIGENS_CULTURAIS");
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setName("textEditor2");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(446);
    obj.layout7:setTop(219.2);
    obj.layout7:setWidth(409);
    obj.layout7:setHeight(33.8);
    obj.layout7:setName("layout7");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout7);
    obj.textEditor3:setLeft(0);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(409);
    obj.textEditor3:setHeight(33.8);
    obj.textEditor3:setFontSize(8.6);
    obj.textEditor3:setFontColor("#000000");
    obj.textEditor3:setField("PERSONALIDADE");
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setName("textEditor3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(32);
    obj.layout8:setTop(277.2);
    obj.layout8:setWidth(409);
    obj.layout8:setHeight(33.8);
    obj.layout8:setName("layout8");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout8);
    obj.textEditor4:setLeft(0);
    obj.textEditor4:setTop(0);
    obj.textEditor4:setWidth(409);
    obj.textEditor4:setHeight(33.8);
    obj.textEditor4:setFontSize(8.6);
    obj.textEditor4:setFontColor("#000000");
    obj.textEditor4:setField("ESTILO_DAS_ROUPAS");
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setName("textEditor4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(446);
    obj.layout9:setTop(277.2);
    obj.layout9:setWidth(409);
    obj.layout9:setHeight(33.8);
    obj.layout9:setName("layout9");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout9);
    obj.textEditor5:setLeft(0);
    obj.textEditor5:setTop(0);
    obj.textEditor5:setWidth(409);
    obj.textEditor5:setHeight(33.8);
    obj.textEditor5:setFontSize(8.6);
    obj.textEditor5:setFontColor("#000000");
    obj.textEditor5:setField("ESTILO_DO_CABELO");
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setName("textEditor5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(32);
    obj.layout10:setTop(336.2);
    obj.layout10:setWidth(409);
    obj.layout10:setHeight(33.8);
    obj.layout10:setName("layout10");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout10);
    obj.textEditor6:setLeft(0);
    obj.textEditor6:setTop(0);
    obj.textEditor6:setWidth(409);
    obj.textEditor6:setHeight(33.8);
    obj.textEditor6:setFontSize(8.6);
    obj.textEditor6:setFontColor("#000000");
    obj.textEditor6:setField("O_QUE_VOCÊ_MAIS_VALORIZA_");
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setName("textEditor6");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(446);
    obj.layout11:setTop(336.2);
    obj.layout11:setWidth(409);
    obj.layout11:setHeight(33.8);
    obj.layout11:setName("layout11");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout11);
    obj.textEditor7:setLeft(0);
    obj.textEditor7:setTop(0);
    obj.textEditor7:setWidth(409);
    obj.textEditor7:setHeight(33.8);
    obj.textEditor7:setFontSize(8.6);
    obj.textEditor7:setFontColor("#000000");
    obj.textEditor7:setField("QUAL_A_SUA_OPINIAO_EM_RELAÇÃO_A_MAIORIA_DAS_PESSOAS_");
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setName("textEditor7");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(32);
    obj.layout12:setTop(394.2);
    obj.layout12:setWidth(409);
    obj.layout12:setHeight(33.8);
    obj.layout12:setName("layout12");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout12);
    obj.textEditor8:setLeft(0);
    obj.textEditor8:setTop(0);
    obj.textEditor8:setWidth(409);
    obj.textEditor8:setHeight(33.8);
    obj.textEditor8:setFontSize(8.6);
    obj.textEditor8:setFontColor("#000000");
    obj.textEditor8:setField("PESSOA_QUE_MAIS_VALORIZA");
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setName("textEditor8");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(446);
    obj.layout13:setTop(394.2);
    obj.layout13:setWidth(409);
    obj.layout13:setHeight(33.8);
    obj.layout13:setName("layout13");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout13);
    obj.textEditor9:setLeft(0);
    obj.textEditor9:setTop(0);
    obj.textEditor9:setWidth(409);
    obj.textEditor9:setHeight(33.8);
    obj.textEditor9:setFontSize(8.6);
    obj.textEditor9:setFontColor("#000000");
    obj.textEditor9:setField("OBJETO_QUE_MAIS_VALORIZA");
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setName("textEditor9");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(32);
    obj.layout14:setTop(453.2);
    obj.layout14:setWidth(409);
    obj.layout14:setHeight(33.8);
    obj.layout14:setName("layout14");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout14);
    obj.textEditor10:setLeft(0);
    obj.textEditor10:setTop(0);
    obj.textEditor10:setWidth(409);
    obj.textEditor10:setHeight(33.8);
    obj.textEditor10:setFontSize(8.6);
    obj.textEditor10:setFontColor("#000000");
    obj.textEditor10:setField("ANTECENDENTE_FAMILIAR");
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setName("textEditor10");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(446);
    obj.layout15:setTop(453.2);
    obj.layout15:setWidth(409);
    obj.layout15:setHeight(33.8);
    obj.layout15:setName("layout15");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout15);
    obj.textEditor11:setLeft(0);
    obj.textEditor11:setTop(0);
    obj.textEditor11:setWidth(409);
    obj.textEditor11:setHeight(33.8);
    obj.textEditor11:setFontSize(8.6);
    obj.textEditor11:setFontColor("#000000");
    obj.textEditor11:setField("AMBIENTE_DA_SUA_INFÂNCIA");
    obj.textEditor11:setTransparent(true);
    obj.textEditor11:setName("textEditor11");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(32);
    obj.layout16:setTop(511.2);
    obj.layout16:setWidth(409);
    obj.layout16:setHeight(33.8);
    obj.layout16:setName("layout16");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout16);
    obj.textEditor12:setLeft(0);
    obj.textEditor12:setTop(0);
    obj.textEditor12:setWidth(409);
    obj.textEditor12:setHeight(33.8);
    obj.textEditor12:setFontSize(8.6);
    obj.textEditor12:setFontColor("#000000");
    obj.textEditor12:setField("TRAGÉDIA_FAMILIAR");
    obj.textEditor12:setTransparent(true);
    obj.textEditor12:setName("textEditor12");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(446);
    obj.layout17:setTop(511.2);
    obj.layout17:setWidth(409);
    obj.layout17:setHeight(33.8);
    obj.layout17:setName("layout17");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout17);
    obj.textEditor13:setLeft(0);
    obj.textEditor13:setTop(0);
    obj.textEditor13:setWidth(409);
    obj.textEditor13:setHeight(33.8);
    obj.textEditor13:setFontSize(8.6);
    obj.textEditor13:setFontColor("#000000");
    obj.textEditor13:setField("OBJETIVO_DE_VIDA");
    obj.textEditor13:setTransparent(true);
    obj.textEditor13:setName("textEditor13");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(72);
    obj.layout18:setTop(579.2);
    obj.layout18:setWidth(369);
    obj.layout18:setHeight(46.8);
    obj.layout18:setName("layout18");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.layout18);
    obj.textEditor14:setLeft(0);
    obj.textEditor14:setTop(0);
    obj.textEditor14:setWidth(369);
    obj.textEditor14:setHeight(46.8);
    obj.textEditor14:setFontSize(8.6);
    obj.textEditor14:setFontColor("#000000");
    obj.textEditor14:setField("AMIGOS_1");
    obj.textEditor14:setTransparent(true);
    obj.textEditor14:setName("textEditor14");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(72);
    obj.layout19:setTop(637.2);
    obj.layout19:setWidth(369);
    obj.layout19:setHeight(46.8);
    obj.layout19:setName("layout19");

    obj.textEditor15 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.layout19);
    obj.textEditor15:setLeft(0);
    obj.textEditor15:setTop(0);
    obj.textEditor15:setWidth(369);
    obj.textEditor15:setHeight(46.8);
    obj.textEditor15:setFontSize(8.6);
    obj.textEditor15:setFontColor("#000000");
    obj.textEditor15:setField("AMIGOS_2");
    obj.textEditor15:setTransparent(true);
    obj.textEditor15:setName("textEditor15");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(72);
    obj.layout20:setTop(696.2);
    obj.layout20:setWidth(369);
    obj.layout20:setHeight(46.8);
    obj.layout20:setName("layout20");

    obj.textEditor16 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor16:setParent(obj.layout20);
    obj.textEditor16:setLeft(0);
    obj.textEditor16:setTop(0);
    obj.textEditor16:setWidth(369);
    obj.textEditor16:setHeight(46.8);
    obj.textEditor16:setFontSize(8.6);
    obj.textEditor16:setFontColor("#000000");
    obj.textEditor16:setField("AMIGOS_3");
    obj.textEditor16:setTransparent(true);
    obj.textEditor16:setName("textEditor16");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(486);
    obj.layout21:setTop(579.2);
    obj.layout21:setWidth(369);
    obj.layout21:setHeight(46.8);
    obj.layout21:setName("layout21");

    obj.textEditor17 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor17:setParent(obj.layout21);
    obj.textEditor17:setLeft(0);
    obj.textEditor17:setTop(0);
    obj.textEditor17:setWidth(369);
    obj.textEditor17:setHeight(46.8);
    obj.textEditor17:setFontSize(8.6);
    obj.textEditor17:setFontColor("#000000");
    obj.textEditor17:setField("AMORES_TRÁGICOS_1");
    obj.textEditor17:setTransparent(true);
    obj.textEditor17:setName("textEditor17");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(486);
    obj.layout22:setTop(637.2);
    obj.layout22:setWidth(369);
    obj.layout22:setHeight(46.8);
    obj.layout22:setName("layout22");

    obj.textEditor18 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor18:setParent(obj.layout22);
    obj.textEditor18:setLeft(0);
    obj.textEditor18:setTop(0);
    obj.textEditor18:setWidth(369);
    obj.textEditor18:setHeight(46.8);
    obj.textEditor18:setFontSize(8.6);
    obj.textEditor18:setFontColor("#000000");
    obj.textEditor18:setField("AMORES_TRÁGICOS_2");
    obj.textEditor18:setTransparent(true);
    obj.textEditor18:setName("textEditor18");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(117);
    obj.layout23:setTop(777.2);
    obj.layout23:setWidth(157);
    obj.layout23:setHeight(46.8);
    obj.layout23:setName("layout23");

    obj.textEditor19 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor19:setParent(obj.layout23);
    obj.textEditor19:setLeft(0);
    obj.textEditor19:setTop(0);
    obj.textEditor19:setWidth(157);
    obj.textEditor19:setHeight(46.8);
    obj.textEditor19:setFontSize(8.6);
    obj.textEditor19:setFontColor("#000000");
    obj.textEditor19:setField("QUEM_1");
    obj.textEditor19:setTransparent(true);
    obj.textEditor19:setName("textEditor19");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(117);
    obj.layout24:setTop(835.2);
    obj.layout24:setWidth(157);
    obj.layout24:setHeight(46.8);
    obj.layout24:setName("layout24");

    obj.textEditor20 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor20:setParent(obj.layout24);
    obj.textEditor20:setLeft(0);
    obj.textEditor20:setTop(0);
    obj.textEditor20:setWidth(157);
    obj.textEditor20:setHeight(46.8);
    obj.textEditor20:setFontSize(8.6);
    obj.textEditor20:setFontColor("#000000");
    obj.textEditor20:setField("QUEM_2");
    obj.textEditor20:setTransparent(true);
    obj.textEditor20:setName("textEditor20");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(117);
    obj.layout25:setTop(894.2);
    obj.layout25:setWidth(157);
    obj.layout25:setHeight(46.8);
    obj.layout25:setName("layout25");

    obj.textEditor21 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor21:setParent(obj.layout25);
    obj.textEditor21:setLeft(0);
    obj.textEditor21:setTop(0);
    obj.textEditor21:setWidth(157);
    obj.textEditor21:setHeight(46.8);
    obj.textEditor21:setFontSize(8.6);
    obj.textEditor21:setFontColor("#000000");
    obj.textEditor21:setField("QUEM_3");
    obj.textEditor21:setTransparent(true);
    obj.textEditor21:setName("textEditor21");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(279);
    obj.layout26:setTop(777.2);
    obj.layout26:setWidth(162);
    obj.layout26:setHeight(46.8);
    obj.layout26:setName("layout26");

    obj.textEditor22 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor22:setParent(obj.layout26);
    obj.textEditor22:setLeft(0);
    obj.textEditor22:setTop(0);
    obj.textEditor22:setWidth(162);
    obj.textEditor22:setHeight(46.8);
    obj.textEditor22:setFontSize(8.6);
    obj.textEditor22:setFontColor("#000000");
    obj.textEditor22:setField("O_QUE_CAUSOU_ISSO__1");
    obj.textEditor22:setTransparent(true);
    obj.textEditor22:setName("textEditor22");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(279);
    obj.layout27:setTop(835.2);
    obj.layout27:setWidth(162);
    obj.layout27:setHeight(46.8);
    obj.layout27:setName("layout27");

    obj.textEditor23 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor23:setParent(obj.layout27);
    obj.textEditor23:setLeft(0);
    obj.textEditor23:setTop(0);
    obj.textEditor23:setWidth(162);
    obj.textEditor23:setHeight(46.8);
    obj.textEditor23:setFontSize(8.6);
    obj.textEditor23:setFontColor("#000000");
    obj.textEditor23:setField("O_QUE_CAUSOU_ISSO__2");
    obj.textEditor23:setTransparent(true);
    obj.textEditor23:setName("textEditor23");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(279);
    obj.layout28:setTop(894.2);
    obj.layout28:setWidth(162);
    obj.layout28:setHeight(46.8);
    obj.layout28:setName("layout28");

    obj.textEditor24 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor24:setParent(obj.layout28);
    obj.textEditor24:setLeft(0);
    obj.textEditor24:setTop(0);
    obj.textEditor24:setWidth(162);
    obj.textEditor24:setHeight(46.8);
    obj.textEditor24:setFontSize(8.6);
    obj.textEditor24:setFontColor("#000000");
    obj.textEditor24:setField("O_QUE_CAUSOU_ISSO__3");
    obj.textEditor24:setTransparent(true);
    obj.textEditor24:setName("textEditor24");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(446);
    obj.layout29:setTop(777.2);
    obj.layout29:setWidth(243);
    obj.layout29:setHeight(46.8);
    obj.layout29:setName("layout29");

    obj.textEditor25 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor25:setParent(obj.layout29);
    obj.textEditor25:setLeft(0);
    obj.textEditor25:setTop(0);
    obj.textEditor25:setWidth(243);
    obj.textEditor25:setHeight(46.8);
    obj.textEditor25:setFontSize(8.6);
    obj.textEditor25:setFontColor("#000000");
    obj.textEditor25:setField("COMO_ELE_A__PODE_TE_CONFRONTAR__1");
    obj.textEditor25:setTransparent(true);
    obj.textEditor25:setName("textEditor25");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(446);
    obj.layout30:setTop(835.2);
    obj.layout30:setWidth(243);
    obj.layout30:setHeight(46.8);
    obj.layout30:setName("layout30");

    obj.textEditor26 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor26:setParent(obj.layout30);
    obj.textEditor26:setLeft(0);
    obj.textEditor26:setTop(0);
    obj.textEditor26:setWidth(243);
    obj.textEditor26:setHeight(46.8);
    obj.textEditor26:setFontSize(8.6);
    obj.textEditor26:setFontColor("#000000");
    obj.textEditor26:setField("COMO_ELE_A__PODE_TE_CONFRONTAR__2");
    obj.textEditor26:setTransparent(true);
    obj.textEditor26:setName("textEditor26");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(446);
    obj.layout31:setTop(894.2);
    obj.layout31:setWidth(243);
    obj.layout31:setHeight(46.8);
    obj.layout31:setName("layout31");

    obj.textEditor27 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor27:setParent(obj.layout31);
    obj.textEditor27:setLeft(0);
    obj.textEditor27:setTop(0);
    obj.textEditor27:setWidth(243);
    obj.textEditor27:setHeight(46.8);
    obj.textEditor27:setFontSize(8.6);
    obj.textEditor27:setFontColor("#000000");
    obj.textEditor27:setField("COMO_ELE_A__PODE_TE_CONFRONTAR__3");
    obj.textEditor27:setTransparent(true);
    obj.textEditor27:setName("textEditor27");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(693);
    obj.layout32:setTop(777.2);
    obj.layout32:setWidth(162);
    obj.layout32:setHeight(46.8);
    obj.layout32:setName("layout32");

    obj.textEditor28 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor28:setParent(obj.layout32);
    obj.textEditor28:setLeft(0);
    obj.textEditor28:setTop(0);
    obj.textEditor28:setWidth(162);
    obj.textEditor28:setHeight(46.8);
    obj.textEditor28:setFontSize(8.6);
    obj.textEditor28:setFontColor("#000000");
    obj.textEditor28:setField("O_QUE_VAI_ACONTECER__1");
    obj.textEditor28:setTransparent(true);
    obj.textEditor28:setName("textEditor28");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(693);
    obj.layout33:setTop(835.2);
    obj.layout33:setWidth(162);
    obj.layout33:setHeight(46.8);
    obj.layout33:setName("layout33");

    obj.textEditor29 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor29:setParent(obj.layout33);
    obj.textEditor29:setLeft(0);
    obj.textEditor29:setTop(0);
    obj.textEditor29:setWidth(162);
    obj.textEditor29:setHeight(46.8);
    obj.textEditor29:setFontSize(8.6);
    obj.textEditor29:setFontColor("#000000");
    obj.textEditor29:setField("O_QUE_VAI_ACONTECER__2");
    obj.textEditor29:setTransparent(true);
    obj.textEditor29:setName("textEditor29");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(693);
    obj.layout34:setTop(894.2);
    obj.layout34:setWidth(162);
    obj.layout34:setHeight(46.8);
    obj.layout34:setName("layout34");

    obj.textEditor30 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor30:setParent(obj.layout34);
    obj.textEditor30:setLeft(0);
    obj.textEditor30:setTop(0);
    obj.textEditor30:setWidth(162);
    obj.textEditor30:setHeight(46.8);
    obj.textEditor30:setFontSize(8.6);
    obj.textEditor30:setFontColor("#000000");
    obj.textEditor30:setField("O_QUE_VAI_ACONTECER__3");
    obj.textEditor30:setTransparent(true);
    obj.textEditor30:setName("textEditor30");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(873);
    obj.layout35:setTop(59);
    obj.layout35:setWidth(225);
    obj.layout35:setHeight(23);
    obj.layout35:setName("layout35");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout35);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(8.6);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(225);
    obj.edit5:setHeight(24);
    obj.edit5:setField("EQUIPAMENTO_1");
    obj.edit5:setName("edit5");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(873);
    obj.layout36:setTop(86);
    obj.layout36:setWidth(225);
    obj.layout36:setHeight(23);
    obj.layout36:setName("layout36");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout36);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(8.6);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(225);
    obj.edit6:setHeight(24);
    obj.edit6:setField("EQUIPAMENTO_2");
    obj.edit6:setName("edit6");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(873);
    obj.layout37:setTop(113);
    obj.layout37:setWidth(225);
    obj.layout37:setHeight(23);
    obj.layout37:setName("layout37");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout37);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(8.6);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(225);
    obj.edit7:setHeight(24);
    obj.edit7:setField("EQUIPAMENTO_3");
    obj.edit7:setName("edit7");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(873);
    obj.layout38:setTop(140);
    obj.layout38:setWidth(225);
    obj.layout38:setHeight(23);
    obj.layout38:setName("layout38");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout38);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(8.6);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(225);
    obj.edit8:setHeight(24);
    obj.edit8:setField("EQUIPAMENTO_4");
    obj.edit8:setName("edit8");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(873);
    obj.layout39:setTop(167);
    obj.layout39:setWidth(225);
    obj.layout39:setHeight(23);
    obj.layout39:setName("layout39");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout39);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(8.6);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(225);
    obj.edit9:setHeight(24);
    obj.edit9:setField("EQUIPAMENTO_5");
    obj.edit9:setName("edit9");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(873);
    obj.layout40:setTop(194);
    obj.layout40:setWidth(225);
    obj.layout40:setHeight(23);
    obj.layout40:setName("layout40");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout40);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(8.6);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(225);
    obj.edit10:setHeight(24);
    obj.edit10:setField("EQUIPAMENTO_6");
    obj.edit10:setName("edit10");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(873);
    obj.layout41:setTop(221);
    obj.layout41:setWidth(225);
    obj.layout41:setHeight(23);
    obj.layout41:setName("layout41");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout41);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(8.6);
    obj.edit11:setFontColor("#000000");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(225);
    obj.edit11:setHeight(24);
    obj.edit11:setField("EQUIPAMENTO_7");
    obj.edit11:setName("edit11");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(873);
    obj.layout42:setTop(248);
    obj.layout42:setWidth(225);
    obj.layout42:setHeight(23);
    obj.layout42:setName("layout42");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout42);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(8.6);
    obj.edit12:setFontColor("#000000");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(225);
    obj.edit12:setHeight(24);
    obj.edit12:setField("EQUIPAMENTO_8");
    obj.edit12:setName("edit12");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(873);
    obj.layout43:setTop(275);
    obj.layout43:setWidth(225);
    obj.layout43:setHeight(23);
    obj.layout43:setName("layout43");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout43);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(8.6);
    obj.edit13:setFontColor("#000000");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(225);
    obj.edit13:setHeight(24);
    obj.edit13:setField("EQUIPAMENTO_9");
    obj.edit13:setName("edit13");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(873);
    obj.layout44:setTop(302);
    obj.layout44:setWidth(225);
    obj.layout44:setHeight(23);
    obj.layout44:setName("layout44");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout44);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(8.6);
    obj.edit14:setFontColor("#000000");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(225);
    obj.edit14:setHeight(24);
    obj.edit14:setField("EQUIPAMENTO_10");
    obj.edit14:setName("edit14");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(873);
    obj.layout45:setTop(329);
    obj.layout45:setWidth(225);
    obj.layout45:setHeight(23);
    obj.layout45:setName("layout45");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout45);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(8.6);
    obj.edit15:setFontColor("#000000");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(225);
    obj.edit15:setHeight(24);
    obj.edit15:setField("EQUIPAMENTO_11");
    obj.edit15:setName("edit15");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(873);
    obj.layout46:setTop(356);
    obj.layout46:setWidth(225);
    obj.layout46:setHeight(23);
    obj.layout46:setName("layout46");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout46);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(8.6);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(225);
    obj.edit16:setHeight(24);
    obj.edit16:setField("EQUIPAMENTO_12");
    obj.edit16:setName("edit16");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(873);
    obj.layout47:setTop(383);
    obj.layout47:setWidth(225);
    obj.layout47:setHeight(23);
    obj.layout47:setName("layout47");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout47);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(8.6);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(225);
    obj.edit17:setHeight(24);
    obj.edit17:setField("EQUIPAMENTO_13");
    obj.edit17:setName("edit17");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(873);
    obj.layout48:setTop(410);
    obj.layout48:setWidth(225);
    obj.layout48:setHeight(23);
    obj.layout48:setName("layout48");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout48);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(8.6);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(225);
    obj.edit18:setHeight(24);
    obj.edit18:setField("EQUIPAMENTO_14");
    obj.edit18:setName("edit18");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(873);
    obj.layout49:setTop(437);
    obj.layout49:setWidth(225);
    obj.layout49:setHeight(23);
    obj.layout49:setName("layout49");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout49);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(8.6);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(225);
    obj.edit19:setHeight(24);
    obj.edit19:setField("EQUIPAMENTO_15");
    obj.edit19:setName("edit19");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(873);
    obj.layout50:setTop(464);
    obj.layout50:setWidth(225);
    obj.layout50:setHeight(23);
    obj.layout50:setName("layout50");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout50);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(8.6);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(225);
    obj.edit20:setHeight(24);
    obj.edit20:setField("EQUIPAMENTO_16");
    obj.edit20:setName("edit20");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(1103);
    obj.layout51:setTop(59);
    obj.layout51:setWidth(594);
    obj.layout51:setHeight(23);
    obj.layout51:setName("layout51");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout51);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(8.6);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(594);
    obj.edit21:setHeight(24);
    obj.edit21:setField("NOTAS_EQUIPAMENTOS_1");
    obj.edit21:setName("edit21");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(1103);
    obj.layout52:setTop(86);
    obj.layout52:setWidth(594);
    obj.layout52:setHeight(23);
    obj.layout52:setName("layout52");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout52);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(8.6);
    obj.edit22:setFontColor("#000000");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(594);
    obj.edit22:setHeight(24);
    obj.edit22:setField("NOTAS_EQUIPAMENTOS_2");
    obj.edit22:setName("edit22");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(1103);
    obj.layout53:setTop(113);
    obj.layout53:setWidth(594);
    obj.layout53:setHeight(23);
    obj.layout53:setName("layout53");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout53);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(8.6);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(594);
    obj.edit23:setHeight(24);
    obj.edit23:setField("NOTAS_EQUIPAMENTOS_3");
    obj.edit23:setName("edit23");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(1103);
    obj.layout54:setTop(140);
    obj.layout54:setWidth(594);
    obj.layout54:setHeight(23);
    obj.layout54:setName("layout54");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout54);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(8.6);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(594);
    obj.edit24:setHeight(24);
    obj.edit24:setField("NOTAS_EQUIPAMENTOS_4");
    obj.edit24:setName("edit24");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(1103);
    obj.layout55:setTop(167);
    obj.layout55:setWidth(594);
    obj.layout55:setHeight(23);
    obj.layout55:setName("layout55");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout55);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(8.6);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(594);
    obj.edit25:setHeight(24);
    obj.edit25:setField("NOTAS_EQUIPAMENTOS_5");
    obj.edit25:setName("edit25");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(1103);
    obj.layout56:setTop(194);
    obj.layout56:setWidth(594);
    obj.layout56:setHeight(23);
    obj.layout56:setName("layout56");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout56);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(8.6);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(594);
    obj.edit26:setHeight(24);
    obj.edit26:setField("NOTAS_EQUIPAMENTOS_6");
    obj.edit26:setName("edit26");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(1103);
    obj.layout57:setTop(221);
    obj.layout57:setWidth(594);
    obj.layout57:setHeight(23);
    obj.layout57:setName("layout57");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout57);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(8.6);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(594);
    obj.edit27:setHeight(24);
    obj.edit27:setField("NOTAS_EQUIPAMENTOS_7");
    obj.edit27:setName("edit27");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(1103);
    obj.layout58:setTop(248);
    obj.layout58:setWidth(594);
    obj.layout58:setHeight(23);
    obj.layout58:setName("layout58");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout58);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(8.6);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(594);
    obj.edit28:setHeight(24);
    obj.edit28:setField("NOTAS_EQUIPAMENTOS_8");
    obj.edit28:setName("edit28");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(1103);
    obj.layout59:setTop(275);
    obj.layout59:setWidth(594);
    obj.layout59:setHeight(23);
    obj.layout59:setName("layout59");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout59);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(8.6);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(594);
    obj.edit29:setHeight(24);
    obj.edit29:setField("NOTAS_EQUIPAMENTOS_9");
    obj.edit29:setName("edit29");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle1);
    obj.layout60:setLeft(1103);
    obj.layout60:setTop(302);
    obj.layout60:setWidth(594);
    obj.layout60:setHeight(23);
    obj.layout60:setName("layout60");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout60);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(8.6);
    obj.edit30:setFontColor("#000000");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(594);
    obj.edit30:setHeight(24);
    obj.edit30:setField("NOTAS_EQUIPAMENTOS_10");
    obj.edit30:setName("edit30");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle1);
    obj.layout61:setLeft(1103);
    obj.layout61:setTop(329);
    obj.layout61:setWidth(594);
    obj.layout61:setHeight(23);
    obj.layout61:setName("layout61");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout61);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(8.6);
    obj.edit31:setFontColor("#000000");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(594);
    obj.edit31:setHeight(24);
    obj.edit31:setField("NOTAS_EQUIPAMENTOS_11");
    obj.edit31:setName("edit31");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle1);
    obj.layout62:setLeft(1103);
    obj.layout62:setTop(356);
    obj.layout62:setWidth(594);
    obj.layout62:setHeight(23);
    obj.layout62:setName("layout62");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout62);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(8.6);
    obj.edit32:setFontColor("#000000");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(594);
    obj.edit32:setHeight(24);
    obj.edit32:setField("NOTAS_EQUIPAMENTOS_12");
    obj.edit32:setName("edit32");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle1);
    obj.layout63:setLeft(1103);
    obj.layout63:setTop(383);
    obj.layout63:setWidth(594);
    obj.layout63:setHeight(23);
    obj.layout63:setName("layout63");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout63);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(8.6);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(594);
    obj.edit33:setHeight(24);
    obj.edit33:setField("NOTAS_EQUIPAMENTOS_13");
    obj.edit33:setName("edit33");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle1);
    obj.layout64:setLeft(1103);
    obj.layout64:setTop(410);
    obj.layout64:setWidth(594);
    obj.layout64:setHeight(23);
    obj.layout64:setName("layout64");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout64);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(8.6);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(594);
    obj.edit34:setHeight(24);
    obj.edit34:setField("NOTAS_EQUIPAMENTOS_14");
    obj.edit34:setName("edit34");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle1);
    obj.layout65:setLeft(1103);
    obj.layout65:setTop(437);
    obj.layout65:setWidth(594);
    obj.layout65:setHeight(23);
    obj.layout65:setName("layout65");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout65);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(8.6);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(594);
    obj.edit35:setHeight(24);
    obj.edit35:setField("NOTAS_EQUIPAMENTOS_15");
    obj.edit35:setName("edit35");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle1);
    obj.layout66:setLeft(1103);
    obj.layout66:setTop(464);
    obj.layout66:setWidth(594);
    obj.layout66:setHeight(23);
    obj.layout66:setName("layout66");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout66);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(8.6);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(594);
    obj.edit36:setHeight(24);
    obj.edit36:setField("NOTAS_EQUIPAMENTOS_16");
    obj.edit36:setName("edit36");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle1);
    obj.layout67:setLeft(1103);
    obj.layout67:setTop(572);
    obj.layout67:setWidth(594);
    obj.layout67:setHeight(23);
    obj.layout67:setName("layout67");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout67);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(8.6);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(594);
    obj.edit37:setHeight(24);
    obj.edit37:setField("NOTAS_EQUIPAMENTOS_17");
    obj.edit37:setName("edit37");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle1);
    obj.layout68:setLeft(1103);
    obj.layout68:setTop(599);
    obj.layout68:setWidth(594);
    obj.layout68:setHeight(23);
    obj.layout68:setName("layout68");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout68);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(8.6);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(594);
    obj.edit38:setHeight(24);
    obj.edit38:setField("NOTAS_EQUIPAMENTOS_18");
    obj.edit38:setName("edit38");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle1);
    obj.layout69:setLeft(873);
    obj.layout69:setTop(660.2);
    obj.layout69:setWidth(823);
    obj.layout69:setHeight(55.8);
    obj.layout69:setName("layout69");

    obj.textEditor31 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor31:setParent(obj.layout69);
    obj.textEditor31:setLeft(0);
    obj.textEditor31:setTop(0);
    obj.textEditor31:setWidth(823);
    obj.textEditor31:setHeight(55.8);
    obj.textEditor31:setFontSize(8.6);
    obj.textEditor31:setFontColor("#000000");
    obj.textEditor31:setField("MODA_ESTILO");
    obj.textEditor31:setTransparent(true);
    obj.textEditor31:setName("textEditor31");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle1);
    obj.layout70:setLeft(873);
    obj.layout70:setTop(747);
    obj.layout70:setWidth(364);
    obj.layout70:setHeight(23);
    obj.layout70:setName("layout70");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout70);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(8.6);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(364);
    obj.edit39:setHeight(24);
    obj.edit39:setField("HABILITAÇÃO");
    obj.edit39:setName("edit39");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle1);
    obj.layout71:setLeft(1242);
    obj.layout71:setTop(747);
    obj.layout71:setWidth(175);
    obj.layout71:setHeight(23);
    obj.layout71:setName("layout71");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout71);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(8.6);
    obj.edit40:setFontColor("#000000");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(175);
    obj.edit40:setHeight(24);
    obj.edit40:setField("ALUGUEL");
    obj.edit40:setName("edit40");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle1);
    obj.layout72:setLeft(1422);
    obj.layout72:setTop(747);
    obj.layout72:setWidth(274);
    obj.layout72:setHeight(23);
    obj.layout72:setName("layout72");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout72);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(8.6);
    obj.edit41:setFontColor("#000000");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(274);
    obj.edit41:setHeight(24);
    obj.edit41:setField("ESTILO_DE_VIDA");
    obj.edit41:setName("edit41");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle1);
    obj.layout73:setLeft(873);
    obj.layout73:setTop(808.2);
    obj.layout73:setWidth(823);
    obj.layout73:setHeight(132.8);
    obj.layout73:setName("layout73");

    obj.textEditor32 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor32:setParent(obj.layout73);
    obj.textEditor32:setLeft(0);
    obj.textEditor32:setTop(0);
    obj.textEditor32:setWidth(823);
    obj.textEditor32:setHeight(132.8);
    obj.textEditor32:setFontSize(8.6);
    obj.textEditor32:setFontColor("#000000");
    obj.textEditor32:setField("FLUXO_DE_VIDA");
    obj.textEditor32:setTransparent(true);
    obj.textEditor32:setName("textEditor32");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle1);
    obj.layout74:setLeft(486);
    obj.layout74:setTop(696.2);
    obj.layout74:setWidth(369);
    obj.layout74:setHeight(46.8);
    obj.layout74:setName("layout74");

    obj.textEditor33 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor33:setParent(obj.layout74);
    obj.textEditor33:setLeft(0);
    obj.textEditor33:setTop(0);
    obj.textEditor33:setWidth(369);
    obj.textEditor33:setHeight(46.8);
    obj.textEditor33:setFontSize(8.6);
    obj.textEditor33:setFontColor("#000000");
    obj.textEditor33:setField("AMORES_TRÁGICOS_3");
    obj.textEditor33:setTransparent(true);
    obj.textEditor33:setName("textEditor33");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle1);
    obj.layout75:setLeft(873);
    obj.layout75:setTop(491);
    obj.layout75:setWidth(225);
    obj.layout75:setHeight(23);
    obj.layout75:setName("layout75");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout75);
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(8.6);
    obj.edit42:setFontColor("#000000");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(225);
    obj.edit42:setHeight(24);
    obj.edit42:setField("EQUIPAMENTO_17");
    obj.edit42:setName("edit42");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle1);
    obj.layout76:setLeft(1103);
    obj.layout76:setTop(491);
    obj.layout76:setWidth(594);
    obj.layout76:setHeight(23);
    obj.layout76:setName("layout76");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout76);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(8.6);
    obj.edit43:setFontColor("#000000");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(594);
    obj.edit43:setHeight(24);
    obj.edit43:setField("NOTAS_EQUIPAMENTOS_19");
    obj.edit43:setName("edit43");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle1);
    obj.layout77:setLeft(873);
    obj.layout77:setTop(518);
    obj.layout77:setWidth(225);
    obj.layout77:setHeight(23);
    obj.layout77:setName("layout77");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout77);
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(8.6);
    obj.edit44:setFontColor("#000000");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(225);
    obj.edit44:setHeight(24);
    obj.edit44:setField("EQUIPAMENTO_18");
    obj.edit44:setName("edit44");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle1);
    obj.layout78:setLeft(1103);
    obj.layout78:setTop(518);
    obj.layout78:setWidth(594);
    obj.layout78:setHeight(23);
    obj.layout78:setName("layout78");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout78);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(8.6);
    obj.edit45:setFontColor("#000000");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(594);
    obj.edit45:setHeight(24);
    obj.edit45:setField("NOTAS_EQUIPAMENTOS_20");
    obj.edit45:setName("edit45");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle1);
    obj.layout79:setLeft(873);
    obj.layout79:setTop(545);
    obj.layout79:setWidth(225);
    obj.layout79:setHeight(23);
    obj.layout79:setName("layout79");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout79);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(8.6);
    obj.edit46:setFontColor("#000000");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(225);
    obj.edit46:setHeight(24);
    obj.edit46:setField("EQUIPAMENTO_19");
    obj.edit46:setName("edit46");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle1);
    obj.layout80:setLeft(1103);
    obj.layout80:setTop(545);
    obj.layout80:setWidth(594);
    obj.layout80:setHeight(23);
    obj.layout80:setName("layout80");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout80);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(8.6);
    obj.edit47:setFontColor("#000000");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(594);
    obj.edit47:setHeight(24);
    obj.edit47:setField("NOTAS_EQUIPAMENTOS_21");
    obj.edit47:setName("edit47");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.textEditor26 ~= nil then self.textEditor26:destroy(); self.textEditor26 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.textEditor32 ~= nil then self.textEditor32:destroy(); self.textEditor32 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.textEditor18 ~= nil then self.textEditor18:destroy(); self.textEditor18 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.textEditor20 ~= nil then self.textEditor20:destroy(); self.textEditor20 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.textEditor31 ~= nil then self.textEditor31:destroy(); self.textEditor31 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.textEditor16 ~= nil then self.textEditor16:destroy(); self.textEditor16 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.textEditor22 ~= nil then self.textEditor22:destroy(); self.textEditor22 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.textEditor25 ~= nil then self.textEditor25:destroy(); self.textEditor25 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.textEditor33 ~= nil then self.textEditor33:destroy(); self.textEditor33 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.textEditor29 ~= nil then self.textEditor29:destroy(); self.textEditor29 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.textEditor19 ~= nil then self.textEditor19:destroy(); self.textEditor19 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.textEditor27 ~= nil then self.textEditor27:destroy(); self.textEditor27 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.textEditor17 ~= nil then self.textEditor17:destroy(); self.textEditor17 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.textEditor21 ~= nil then self.textEditor21:destroy(); self.textEditor21 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.textEditor24 ~= nil then self.textEditor24:destroy(); self.textEditor24 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.textEditor30 ~= nil then self.textEditor30:destroy(); self.textEditor30 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.textEditor28 ~= nil then self.textEditor28:destroy(); self.textEditor28 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.textEditor23 ~= nil then self.textEditor23:destroy(); self.textEditor23 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmcyberpunk2_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmcyberpunk2_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmcyberpunk2_svg = {
    newEditor = newfrmcyberpunk2_svg, 
    new = newfrmcyberpunk2_svg, 
    name = "frmcyberpunk2_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

frmcyberpunk2_svg = _frmcyberpunk2_svg;
Firecast.registrarForm(_frmcyberpunk2_svg);

return _frmcyberpunk2_svg;
