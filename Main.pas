{Este projeto visa auxiliar no aprendizado de delphi, por favor se for ultilizar
em outros lugares, n�o utilize como seu, de o devido respeito e os cr�ditos
� quem desenvolveu por favor! }
// Projeto criado por
// Vagner Matheus Da Cruz
// Pato Branco - PR
// Para informa��es basta entrar em contato nas minhas redes sociais com o meu nome
// ou no Instagram : @mendinoonrails
// sinta - se a vontade para fazer criticas ou ajudar a melhorar o projeto
// �Coisas incr�veis no mundo dos neg�cios nunca s�o feitas por uma �nica pessoa,
// e sim por uma equipe - Steve Jobs�
unit Main;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;
type
  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    btnif: TButton;
    btnwhile: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnifClick(Sender: TObject);
    procedure btnwhileClick(Sender: TObject);
  private
    { Private declarations }
  public
   //Declara��o de vari�veis "Publicas" ou seja podem ser usadas tanto dentro quanto fora desse form
    var
      Nome , Sobrenome , Endereco , Cidade : String;
      Valor : Integer;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}



procedure TForm3.btnifClick(Sender: TObject);
 // Vari�vel "I" usado por conven��o do FOR
 var
  I: Integer;
  begin
  // estrutura de la�o de repeti��o FOR, para sair de 0 a 10 deixar apenas TO
  // sempre declarar a v�riavel de repeti��o no caso "I" dentro da procedure/M�todo
  // downto regressa a contagem
  for I := 10 downto 0 do
  begin
    ShowMessage(IntToStr(I));
  end;
  end;


procedure TForm3.btnwhileClick(Sender: TObject);
var
  Count: Integer; // Count � um prefixo de contagem, contador (para melhorar a did�tica) //
begin
  //Loop De Repeti��o While
  Count := 0;
  while (Count <= 9) do
  begin
    Count := Count + 1;
    ShowMessage(IntToStr(Count));
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  //No Bot�o mostrar ele nos mostra os valores atribu�dos nas var�veis p�blicas
  //     ATEN��O LEIA ABAIXO
  //Nomes e endere�os retirado deste gerador aqui : https://www.4devs.com.br/gerador_de_pessoas
  //Se aparecer algum dado pessoal seu, por favor entre em contato comigo
  //Ap�s passar os seus devidos valores para as vari�veis ordenamos que apare�a nos edits ap�s o clique do bot�o
  Nome       := 'Sophia Andreia Maya';
  Sobrenome  := 'Caldeira';
  Endereco   := 'Rua Jairo Jos� Guedes';
  Cidade     := 'Barreiras';
  Edit4.Text := Nome;
  Edit5.Text := Sobrenome;
  Edit6.Text := Endereco;
  Edit8.Text := Cidade;
  //a propiedade .Text serve como o "Caption" do TButton, ela mostra o tal valor em seu corpo
  end;

procedure TForm3.Button2Click(Sender: TObject);
begin
 //� feito a mesma a��o do outro mas como bem � dito no caption do bot�o
 //Ele troca os valores nos edits
 //     ATEN��O LEIA ABAIXO
 //Nomes e endere�os retirado deste gerador aqui : https://www.4devs.com.br/gerador_de_pessoas
 //Se aparecer algum dado pessoal seu, por favor entre em contato comigo
  nome       := 'Enrico Giovanni';
  sobrenome  := 'Da Rocha';
  endereco   := 'AV.Tupi';
  Cidade     := 'Pato Branco';
  Edit4.Text := Nome;
  Edit5.Text := Sobrenome;
  Edit6.Text := Endereco;
  Edit8.Text := Cidade;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  // Neste exemplo vemos que todo o processo feito nos bot�es e nos edits
  // Foi exemplificado dentro de um Label, fazendo de forma mais f�cil
  // para concatenar as vari�veis se usa o s�mbolo " + "
  //sLineBreak serve para fazer as strings (textos) pularem para a pr�xima linha
  Nome           := 'Severino Cl�udio';
  Sobrenome      := 'Galv�o';
  Endereco       := 'Rua Allan Kardec';
  Cidade         := 'Maring�';
  Label4.Caption := ' Nome: ' + nome + sLineBreak +
                    ' Sobrenome: '   + sobrenome  + sLineBreak +
                    ' Endere�o: '    + endereco   + sLineBreak +
                    ' Cidade: '      + Cidade;
end;

procedure TForm3.Button4Click(Sender: TObject);
// Estruta b�sica de soma de valores(uma simples calculadora)
// Dica: Prefer�mcialmente fa�a uma calculadora orientada a objetos
var
  Valor1,Valor2,Valor3,Total,Media: Double;
begin
  Valor1     := StrToFloat(Edit1.Text);
  Valor2     := StrToFloat(Edit2.Text);
  Valor3     := StrToFloat(Edit7.Text);
  Total      := valor1 + valor2 + Valor3;
  Edit3.Text := FloatToStr(Total);
  // estrutura if  para validar se o aluno em quest�o passou por exemplo
  begin
   Media := 23.333;
   if total >= Media then
   showmessage ('O aluno obteve ' + FloatToStr(total)  + ' pontos e foi aprovado! ')
   else
   ShowMessage('O aluno obteve ' + FloatToStr(total)  + ' pontos e foi reprovado! ');
  end;
end;

procedure TForm3.Button5Click(Sender: TObject);
// Estrutura b�sica de subtra��o
var
  valor1,valor2,total: Double;
begin
  valor1     := StrToFloat(Edit1.Text);
  valor2     := StrToFloat(Edit2.Text);
  total      := valor1-valor2;
  Edit3.Text := FloatToStr(total);
end;

procedure TForm3.Button6Click(Sender: TObject);
// Estrutura b�sica de Divis�o
var
  valor1,valor2,total: Double;
begin
  valor1     := StrToFloat(Edit1.Text);
  valor2     := StrToFloat(Edit2.Text);
  total      := valor1/valor2;
  Edit3.Text := FloatToStr(total);
end;

procedure TForm3.Button7Click(Sender: TObject);
// Estrutura b�sica de multiplica��o
var
  valor1,valor2,total: Double;
begin
  valor1     := StrToFloat(Edit1.Text);
  valor2     := StrToFloat(Edit2.Text);
  total      := valor1*valor2;
  Edit3.Text := FloatToStr(total);
end;
end.

