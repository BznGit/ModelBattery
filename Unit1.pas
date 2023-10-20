unit Unit1;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Math, ExtCtrls, Buttons, TeEngine, Series, TeeProcs,
  Chart;

type
Tmass2D=array of array of extended;
Tmass1d=array of Extended;
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TFastLineSeries;
    Button1: TButton;
    Chart2: TChart;
    Series2: TFastLineSeries;
    Chart3: TChart;
    Series3: TFastLineSeries;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Series4: TFastLineSeries;
    Label7: TLabel;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    CheckBox1: TCheckBox;

    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GEN, POT:Tmass2d;
  BAL:Tmass1d;
  Form1: TForm1;
  Dlit, Pq,Nakb,Nzu,Nru,Ncn,Ki,Wb,W0, SWb,Ph1,Ph2 : Extended;
  i,j,l,k:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Nakb:=StrToFloat(edit1.text);
  Nzu:=StrToFloat(edit2.text);
  Ncn:=StrToFloat(edit3.text);
  Nru:=StrToFloat(edit4.text);
  W0:= StrToFloat(edit5.text);
     CheckBox1Click(nil);
     W0:=StrToFloat(Edit5.Text);
    Pq:=GEN[0,0]-POT[0,0]/Ncn;
    if Pq>0 then Ki:=Nzu*Nakb;
    if (Pq<=0) and (GEN[0,0]<>0) then Ki:=Ncn/Nru;
    if (Pq<=0) and (GEN[0,0]=0)then Ki:=1/Nru;
    SetLength(BAL,1);
    BAL[0]:=W0+Ki*Pq*POT[0,1];
  for j := 1 to high(POT) do
  begin
    Pq:=GEN[j,0]-POT[j,0]/Ncn;
    if Pq>0 then Ki:=Nzu*Nakb;
    if (Pq<=0) and (GEN[j,0]<>0) then Ki:=Ncn/Nru;
    if (Pq<=0) and (GEN[j,0]=0)then Ki:=1/Nru;
    SetLength(BAL,j+1);
    BAL[j]:=BAL[j-1]+Ki*Pq*POT[j,1];
  end;


  for i := 0 to high(BAL) do
  begin
   SWb:=SWb+BAL[i];
  end;

  Label6.Caption:=FloatToStr(SWb);

  Series4.AddXY(0,0);
  Series4.AddXY(1415,0);

  Series1.Clear;
  Series1.AddXY(0,GEN[0,0]);
  Dlit:=GEN[0,1]*60;
  Series1.AddXY(Dlit,GEN[0,0]);
  for i := 1 to high(GEN) do
  begin
    Series1.AddXY(Dlit,GEN[i,0]);
    Dlit:=Dlit+GEN[i,1]*60;
    Series1.AddXY(Dlit,GEN[i,0]);
  end;

  Series2.Clear;
  Series2.AddXY(0,POT[0,0]);
  Dlit:=POT[0,1]*60;
  Series2.AddXY(Dlit,POT[0,0]);
  for i := 1 to high(POT) do
  begin
    Series2.AddXY(Dlit,POT[i,0]);
    Dlit:=Dlit+POT[i,1]*60;
    Series2.AddXY(Dlit,POT[i,0]);
  end;
  Dlit:=0;
  Series3.Clear;
  Series3.AddXY(0,BAl[0]);

  Dlit:=Dlit+POT[0,1]*60;
  Series3.AddXY(Dlit,BAl[1]);

  for i := 1 to high(POT) do
  begin
    Dlit:=Dlit+POT[i,1]*60;
    Series3.AddXY(Dlit,BAl[i]);
  end;

  BAL:=nil;
  W0:=0;

end;



procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then
  begin
  Edit6.Enabled:=true;
  Edit7.Enabled:=true;
  Ph1:=StrToFloat(Edit6.Text);
  Ph2:=StrToFloat(Edit7.Text);
  L:=0;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;
  L:=1;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;
  L:=2;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;
  L:=3;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;

    L:=4;
       POT[2+l*7,0]:=Ph1;
       POT[3+l*7,0]:=Ph2;
L:=10;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;
  L:=11;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;
  L:=12;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;
  L:=13;
    POT[2+l*7,0]:=Ph1;
    POT[3+l*7,0]:=Ph2;

    L:=14;
       POT[2+l*7,0]:=Ph1;
       POT[3+l*7,0]:=Ph2;
  end;
  if CheckBox1.Checked=false then
  begin
  Edit6.Enabled:=false;
  Edit7.Enabled:=false;
    SetLength(POT,106,2);
  SWb:=0;
   k:=0;
  for l := 0 to 14 do
  begin

  GEN[0+k,0]:=5270*0.66;
  GEN[0+k,1]:=0.08;

  GEN[1+k,0]:=1054;
  GEN[1+k,1]:=0.2;

  GEN[2+k,0]:=1054;
  GEN[2+k,1]:=0.21;

  GEN[3+k,0]:=5270*0.66;
  GEN[3+k,1]:=0.5;

  GEN[4+k,0]:=0;
  GEN[4+k,1]:=0.34;

  GEN[5+k,0]:=0;
  GEN[5+k,1]:=0.15;

  GEN[6+k,0]:=0;
  GEN[6+k,1]:=0.10;

  POT[0+k,0]:=750;
  POT[0+k,1]:=0.08;

  POT[1+k,0]:=1200;
  POT[1+k,1]:=0.2;

  POT[2+k,0]:=1200;
  POT[2+k,1]:=0.21;

  POT[3+k,0]:=1200;
  POT[3+k,1]:=0.5;

  POT[4+k,0]:=750;
  POT[4+k,1]:=0.34;

  POT[5+k,0]:=1200;
  POT[5+k,1]:=0.15;

  POT[6+k,0]:=750;
  POT[6+k,1]:=0.10;
  Inc(k,7);
  end;

   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  SetLength(GEN,106,2);
  SetLength(POT,106,2);
  SWb:=0;
   k:=0;
  for l := 0 to 14 do
  begin

    GEN[0+k,0]:=5270*0.66;
    GEN[0+k,1]:=0.08;

    GEN[1+k,0]:=1054;
    GEN[1+k,1]:=0.2;

    GEN[2+k,0]:=1054;
    GEN[2+k,1]:=0.21;

    GEN[3+k,0]:=52700.66;
    GEN[3+k,1]:=0.5;

    GEN[4+k,0]:=0;
    GEN[4+k,1]:=0.34;

    GEN[5+k,0]:=0;
    GEN[5+k,1]:=0.15;

    GEN[6+k,0]:=0;
    GEN[6+k,1]:=0.10;

    POT[0+k,0]:=750;
    POT[0+k,1]:=0.08;

    POT[1+k,0]:=1200;
    POT[1+k,1]:=0.2;

    POT[2+k,0]:=1450;
    POT[2+k,1]:=0.21;

    POT[3+k,0]:=1200;
    POT[3+k,1]:=0.5;

    POT[4+k,0]:=750;
    POT[4+k,1]:=0.34;

    POT[5+k,0]:=1200;
    POT[5+k,1]:=0.15;

    POT[6+k,0]:=750;
    POT[6+k,1]:=0.10;
    Inc(k,7);
  end;

end;

end.
