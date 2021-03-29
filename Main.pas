{Este projeto visa auxiliar no aprendizado de delphi, por favor se for ultilizar
em outros lugares, não utilize como seu, de o devido respeito e os créditos
á quem desenvolveu por favor! }
// Projeto criado por
// Vagner Matheus Da Cruz
// Pato Branco - PR
// Para informações basta entrar em contato nas minhas redes sociais com o meu nome
// ou no Instagram : @mendinoonrails
// sinta - se a vontade para fazer criticas ou ajudar a melhorar o projeto
// “Coisas incríveis no mundo dos negócios nunca são feitas por uma única pessoa,
// e sim por uma equipe - Steve Jobs”
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
   //Declaração de variáveis "Publicas" ou seja podem ser usadas tanto dentro quanto fora desse form
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
 // Variável "I" usado por convenção do FOR
 var
  I: Integer;
  begin
  // estrutura de laço de repetição FOR, para sair de 0 a 10 deixar apenas TO
  // sempre declarar a váriavel de repetição no caso "I" dentro da procedure/Método
  // downto regressa a contagem
  for I := 10 downto 0 do
  begin
    ShowMessage(IntToStr(I));
  end;
  end;


procedure TForm3.btnwhileClick(Sender: TObject);
var
  Count: Integer; // Count é um prefixo de contagem, contador (para melhorar a didática) //
begin
  //Loop De Repetição While
  Count := 0;
  while (Count <= 9) do
  begin
    Count := Count + 1;
    ShowMessage(IntToStr(Count));
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  //No Botão mostrar ele nos mostra os valores atribuídos nas varáveis públicas
  //     ATENÇÃO LEIA ABAIXO
  //Nomes e endereços retirado deste gerador aqui : https://www.4devs.com.br/gerador_de_pessoas
  //Se aparecer algum dado pessoal seu, por favor entre em contato comigo
  //Após passar os seus devidos valores para as variáveis ordenamos que apareça nos edits após o clique do botão
  Nome       := 'Sophia Andreia Maya';
  Sobrenome  := 'Caldeira';
  Endereco   := 'Rua Jairo José Guedes';
  Cidade     := 'Barreiras';
  Edit4.Text := Nome;
  Edit5.Text := Sobrenome;
  Edit6.Text := Endereco;
  Edit8.Text := Cidade;
  //a propiedade .Text serve como o "Caption" do TButton, ela mostra o tal valor em seu corpo
  end;

procedure TForm3.Button2Click(Sender: TObject);
begin
 //É feito a mesma ação do outro mas como bem é dito no caption do botão
 //Ele troca os valores nos edits
 //     ATENÇÃO LEIA ABAIXO
 //Nomes e endereços retirado deste gerador aqui : https://www.4devs.com.br/gerador_de_pessoas
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
  // Neste exemplo vemos que todo o processo feito nos botões e nos edits
  // Foi exemplificado dentro de um Label, fazendo de forma mais fácil
  // para concatenar as variáveis se usa o símbolo " + "
  //sLineBreak serve para fazer as strings (textos) pularem para a próxima linha
  Nome           := 'Severino Cláudio';
  Sobrenome      := 'Galvão';
  Endereco       := 'Rua Allan Kardec';
  Cidade         := 'Maringá';
  Label4.Caption := ' Nome: ' + nome + sLineBreak +
                    ' Sobrenome: '   + sobrenome  + sLineBreak +
                    ' Endereço: '    + endereco   + sLineBreak +
                    ' Cidade: '      + Cidade;
end;

procedure TForm3.Button4Click(Sender: TObject);
// Estruta básica de soma de valores(uma simples calculadora)
// Dica: Preferêmcialmente faça uma calculadora orientada a objetos
var
  Valor1,Valor2,Valor3,Total,Media: Double;
begin
  Valor1     := StrToFloat(Edit1.Text);
  Valor2     := StrToFloat(Edit2.Text);
  Valor3     := StrToFloat(Edit7.Text);
  Total      := valor1 + valor2 + Valor3;
  Edit3.Text := FloatToStr(Total);
  // estrutura if  para validar se o aluno em questão passou por exemplo
  begin
   Media := 23.333;
   if total >= Media then
   showmessage ('O aluno obteve ' + FloatToStr(total)  + ' pontos e foi aprovado! ')
   else
   ShowMessage('O aluno obteve ' + FloatToStr(total)  + ' pontos e foi reprovado! ');
  end;
end;

procedure TForm3.Button5Click(Sender: TObject);
// Estrutura básica de subtração
var
  valor1,valor2,total: Double;
begin
  valor1     := StrToFloat(Edit1.Text);
  valor2     := StrToFloat(Edit2.Text);
  total      := valor1-valor2;
  Edit3.Text := FloatToStr(total);
end;

procedure TForm3.Button6Click(Sender: TObject);
// Estrutura básica de Divisão
var
  valor1,valor2,total: Double;
begin
  valor1     := StrToFloat(Edit1.Text);
  valor2     := StrToFloat(Edit2.Text);
  total      := valor1/valor2;
  Edit3.Text := FloatToStr(total);
end;

procedure TForm3.Button7Click(Sender: TObject);
// Estrutura básica de multiplicação
var
  valor1,valor2,total: Double;
begin
  valor1     := StrToFloat(Edit1.Text);
  valor2     := StrToFloat(Edit2.Text);
  total      := valor1*valor2;
  Edit3.Text := FloatToStr(total);
end;
end.

