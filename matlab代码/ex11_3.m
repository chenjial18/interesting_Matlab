hf=figure('Color',[0,1,1],'Position',[100,200,400,200],...
      'Name','数制转换','NumberTitle','off','MenuBar','none');
uicontrol(hf,'Style','Text', 'Units','normalized',...
      'Position',[0.05,0.8,0.45,0.1],'Horizontal','center',...
      'String','输 入 框','Back',[0,1,1]);
uicontrol(hf,'Style','Text','Position',[0.5,0.8,0.45,0.1],...
      'Units','normalized','Horizontal','center',...
      'String','输 出 框','Back',[0,1,1]);
uicontrol(hf,'Style','Frame','Position',[0.04,0.33,0.45,0.45],...
     'Units','normalized','Back',[1,1,0]);
uicontrol(hf,'Style','Text','Position',[0.05,0.6,0.25,0.1],...
      'Units','normalized','Horizontal','center',...
      'String','十进制数','Back',[1,1,0]);
uicontrol(hf,'Style','Text','Position',[0.05,0.4,0.25,0.1],...
      'Units','normalized','Horizontal','center',...
      'String','2～16进制','Back',[1,1,0]);
he1=uicontrol(hf,'Style','Edit','Position',[0.25,0.6,0.2,0.1],...
      'Units','normalized','Back',[0,1,0]);
he2=uicontrol(hf,'Style','Edit','Position',[0.25,0.4,0.2,0.1],...
      'Units','normalized','Back',[0,1,0]);
uicontrol(hf,'Style','Frame','Position',[0.52,0.33,0.45,0.45],...
     'Units','normalized','Back',[1,1,0]);
ht=uicontrol(hf,'Style','Text','Position',[0.6,0.5,0.3,0.1],...
      'Units','normalized','Horizontal','center','Back',[0,1,0]);
COMM=['n=str2num(get(he1,''String''));',...
'b=str2num(get(he2,''String''));',...
      'dec=trdec(n,b);','set(ht,''string'',dec);'];
uicontrol(hf,'Style','Push','Position',[0.18,0.1,0.2,0.12],...
       'String','转 换','Units','normalized','Call',COMM);
uicontrol(hf,'Style','Push','Position',[0.65,0.1,0.2,0.12],...
      'String','退 出','Units','normalized','Call','close(hf)');
