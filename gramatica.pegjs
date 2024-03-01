Start
    = Automatum

Automatum
    = Statement*

Statement
    
     = IF
    /FOR
    /FUNCION
    /VARIABLEINT
    /VARIABLEFLOAT
    /VARIABLESTRING
    /VARIABLEBOOL

CONTENIDO
    = IF
    /FOR
    /FUNCION
    /VARIABLEINT
    /VARIABLEFLOAT
    /VARIABLESTRING
    /VARIABLEBOOL
    /CONT





CONT
    = "CONTENIDO"

VARIABLEINT = "int" _ IDENTIFICADOR _ "=" _ DIGITO _ CONTENIDO?
VARIABLEBOOL = "bool" _ IDENTIFICADOR _ "=" _ BOOL _ CONTENIDO?
VARIABLEFLOAT = "float" _ IDENTIFICADOR _ "=" _ DIGITO.DIGITO _ CONTENIDO?
VARIABLESTRING = "string" _ IDENTIFICADOR _ "=" _ "\"" _ STRING _ "\"" _ CONTENIDO?

IF 
   = "if" _ "(" _ IDENTIFICADOR _ OPERADOR _ DIGITO _ ")" _ "{" _ CONTENIDO _ "}" _ "else" _ "{" _ CONTENIDO _ "}"

FOR
    = "for" _ "(" _ CONTADOR _ ")" _ "{" _ CONTENIDO _ "}"


FUNCION
    = "func" _ IDENTIFICADOR _ "(" _ Parametros? _ ")" _ "{" _ "return"_ CONT "}"


Parametros = _ IDENTIFICADOR ( _ "," _ IDENTIFICADOR _ )*


STRING 
    = [a-zA-Z_][a-zA-Z]*

BOOL
    = "true" 
    / "false" 


CONTADOR
    = "i" _ "=" _ DIGITO _ ";" _ "i" _ OPERADOR _ DIGITO _ ";" _ "i" _ INCREMENTO _ 

INCREMENTO
 = "++"


IDENTIFICADOR
    = [a-zA-Z_][a-zA-Z]*





OPERADOR
    = ">"
    / "<"
    / ">="
    / "<="
    / "=="
    / "!="
    / "=<"
    / "=>"

DIGITO
    = [0-9]+ { return parseInt(text(""), 10); }

_ "espacio" = [ \t\n\r]* { return null; }

