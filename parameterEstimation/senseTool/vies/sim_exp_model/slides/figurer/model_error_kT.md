%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: model_error_kT.md
%%CreationDate: Wed Feb 01 11:54:58 2006
%%BoundingBox: 116 259 496 575
%%DocumentFonts: TimesNewRomanPSMT
%%+ ArialMT
%%+ SymbolMT
%%Orientation: Portrait
%%EndComments
%%BeginProlog
%%BeginResource: procset MayuraDraw_ops
%%Version: 4.2
%%Copyright: (c) 1993-2003 Mayura Software
/PDXDict 100 dict def
PDXDict begin
% width height matrix proc key cache
% definepattern -\> font
/definepattern { %def
  7 dict begin
    /FontDict 9 dict def
    FontDict begin
      /cache exch def
      /key exch def
      /proc exch cvx def
      /mtx exch matrix invertmatrix def
      /height exch def
      /width exch def
      /ctm matrix currentmatrix def
      /ptm matrix identmatrix def
      /str
      (xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)
      def
    end
    /FontBBox [ %def
      0 0 FontDict /width get
      FontDict /height get
    ] def
    /FontMatrix FontDict /mtx get def
    /Encoding StandardEncoding def
    /FontType 3 def
    /BuildChar { %def
      pop begin
      FontDict begin
        width 0 cache { %ifelse
          0 0 width height setcachedevice
        }{ %else
          setcharwidth
        } ifelse
        0 0 moveto width 0 lineto
        width height lineto 0 height lineto
        closepath clip newpath
        gsave proc grestore
      end end
    } def
    FontDict /key get currentdict definefont
  end
} bind def

% dict patternpath -
% dict matrix patternpath -
/patternpath { %def
  dup type /dicttype eq { %ifelse
    begin FontDict /ctm get setmatrix
  }{ %else
    exch begin FontDict /ctm get setmatrix
    concat
  } ifelse
  currentdict setfont
  FontDict begin
    FontMatrix concat
    width 0 dtransform
    round width div exch round width div exch
    0 height dtransform
    round height div exch
    round height div exch
    0 0 transform round exch round exch
    ptm astore setmatrix

    pathbbox
    height div ceiling height mul 4 1 roll
    width div ceiling width mul 4 1 roll
    height div floor height mul 4 1 roll
    width div floor width mul 4 1 roll

    2 index sub height div ceiling cvi exch
    3 index sub width div ceiling cvi exch
    4 2 roll moveto

    FontMatrix ptm invertmatrix pop
    { %repeat
      gsave
        ptm concat
        dup str length idiv { %repeat
          str show
        } repeat
        dup str length mod str exch
        0 exch getinterval show
      grestore
      0 height rmoveto
    } repeat
    pop
  end end
} bind def

% dict patternfill -
% dict matrix patternfill -
/patternfill { %def
  gsave
    eoclip patternpath
  grestore
  newpath
} bind def

/img { %def
  gsave
  /imgh exch def
  /imgw exch def
  concat
  imgw imgh 8
  [imgw 0 0 imgh neg 0 imgh]
  /colorstr 768 string def
  /colorimage where {
    pop
    { currentfile colorstr readhexstring pop }
    false 3 colorimage
  }{
    /graystr 256 string def
    {
      currentfile colorstr readhexstring pop
      length 3 idiv
      dup 1 sub 0 1 3 -1 roll
      {
        graystr exch
        colorstr 1 index 3 mul get 30 mul
        colorstr 2 index 3 mul 1 add get 59 mul
        colorstr 3 index 3 mul 2 add get 11 mul
        add add 100 idiv
        put
      } for
      graystr 0 3 -1 roll getinterval
    } image
  } ifelse
  grestore
} bind def

/arrowhead {
  gsave
    [] 0 setdash
    strokeC strokeM strokeY strokeK setcmykcolor
    2 copy moveto
    4 2 roll exch 4 -1 roll exch
    sub 3 1 roll sub
    exch atan rotate dup scale
    arrowtype
    dup 0 eq {
      -1 2 rlineto 7 -2 rlineto -7 -2 rlineto
      closepath fill
    } if
    dup 1 eq {
      0 3 rlineto 9 -3 rlineto -9 -3 rlineto
      closepath fill
    } if
    dup 2 eq {
      -6 -6 rmoveto 6 6 rlineto -6 6 rlineto
      -1.4142 -1.4142 rlineto 4.5858 -4.5858 rlineto
      -4.5858 -4.5858 rlineto closepath fill
    } if
    dup 3 eq {
      -6 0 rmoveto -1 2 rlineto 7 -2 rlineto -7 -2 rlineto
      closepath fill
    } if
    dup 4 eq {
      -9 0 rmoveto 0 3 rlineto 9 -3 rlineto -9 -3 rlineto
      closepath fill
    } if
    dup 5 eq {
      currentpoint newpath 3 0 360 arc
      closepath fill
    } if
    dup 6 eq {
      2.5 2.5 rmoveto 0 -5 rlineto -5 0 rlineto 0 5 rlineto
      closepath fill
    } if
    pop
  grestore
} bind def

/setcmykcolor where { %ifelse
  pop
}{ %else
  /setcmykcolor {
     /black exch def /yellow exch def
     /magenta exch def /cyan exch def
     cyan black add dup 1 gt { pop 1 } if 1 exch sub
     magenta black add dup 1 gt { pop 1 } if 1 exch sub
     yellow black add dup 1 gt { pop 1 } if 1 exch sub
     setrgbcolor
  } bind def
} ifelse

/RE { %def
  findfont begin
  currentdict dup length dict begin
    { %forall
      1 index /FID ne { def } { pop pop } ifelse
    } forall
    /FontName exch def dup length 0 ne { %if
      /Encoding Encoding 256 array copy def
      0 exch { %forall
        dup type /nametype eq { %ifelse
          Encoding 2 index 2 index put
          pop 1 add
        }{ %else
          exch pop
        } ifelse
      } forall
    } if pop
  currentdict dup end end
  /FontName get exch definefont pop
} bind def

/spacecount { %def
  0 exch
  ( ) { %loop
    search { %ifelse
      pop 3 -1 roll 1 add 3 1 roll
    }{ pop exit } ifelse
  } loop
} bind def

/WinAnsiEncoding [
  39/quotesingle 96/grave 130/quotesinglbase/florin/quotedblbase
  /ellipsis/dagger/daggerdbl/circumflex/perthousand
  /Scaron/guilsinglleft/OE 145/quoteleft/quoteright
  /quotedblleft/quotedblright/bullet/endash/emdash
  /tilde/trademark/scaron/guilsinglright/oe/dotlessi
  159/Ydieresis 164/currency 166/brokenbar 168/dieresis/copyright
  /ordfeminine 172/logicalnot 174/registered/macron/ring
  177/plusminus/twosuperior/threesuperior/acute/mu
  183/periodcentered/cedilla/onesuperior/ordmasculine
  188/onequarter/onehalf/threequarters 192/Agrave/Aacute
  /Acircumflex/Atilde/Adieresis/Aring/AE/Ccedilla
  /Egrave/Eacute/Ecircumflex/Edieresis/Igrave/Iacute
  /Icircumflex/Idieresis/Eth/Ntilde/Ograve/Oacute
  /Ocircumflex/Otilde/Odieresis/multiply/Oslash
  /Ugrave/Uacute/Ucircumflex/Udieresis/Yacute/Thorn
  /germandbls/agrave/aacute/acircumflex/atilde/adieresis
  /aring/ae/ccedilla/egrave/eacute/ecircumflex
  /edieresis/igrave/iacute/icircumflex/idieresis
  /eth/ntilde/ograve/oacute/ocircumflex/otilde
  /odieresis/divide/oslash/ugrave/uacute/ucircumflex
  /udieresis/yacute/thorn/ydieresis
] def

/SymbolEncoding [
  32/space/exclam/universal/numbersign/existential/percent
  /ampersand/suchthat/parenleft/parenright/asteriskmath/plus
  /comma/minus/period/slash/zero/one/two/three/four/five/six
  /seven/eight/nine/colon/semicolon/less/equal/greater/question
  /congruent/Alpha/Beta/Chi/Delta/Epsilon/Phi/Gamma/Eta/Iota
  /theta1/Kappa/Lambda/Mu/Nu/Omicron/Pi/Theta/Rho/Sigma/Tau
  /Upsilon/sigma1/Omega/Xi/Psi/Zeta/bracketleft/therefore
  /bracketright/perpendicular/underscore/radicalex/alpha
  /beta/chi/delta/epsilon/phi/gamma/eta/iota/phi1/kappa/lambda
  /mu/nu/omicron/pi/theta/rho/sigma/tau/upsilon/omega1/omega
  /xi/psi/zeta/braceleft/bar/braceright/similar
  161/Upsilon1/minute/lessequal/fraction/infinity/florin/club
  /diamond/heart/spade/arrowboth/arrowleft/arrowup/arrowright
  /arrowdown/degree/plusminus/second/greaterequal/multiply
  /proportional/partialdiff/bullet/divide/notequal/equivalence
  /approxequal/ellipsis/arrowvertex/arrowhorizex/carriagereturn
  /aleph/Ifraktur/Rfraktur/weierstrass/circlemultiply
  /circleplus/emptyset/intersection/union/propersuperset
  /reflexsuperset/notsubset/propersubset/reflexsubset/element
  /notelement/angle/gradient/registerserif/copyrightserif
  /trademarkserif/product/radical/dotmath/logicalnot/logicaland
  /logicalor/arrowdblboth/arrowdblleft/arrowdblup/arrowdblright
  /arrowdbldown/lozenge/angleleft/registersans/copyrightsans
  /trademarksans/summation/parenlefttp/parenleftex/parenleftbt
  /bracketlefttp/bracketleftex/bracketleftbt/bracelefttp
  /braceleftmid/braceleftbt/braceex
  241/angleright/integral/integraltp/integralex/integralbt
  /parenrighttp/parenrightex/parenrightbt/bracketrighttp
  /bracketrightex/bracketrightbt/bracerighttp/bracerightmid
  /bracerightbt
] def

/patarray [
/leftdiagonal /rightdiagonal /crossdiagonal /horizontal
/vertical /crosshatch /fishscale /wave /brick
] def
/arrowtype 0 def
/fillC 0 def /fillM 0 def /fillY 0 def /fillK 0 def
/strokeC 0 def /strokeM 0 def /strokeY 0 def /strokeK 1 def
/pattern -1 def
/mat matrix def
/mat2 matrix def
/nesting 0 def
/deferred /N def
/c /curveto load def
/c2 { pop pop c } bind def
/C /curveto load def
/C2 { pop pop C } bind def
/e { gsave concat 0 0 moveto } bind def
/F {
  nesting 0 eq { %ifelse
    pattern -1 eq { %ifelse
      fillC fillM fillY fillK setcmykcolor eofill
    }{ %else
      gsave fillC fillM fillY fillK setcmykcolor eofill grestore
      0 0 0 1 setcmykcolor
      patarray pattern get findfont patternfill
    } ifelse
  }{ %else
    /deferred /F def
  } ifelse
} bind def
/f { closepath F } bind def
/K { /strokeK exch def /strokeY exch def
     /strokeM exch def /strokeC exch def } bind def
/k { /fillK exch def /fillY exch def
     /fillM exch def /fillC exch def } bind def
/opc { pop } bind def
/Opc { pop } bind def
/L /lineto load def
/L2 { pop pop L } bind def
/m /moveto load def
/m2 { pop pop m } bind def
/n /newpath load def
/N {
  nesting 0 eq { %ifelse
    newpath
  }{ %else
    /deferred /N def
  } ifelse
} def
/S {
  nesting 0 eq { %ifelse
    strokeC strokeM strokeY strokeK setcmykcolor stroke
  }{ %else
    /deferred /S def
  } ifelse
} bind def
/s { closepath S } bind def
/Tx { fillC fillM fillY fillK setcmykcolor show
      0 leading neg translate 0 0 moveto } bind def
/T { grestore } bind def
/TX { pop } bind def
/Ts { pop } bind def
/tal { pop } bind def
/tld { pop } bind def
/tbx { pop exch pop sub /jwidth exch def } def
/tpt { %def
  fillC fillM fillY fillK setcmykcolor
  moveto show
} bind def
/tpj { %def
  fillC fillM fillY fillK setcmykcolor
  moveto
  dup stringwidth pop
  3 -1 roll
  exch sub
  1 index spacecount
  dup 0 eq { %ifelse
    pop pop show
  }{ %else
    div 0 8#040 4 -1 roll widthshow
  } ifelse
} bind def
/u {} def
/U {} def
/*u { /nesting nesting 1 add def } def
/*U {
  /nesting nesting 1 sub def
  nesting 0 eq {
    deferred cvx exec
  } if
} def
/w /setlinewidth load def
/d /setdash load def
/B {
  nesting 0 eq { %ifelse
    gsave F grestore S
  }{ %else
    /deferred /B def
  } ifelse
} bind def
/b { closepath B } bind def
/z { /align exch def pop /leading exch def exch findfont
     exch scalefont setfont } bind def
/tfn { exch findfont
     exch scalefont setfont } bind def
/Pat { /pattern exch def } bind def
/cm { 6 array astore concat } bind def
/q { mat2 currentmatrix pop } bind def
/Q { mat2 setmatrix } bind def
/Ah {
  pop /arrowtype exch def
  currentlinewidth 5 1 roll arrowhead
} bind def
/Arc {
  mat currentmatrix pop
    translate scale 0 0 1 5 -2 roll arc
  mat setmatrix
} bind def
/Arc2 { pop pop Arc } bind def
/Bx {
  mat currentmatrix pop
    concat /y1 exch def /x1 exch def /y2 exch def /x2 exch def
    x1 y1 moveto x1 y2 lineto x2 y2 lineto x2 y1 lineto
  mat setmatrix
} bind def
/Rr {
  mat currentmatrix pop
    concat /yrad exch def /xrad exch def
    2 copy gt { exch } if /x2 exch def /x1 exch def
    2 copy gt { exch } if /y2 exch def /y1 exch def
    x1 xrad add y2 moveto
    matrix currentmatrix x1 xrad add y2 yrad sub translate xrad yrad scale
    0 0 1 90 -180 arc setmatrix
    matrix currentmatrix x1 xrad add y1 yrad add translate xrad yrad scale
    0 0 1 180 270 arc setmatrix
    matrix currentmatrix x2 xrad sub y1 yrad add translate xrad yrad scale
    0 0 1 270 0 arc setmatrix
    matrix currentmatrix x2 xrad sub y2 yrad sub translate xrad yrad scale
    0 0 1 0 90 arc setmatrix
    closepath
  mat setmatrix
} bind def
/Ov {
  mat currentmatrix pop
    concat translate scale 1 0 moveto 0 0 1 0 360 arc closepath
  mat setmatrix
} bind def
end
%%EndResource
%%EndProlog
%%BeginSetup
%PDX g 3 3 0 0
%%IncludeFont: TimesNewRomanPSMT
%%IncludeFont: ArialMT
%%IncludeFont: SymbolMT
PDXDict begin
%%EndSetup
%%Page: 1 1
%%BeginPageSetup
/_PDX_savepage save def

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 15 7.5 lineto
  0 7.5 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/rightdiagonal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 0 7.5 lineto
  15 7.5 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/leftdiagonal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 15 7.5 lineto
  2 setlinewidth stroke
} bind
/horizontal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/vertical true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 15 7.5 lineto
  7.5 0 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/crosshatch true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 30 7.5 lineto
  0 22.5 moveto 30 22.5 lineto
  7.5 0 moveto 7.5 7.5 lineto
  7.5 22.5 moveto 7.5 30 lineto
  22.5 7.5 moveto 22.5 22.5 lineto
  1 setlinewidth stroke
} bind
/brick true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 2 scale
  2 setlinecap
  7.5 0 moveto 15 7.5 lineto
  0 7.5 moveto 7.5 15 lineto
  7.5 0 moveto 0 7.5 lineto
  15 7.5 moveto 7.5 15 lineto
  0.5 setlinewidth stroke
} bind
/crossdiagonal true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 2 scale
  1 setlinecap
  0 7.5 moveto 0 15 7.5 270 360 arc
  7.5 15 moveto 15 15 7.5 180 270 arc
  0 7.5 moveto 7.5 7.5 7.5 180 360 arc
  0.5 setlinewidth stroke
} bind
/fishscale true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  1 setlinecap 0.5 setlinewidth
  7.5 0 10.6 135 45 arcn
  22.5 15 10.6 225 315 arc
  stroke
  7.5 15 10.6 135 45 arcn
  22.5 30 10.6 225 315 arc
  stroke
} bind
/wave true definepattern pop

WinAnsiEncoding /_TimesNewRomanPSMT /TimesNewRomanPSMT RE
WinAnsiEncoding /_ArialMT /ArialMT RE
SymbolEncoding /_SymbolMT /SymbolMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
116 259 moveto 116 575 lineto 496 575 lineto 496 259 lineto closepath clip
newpath
%%EndPageSetup
[0.1189 0 0 0.1132 457.9 524.6] e
243.552 -37.152 0 153.252 tbx
0 tal
189.2 tld
1 1 1 0 k
/_TimesNewRomanPSMT 172 tfn
( Ka) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
2.68344 w
1163.08 914.328 166.373 77.8319 [0.3101 0 0 -0.2879 96.75 565.1] Bx
s
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 914.328 m
1163.85 914.328 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 77.8319 m
1163.85 77.8319 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 914.328 m
1163.85 77.8319 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 914.328 m
167.14 904.501 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 77.8319 m
167.14 87.266 L
Q
S
[0.1189 0 0 0.1132 145.6 287.7] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(0) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
333.13 914.328 m
333.513 904.501 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
333.13 77.8319 m
333.513 87.266 L
Q
S
[0.1189 0 0 0.1132 191.5 287.7] e
152.9 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
499.886 77.8319 m
499.886 87.266 L
Q
S
[0.1189 0 0 0.1132 248.8 287.7] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(1) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
666.643 914.328 m
667.026 904.501 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
666.643 77.8319 m
667.026 87.266 L
Q
S
0 w
713.028 988.622 638.275 927.693 [0.3101 0 0 -0.2879 96.75 554.8] Bx
n
[0.1189 0 0 0.1132 294.7 287.7] e
152.9 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(1.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
2.68344 w
q
0.3101 0 0 -0.2879 96.75 565.1 cm
830.332 914.328 m
830.332 904.501 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
830.332 77.8319 m
830.332 87.266 L
Q
S
[0.1189 0 0 0.1132 351.3 287.7] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(2) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
996.706 914.328 m
996.706 904.501 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
996.706 77.8319 m
996.706 87.266 L
Q
S
[0.1189 0 0 0.1132 397.2 287.7] e
152.9 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(2.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 914.328 m
1163.85 904.501 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 77.8319 m
1163.85 87.266 L
Q
S
[0.1189 0 0 0.1132 454.7 287.7] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(3) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 914.328 m
175.957 914.328 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 914.328 m
1154.26 914.328 L
Q
S
[0.1189 0 0 0.1132 137.2 297.1] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(0) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 704.418 m
175.957 704.418 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 704.418 m
1154.26 704.418 L
Q
S
[0.1189 0 0 0.1132 126.3 357.6] e
152.9 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 497.259 m
175.957 498.045 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 497.259 m
1154.26 498.045 L
Q
S
[0.1189 0 0 0.1132 137.2 417] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(1) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 287.349 m
175.957 287.742 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 287.349 m
1154.26 287.742 L
Q
S
[0.1189 0 0 0.1132 126.3 477.4] e
152.9 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(1.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 77.8319 m
175.957 77.8319 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 77.8319 m
1154.26 77.8319 L
Q
S
[0.1189 0 0 0.1132 137.2 537.9] e
61.16 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(2) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 77.8319 m
1163.85 77.8319 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
1163.85 914.328 m
1163.85 77.8319 L
Q
S
1 1 -1.42109e-016 0 K
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 911.576 m
169.823 914.328 L
172.507 898.211 L
175.957 891.922 L
179.407 891.922 L
182.09 888.384 L
185.541 878.557 L
188.607 869.516 L
191.674 865.978 L
197.808 859.688 L
201.258 843.572 L
204.325 836.496 L
207.391 830.6 L
210.842 817.628 L
213.908 804.656 L
216.975 797.973 L
220.042 797.973 L
223.109 801.511 L
226.176 788.539 L
229.626 785.001 L
232.692 775.174 L
235.759 775.174 L
239.209 765.74 L
241.893 752.768 L
245.343 742.94 L
248.793 742.94 L
251.476 736.651 L
257.61 726.824 L
261.06 726.824 L
264.51 724.072 L
267.194 724.072 L
270.644 710.707 L
273.327 694.59 L
276.777 682.012 L
279.461 682.012 L
282.911 672.184 L
286.361 668.646 L
289.045 665.895 L
292.495 658.819 L
295.178 652.53 L
298.628 652.53 L
302.078 649.778 L
304.762 643.096 L
308.212 633.268 L
310.895 633.268 L
317.796 630.124 L
320.479 626.979 L
323.929 614.007 L
326.613 597.497 L
330.063 584.918 L
333.13 575.091 L
336.196 568.802 L
339.647 565.264 L
343.097 568.802 L
345.78 565.264 L
348.847 562.512 L
352.297 555.436 L
355.364 555.436 L
358.431 555.436 L
361.497 546.395 L
364.564 549.147 L
368.014 546.395 L
374.148 539.32 L
377.598 526.741 L
380.665 526.741 L
383.732 520.451 L
386.415 520.451 L
389.865 516.914 L
393.315 513.376 L
396.382 500.797 L
399.449 494.507 L
402.132 500.797 L
405.583 497.259 L
409.033 490.97 L
411.716 494.507 L
415.166 488.218 L
418.616 488.218 L
421.3 478.391 L
424.75 478.391 L
427.433 474.853 L
434.334 471.315 L
437.017 474.853 L
439.701 471.315 L
443.151 468.564 L
446.601 465.419 L
450.051 462.274 L
452.734 465.419 L
456.184 452.447 L
458.868 439.475 L
462.318 436.33 L
465.001 436.33 L
468.452 429.648 L
471.902 429.648 L
474.585 423.358 L
478.035 429.648 L
481.102 413.531 L
484.169 409.993 L
487.619 400.952 L
493.753 387.587 L
496.819 397.414 L
499.886 397.414 L
503.336 393.876 L
506.403 387.587 L
509.47 384.835 L
512.537 381.298 L
515.603 384.835 L
518.67 381.298 L
522.12 377.76 L
525.187 367.932 L
528.254 367.932 L
531.704 371.47 L
534.388 371.47 L
537.838 365.181 L
540.904 367.932 L
543.971 355.354 L
550.105 349.064 L
553.555 342.775 L
557.005 342.775 L
559.689 335.699 L
563.139 326.658 L
565.822 335.699 L
569.272 326.658 L
571.956 326.658 L
575.406 323.12 L
578.856 316.831 L
581.539 309.755 L
584.99 316.831 L
587.673 323.12 L
591.123 316.831 L
594.573 320.369 L
597.257 326.658 L
600.707 323.12 L
603.39 323.12 L
610.291 326.658 L
612.974 326.658 L
616.424 320.369 L
619.108 326.658 L
622.558 316.831 L
625.624 309.755 L
628.691 307.003 L
632.141 303.859 L
635.208 303.859 L
638.275 307.003 L
641.342 300.714 L
644.409 294.031 L
647.859 284.597 L
650.925 281.06 L
653.992 274.77 L
657.059 261.798 L
660.509 248.826 L
666.643 248.826 L
669.709 235.854 L
672.776 239.392 L
676.226 242.144 L
678.91 235.854 L
682.36 235.854 L
685.81 229.172 L
688.494 226.027 L
691.944 235.854 L
694.627 248.826 L
698.077 245.681 L
701.527 248.826 L
704.211 242.144 L
707.661 232.316 L
710.344 235.854 L
713.795 229.172 L
717.245 229.172 L
719.928 229.172 L
726.062 219.737 L
729.512 222.489 L
732.195 213.448 L
735.645 206.372 L
739.096 216.2 L
742.546 200.083 L
745.229 193.793 L
747.913 187.504 L
751.363 193.793 L
754.813 193.793 L
757.496 203.621 L
760.946 209.91 L
764.013 213.448 L
767.08 209.91 L
770.53 197.331 L
773.214 190.256 L
776.664 193.793 L
780.114 203.621 L
785.864 203.621 L
789.314 203.621 L
792.381 213.448 L
795.831 209.91 L
798.515 203.621 L
801.965 197.331 L
805.031 200.083 L
808.098 200.083 L
811.165 200.083 L
814.615 200.083 L
817.682 197.331 L
820.749 187.504 L
824.199 183.966 L
826.882 181.215 L
830.332 167.85 L
833.399 171.387 L
836.466 167.85 L
842.6 165.098 L
846.05 171.387 L
849.5 183.966 L
852.183 197.331 L
855.633 197.331 L
858.317 197.331 L
861.767 197.331 L
864.45 203.621 L
867.901 200.083 L
871.351 197.331 L
874.034 197.331 L
877.484 190.256 L
880.168 197.331 L
883.618 200.083 L
887.068 200.083 L
889.751 203.621 L
893.202 193.793 L
895.885 183.966 L
902.785 181.215 L
905.469 187.504 L
908.919 181.215 L
911.602 193.793 L
915.052 193.793 L
918.119 174.139 L
921.186 171.387 L
924.636 174.139 L
927.32 167.85 L
930.77 167.85 L
933.836 161.56 L
936.903 161.56 L
940.353 155.271 L
943.42 148.195 L
946.487 148.195 L
949.554 148.195 L
953.004 148.195 L
956.071 148.195 L
962.204 148.195 L
965.271 145.443 L
968.721 148.195 L
971.405 151.733 L
974.855 151.733 L
978.305 155.271 L
980.988 161.56 L
984.438 155.271 L
987.122 155.271 L
990.572 161.56 L
994.022 165.098 L
996.706 161.56 L
1000.16 174.139 L
1002.84 177.677 L
1006.29 183.966 L
1009.74 174.139 L
1012.42 174.139 L
1018.56 165.098 L
1022.01 161.56 L
1024.69 155.271 L
1028.14 158.808 L
1031.59 155.271 L
1034.27 161.56 L
1037.72 161.56 L
1040.41 165.098 L
1043.86 161.56 L
1047.31 167.85 L
1049.99 171.387 L
1053.44 167.85 L
1056.51 158.808 L
1059.57 155.271 L
1063.02 155.271 L
1065.71 151.733 L
1069.16 151.733 L
1072.23 139.154 L
1078.36 139.154 L
1081.81 132.864 L
1084.88 132.864 L
1088.33 135.616 L
1091.01 132.864 L
1094.08 125.789 L
1097.53 135.616 L
1100.59 139.154 L
1103.66 139.154 L
1107.11 135.616 L
1109.79 139.154 L
1113.24 141.906 L
1116.31 135.616 L
1119.38 141.906 L
1122.83 135.616 L
1125.89 129.327 L
1128.96 132.864 L
1131.64 129.327 L
1138.54 119.499 L
1141.99 119.499 L
1144.68 113.21 L
1147.36 113.21 L
1150.81 113.21 L
1154.26 113.21 L
1156.95 119.499 L
1160.4 123.037 L
1163.85 123.037 L
Q
S
1 0.498039 1 0 K
q
0.3101 0 0 -0.2879 96.75 565.1 cm
166.373 914.328 m
169.823 904.501 L
172.507 898.211 L
175.957 888.384 L
179.407 882.094 L
182.09 872.267 L
185.541 865.978 L
188.607 856.15 L
191.674 849.861 L
197.808 843.572 L
201.258 833.744 L
204.325 827.455 L
207.391 820.379 L
210.842 810.945 L
213.908 804.656 L
216.975 797.973 L
220.042 791.684 L
223.109 785.001 L
226.176 775.174 L
229.626 768.884 L
232.692 762.595 L
235.759 755.912 L
239.209 749.23 L
241.893 742.94 L
245.343 736.651 L
248.793 730.362 L
251.476 724.072 L
257.61 716.997 L
261.06 710.707 L
264.51 704.418 L
267.194 698.128 L
270.644 691.839 L
273.327 684.763 L
276.777 678.474 L
279.461 672.184 L
282.911 668.646 L
286.361 662.357 L
289.045 656.068 L
292.495 649.778 L
295.178 643.096 L
298.628 639.951 L
302.078 633.268 L
304.762 626.979 L
308.212 620.296 L
310.895 617.152 L
317.796 610.469 L
320.479 607.324 L
323.929 601.035 L
326.613 594.352 L
330.063 591.208 L
333.13 584.918 L
336.196 581.38 L
339.647 575.091 L
343.097 568.802 L
345.78 565.264 L
348.847 558.974 L
352.297 555.436 L
355.364 549.147 L
358.431 546.395 L
361.497 542.858 L
364.564 536.568 L
368.014 533.03 L
374.148 526.741 L
377.598 523.203 L
380.665 520.451 L
383.732 513.376 L
386.415 510.624 L
389.865 507.086 L
393.315 500.797 L
396.382 497.259 L
399.449 494.507 L
402.132 488.218 L
405.583 484.68 L
409.033 481.536 L
411.716 478.391 L
415.166 471.315 L
418.616 468.564 L
421.3 465.419 L
424.75 462.274 L
427.433 458.736 L
434.334 452.447 L
437.017 448.909 L
439.701 445.764 L
443.151 442.62 L
446.601 439.475 L
450.051 436.33 L
452.734 432.792 L
456.184 429.648 L
458.868 423.358 L
462.318 419.82 L
465.001 416.676 L
468.452 413.531 L
471.902 409.993 L
474.585 407.241 L
478.035 403.704 L
481.102 400.952 L
484.169 397.414 L
487.619 393.876 L
493.753 390.732 L
496.819 387.587 L
499.886 384.835 L
503.336 381.298 L
506.403 377.76 L
509.47 375.008 L
512.537 375.008 L
515.603 371.47 L
518.67 367.932 L
522.12 365.181 L
525.187 361.643 L
528.254 358.891 L
531.704 355.354 L
534.388 351.816 L
537.838 351.816 L
540.904 349.064 L
543.971 345.526 L
550.105 342.775 L
553.555 339.237 L
557.005 335.699 L
559.689 335.699 L
563.139 332.947 L
565.822 329.41 L
569.272 326.658 L
571.956 323.12 L
575.406 323.12 L
578.856 320.369 L
581.539 316.831 L
584.99 313.293 L
587.673 313.293 L
591.123 309.755 L
594.573 307.003 L
597.257 307.003 L
600.707 303.859 L
603.39 300.714 L
610.291 297.176 L
612.974 297.176 L
616.424 294.031 L
619.108 290.887 L
622.558 290.887 L
625.624 287.349 L
628.691 287.349 L
632.141 284.597 L
635.208 281.06 L
638.275 281.06 L
641.342 277.915 L
644.409 274.77 L
647.859 274.77 L
650.925 271.232 L
653.992 271.232 L
657.059 268.088 L
660.509 264.943 L
666.643 264.943 L
669.709 261.798 L
672.776 261.798 L
676.226 258.26 L
678.91 258.26 L
682.36 255.116 L
685.81 251.971 L
688.494 251.971 L
691.944 248.826 L
694.627 248.826 L
698.077 245.681 L
701.527 245.681 L
704.211 242.144 L
707.661 242.144 L
710.344 239.392 L
713.795 239.392 L
717.245 235.854 L
719.928 235.854 L
726.062 232.316 L
729.512 232.316 L
732.195 229.172 L
735.645 229.172 L
739.096 226.027 L
742.546 226.027 L
745.229 222.489 L
747.913 222.489 L
751.363 222.489 L
754.813 219.737 L
757.496 219.737 L
760.946 216.2 L
764.013 216.2 L
767.08 213.448 L
770.53 213.448 L
773.214 213.448 L
776.664 209.91 L
780.114 209.91 L
785.864 206.372 L
789.314 206.372 L
792.381 206.372 L
795.831 203.621 L
798.515 203.621 L
801.965 200.083 L
805.031 200.083 L
808.098 200.083 L
811.165 197.331 L
814.615 197.331 L
817.682 193.793 L
820.749 193.793 L
824.199 193.793 L
826.882 190.256 L
830.332 190.256 L
833.399 190.256 L
836.466 187.504 L
842.6 187.504 L
846.05 187.504 L
849.5 183.966 L
852.183 183.966 L
855.633 183.966 L
858.317 181.215 L
861.767 181.215 L
864.45 181.215 L
867.901 177.677 L
871.351 177.677 L
874.034 177.677 L
877.484 174.139 L
880.168 174.139 L
883.618 174.139 L
887.068 174.139 L
889.751 171.387 L
893.202 171.387 L
895.885 171.387 L
902.785 167.85 L
905.469 167.85 L
908.919 167.85 L
911.602 167.85 L
915.052 165.098 L
918.119 165.098 L
921.186 165.098 L
924.636 161.56 L
927.32 161.56 L
930.77 161.56 L
933.836 161.56 L
936.903 158.808 L
940.353 158.808 L
943.42 158.808 L
946.487 158.808 L
949.554 155.271 L
953.004 155.271 L
956.071 155.271 L
962.204 155.271 L
965.271 151.733 L
968.721 151.733 L
971.405 151.733 L
974.855 151.733 L
978.305 151.733 L
980.988 148.195 L
984.438 148.195 L
987.122 148.195 L
990.572 148.195 L
994.022 145.443 L
996.706 145.443 L
1000.16 145.443 L
1002.84 145.443 L
1006.29 145.443 L
1009.74 141.906 L
1012.42 141.906 L
1018.56 141.906 L
1022.01 141.906 L
1024.69 141.906 L
1028.14 139.154 L
1031.59 139.154 L
1034.27 139.154 L
1037.72 139.154 L
1040.41 139.154 L
1043.86 135.616 L
1047.31 135.616 L
1049.99 135.616 L
1053.44 135.616 L
1056.51 135.616 L
1059.57 135.616 L
1063.02 132.864 L
1065.71 132.864 L
1069.16 132.864 L
1072.23 132.864 L
1078.36 132.864 L
1081.81 132.864 L
1084.88 129.327 L
1088.33 129.327 L
1091.01 129.327 L
1094.08 129.327 L
1097.53 129.327 L
1100.59 129.327 L
1103.66 125.789 L
1107.11 125.789 L
1109.79 125.789 L
1113.24 125.789 L
1116.31 125.789 L
1119.38 125.789 L
1122.83 125.789 L
1125.89 123.037 L
1128.96 123.037 L
1131.64 123.037 L
1138.54 123.037 L
1141.99 123.037 L
1144.68 123.037 L
1147.36 123.037 L
1150.81 119.499 L
1154.26 119.499 L
1156.95 119.499 L
1160.4 119.499 L
1163.85 119.499 L
Q
S
[0.1189 0 0 0.1132 168.7 554.6] e
2084.94 -23.32 0 99.55 tbx
0 tal
121 tld
1 1 1 0 k
/_ArialMT 110 tfn
(Measured step response  and fitted model ) 0 0 tpt
T
[0.1189 0 0 0.1132 269.5 271.8] e
562.32 -23.32 0 99.55 tbx
0 tal
121 tld
/_ArialMT 110 tfn
(Time in sec) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
1 1 1 0 K
3.45013 w
q
0.3101 0 0 -0.2879 96.75 565.1 cm
490.302 902.928 m
490.302 902.928 L
Q
S
q
0.3101 0 0 -0.2879 96.75 565.1 cm
490.302 902.928 m
490.302 902.928 L
Q
S
1 1 1 0 k
0 w
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 905.287 m
665.876 905.287 L
666.643 905.68 L
667.026 906.466 L
667.026 906.466 L
667.793 905.68 L
668.176 905.287 L
668.943 904.501 L
668.943 904.501 L
668.943 890.742 L
668.176 890.349 L
667.793 889.563 L
667.026 889.17 L
667.026 889.17 L
666.643 889.563 L
665.876 890.349 L
665.493 890.742 L
665.493 891.135 L
665.493 905.287 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 880.915 m
665.876 880.915 L
666.643 881.701 L
667.026 882.094 L
667.026 882.094 L
667.793 881.701 L
668.176 880.915 L
668.943 880.522 L
668.943 880.522 L
668.943 866.371 L
668.176 865.978 L
667.793 865.192 L
667.026 864.798 L
667.026 864.798 L
666.643 865.192 L
665.876 865.978 L
665.493 866.371 L
665.493 867.157 L
665.493 880.915 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 856.544 m
665.876 856.544 L
666.643 857.33 L
667.026 857.723 L
667.026 857.723 L
667.793 857.33 L
668.176 856.544 L
668.943 856.15 L
668.943 856.15 L
668.943 842.392 L
668.176 841.606 L
667.793 841.213 L
667.026 840.427 L
667.026 840.427 L
666.643 841.213 L
665.876 841.606 L
665.493 842.392 L
665.493 842.785 L
665.493 856.544 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 832.565 m
665.876 832.565 L
666.643 832.958 L
667.026 833.744 L
667.026 833.744 L
667.793 832.958 L
668.176 832.565 L
668.943 831.779 L
668.943 831.779 L
668.943 818.021 L
668.176 817.628 L
667.793 816.841 L
667.026 816.448 L
667.026 816.448 L
666.643 816.841 L
665.876 817.628 L
665.493 818.021 L
665.493 818.807 L
665.493 832.565 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 808.193 m
665.876 808.193 L
666.643 808.98 L
667.026 809.373 L
667.026 809.373 L
667.793 808.98 L
668.176 808.193 L
668.943 807.8 L
668.943 807.8 L
668.943 793.649 L
668.176 793.256 L
667.793 792.47 L
667.026 792.077 L
667.026 792.077 L
666.643 792.47 L
665.876 793.256 L
665.493 793.649 L
665.493 794.435 L
665.493 808.193 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 783.822 m
665.876 783.822 L
666.643 784.608 L
667.026 785.001 L
667.026 785.001 L
667.793 784.608 L
668.176 783.822 L
668.943 783.429 L
668.943 783.429 L
668.943 769.671 L
668.176 768.884 L
667.793 768.491 L
667.026 767.705 L
667.026 767.705 L
666.643 768.491 L
665.876 768.884 L
665.493 769.671 L
665.493 770.064 L
665.493 783.822 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 759.843 m
665.876 759.843 L
666.643 760.236 L
667.026 761.023 L
667.026 761.023 L
667.793 760.236 L
668.176 759.843 L
668.943 759.057 L
668.943 759.057 L
668.943 745.299 L
668.176 744.906 L
667.793 744.12 L
667.026 743.727 L
667.026 743.727 L
666.643 744.12 L
665.876 744.906 L
665.493 745.299 L
665.493 746.085 L
665.493 759.843 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 735.472 m
665.876 735.472 L
666.643 736.258 L
667.026 736.651 L
667.026 736.651 L
667.793 736.258 L
668.176 735.472 L
668.943 735.079 L
668.943 735.079 L
668.943 721.321 L
668.176 720.534 L
667.793 720.141 L
667.026 719.355 L
667.026 719.355 L
666.643 720.141 L
665.876 720.534 L
665.493 721.321 L
665.493 721.714 L
665.493 735.472 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 711.493 m
665.876 711.493 L
666.643 711.886 L
667.026 712.279 L
667.026 712.279 L
667.793 711.886 L
668.176 711.493 L
668.943 710.707 L
668.943 710.707 L
668.943 696.949 L
668.176 696.163 L
667.793 695.77 L
667.026 694.984 L
667.026 694.984 L
666.643 695.77 L
665.876 696.163 L
665.493 696.949 L
665.493 697.342 L
665.493 711.493 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 687.122 m
665.876 687.122 L
666.643 687.515 L
667.026 688.301 L
667.026 688.301 L
667.793 687.515 L
668.176 687.122 L
668.943 686.336 L
668.943 686.336 L
668.943 672.577 L
668.176 672.184 L
667.793 671.398 L
667.026 671.005 L
667.026 671.005 L
666.643 671.398 L
665.876 672.184 L
665.493 672.577 L
665.493 673.364 L
665.493 687.122 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 662.75 m
665.876 662.75 L
666.643 663.536 L
667.026 663.929 L
667.026 663.929 L
667.793 663.536 L
668.176 662.75 L
668.943 662.357 L
668.943 662.357 L
668.943 648.599 L
668.176 647.813 L
667.793 647.42 L
667.026 646.633 L
667.026 646.633 L
666.643 647.42 L
665.876 647.813 L
665.493 648.599 L
665.493 648.992 L
665.493 662.75 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 638.772 m
665.876 638.772 L
666.643 639.165 L
667.026 639.951 L
667.026 639.951 L
667.793 639.165 L
668.176 638.772 L
668.943 637.985 L
668.943 637.985 L
668.943 624.227 L
668.176 623.441 L
667.793 623.048 L
667.026 622.655 L
667.026 622.655 L
666.643 623.048 L
665.876 623.441 L
665.493 624.227 L
665.493 624.62 L
665.493 638.772 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 614.4 m
665.876 614.4 L
666.643 614.793 L
667.026 615.579 L
667.026 615.579 L
667.793 614.793 L
668.176 614.4 L
668.943 614.007 L
668.943 614.007 L
668.943 599.856 L
668.176 599.463 L
667.793 598.676 L
667.026 598.283 L
667.026 598.283 L
666.643 598.676 L
665.876 599.463 L
665.493 599.856 L
665.493 600.642 L
665.493 614.4 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 590.028 m
665.876 590.028 L
666.643 590.815 L
667.026 591.208 L
667.026 591.208 L
667.793 590.815 L
668.176 590.028 L
668.943 589.635 L
668.943 589.635 L
668.943 575.877 L
668.176 575.091 L
667.793 574.698 L
667.026 573.912 L
667.026 573.912 L
666.643 574.698 L
665.876 575.091 L
665.493 575.877 L
665.493 576.27 L
665.493 590.028 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 566.05 m
665.876 566.05 L
666.643 566.443 L
667.026 567.229 L
667.026 567.229 L
667.793 566.443 L
668.176 566.05 L
668.943 565.264 L
668.943 565.264 L
668.943 551.506 L
668.176 551.112 L
667.793 550.326 L
667.026 549.933 L
667.026 549.933 L
666.643 550.326 L
665.876 551.112 L
665.493 551.506 L
665.493 551.899 L
665.493 566.05 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 541.678 m
665.876 541.678 L
666.643 542.464 L
667.026 542.858 L
667.026 542.858 L
667.793 542.464 L
668.176 541.678 L
668.943 541.285 L
668.943 541.285 L
668.943 527.134 L
668.176 526.741 L
667.793 525.955 L
667.026 525.562 L
667.026 525.562 L
666.643 525.955 L
665.876 526.741 L
665.493 527.134 L
665.493 527.92 L
665.493 541.678 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 517.307 m
665.876 517.307 L
666.643 518.093 L
667.026 518.486 L
667.026 518.486 L
667.793 518.093 L
668.176 517.307 L
668.943 516.914 L
668.943 516.914 L
668.943 503.155 L
668.176 502.369 L
667.793 501.976 L
667.026 501.19 L
667.026 501.19 L
666.643 501.976 L
665.876 502.369 L
665.493 503.155 L
665.493 503.549 L
665.493 517.307 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 493.328 m
665.876 493.328 L
666.643 493.721 L
667.026 494.507 L
667.026 494.507 L
667.793 493.721 L
668.176 493.328 L
668.943 492.542 L
668.943 492.542 L
668.943 478.784 L
668.176 478.391 L
667.793 477.605 L
667.026 477.212 L
667.026 477.212 L
666.643 477.605 L
665.876 478.391 L
665.493 478.784 L
665.493 479.57 L
665.493 493.328 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 468.957 m
665.876 468.957 L
666.643 469.743 L
667.026 470.136 L
667.026 470.136 L
667.793 469.743 L
668.176 468.957 L
668.943 468.564 L
668.943 468.564 L
668.943 454.412 L
668.176 454.019 L
667.793 453.626 L
667.026 452.84 L
667.026 452.84 L
666.643 453.626 L
665.876 454.019 L
665.493 454.412 L
665.493 455.198 L
665.493 468.957 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 444.978 m
665.876 444.978 L
666.643 445.371 L
667.026 445.764 L
667.026 445.764 L
667.793 445.371 L
668.176 444.978 L
668.943 444.192 L
668.943 444.192 L
668.943 430.434 L
668.176 429.648 L
667.793 429.255 L
667.026 428.468 L
667.026 428.468 L
666.643 429.255 L
665.876 429.648 L
665.493 430.434 L
665.493 430.827 L
665.493 444.978 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 420.607 m
665.876 420.607 L
666.643 421 L
667.026 421.786 L
667.026 421.786 L
667.793 421 L
668.176 420.607 L
668.943 419.82 L
668.943 419.82 L
668.943 406.062 L
668.176 405.669 L
667.793 404.883 L
667.026 404.49 L
667.026 404.49 L
666.643 404.883 L
665.876 405.669 L
665.493 406.062 L
665.493 406.848 L
665.493 420.607 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 396.235 m
665.876 396.235 L
666.643 397.021 L
667.026 397.414 L
667.026 397.414 L
667.793 397.021 L
668.176 396.235 L
668.943 395.842 L
668.943 395.842 L
668.943 382.084 L
668.176 381.298 L
667.793 380.904 L
667.026 380.118 L
667.026 380.118 L
666.643 380.904 L
665.876 381.298 L
665.493 382.084 L
665.493 382.477 L
665.493 396.235 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 372.256 m
665.876 372.256 L
666.643 372.65 L
667.026 373.436 L
667.026 373.436 L
667.793 372.65 L
668.176 372.256 L
668.943 371.47 L
668.943 371.47 L
668.943 357.712 L
668.176 356.926 L
667.793 356.533 L
667.026 356.14 L
667.026 356.14 L
666.643 356.533 L
665.876 356.926 L
665.493 357.712 L
665.493 358.105 L
665.493 372.256 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 347.885 m
665.876 347.885 L
666.643 348.278 L
667.026 349.064 L
667.026 349.064 L
667.793 348.278 L
668.176 347.885 L
668.943 347.099 L
668.943 347.099 L
668.943 333.34 L
668.176 332.947 L
667.793 332.161 L
667.026 331.768 L
667.026 331.768 L
666.643 332.161 L
665.876 332.947 L
665.493 333.34 L
665.493 334.127 L
665.493 347.885 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 323.513 m
665.876 323.513 L
666.643 324.299 L
667.026 324.693 L
667.026 324.693 L
667.793 324.299 L
668.176 323.513 L
668.943 323.12 L
668.943 323.12 L
668.943 309.362 L
668.176 308.576 L
667.793 308.183 L
667.026 307.397 L
667.026 307.397 L
666.643 308.183 L
665.876 308.576 L
665.493 309.362 L
665.493 309.755 L
665.493 323.513 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 299.535 m
665.876 299.535 L
666.643 299.928 L
667.026 300.714 L
667.026 300.714 L
667.793 299.928 L
668.176 299.535 L
668.943 298.749 L
668.943 298.749 L
668.943 284.99 L
668.176 284.597 L
667.793 283.811 L
667.026 283.418 L
667.026 283.418 L
666.643 283.811 L
665.876 284.597 L
665.493 284.99 L
665.493 285.383 L
665.493 299.535 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 275.163 m
665.876 275.163 L
666.643 275.949 L
667.026 276.342 L
667.026 276.342 L
667.793 275.949 L
668.176 275.163 L
668.943 274.77 L
668.943 274.77 L
668.943 260.619 L
668.176 260.226 L
667.793 259.44 L
667.026 259.046 L
667.026 259.046 L
666.643 259.44 L
665.876 260.226 L
665.493 260.619 L
665.493 261.405 L
665.493 275.163 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 250.792 m
665.876 250.792 L
666.643 251.578 L
667.026 251.971 L
667.026 251.971 L
667.793 251.578 L
668.176 250.792 L
668.943 250.398 L
668.943 250.398 L
668.943 236.64 L
668.176 235.854 L
667.793 235.461 L
667.026 234.675 L
667.026 234.675 L
666.643 235.461 L
665.876 235.854 L
665.493 236.64 L
665.493 237.033 L
665.493 250.792 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 226.813 m
665.876 226.813 L
666.643 227.206 L
667.026 227.992 L
667.026 227.992 L
667.793 227.206 L
668.176 226.813 L
668.943 226.027 L
668.943 226.027 L
668.943 212.269 L
668.176 211.876 L
667.793 211.089 L
667.026 210.696 L
667.026 210.696 L
666.643 211.089 L
665.876 211.876 L
665.493 212.269 L
665.493 213.055 L
665.493 226.813 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 202.441 m
665.876 202.441 L
666.643 203.228 L
667.026 203.621 L
667.026 203.621 L
667.793 203.228 L
668.176 202.441 L
668.943 202.048 L
668.943 202.048 L
668.943 187.897 L
668.176 187.504 L
667.793 187.111 L
667.026 186.325 L
667.026 186.325 L
666.643 187.111 L
665.876 187.504 L
665.493 187.897 L
665.493 188.683 L
665.493 202.441 L
Q
f
q
0.3101 0 0 -0.2879 96.75 565.1 cm
665.493 178.07 m
665.876 178.07 L
666.643 178.856 L
667.026 179.249 L
667.026 179.249 L
667.793 178.856 L
668.176 178.07 L
668.943 177.677 L
668.943 177.677 L
668.943 163.919 L
668.176 163.132 L
667.793 162.739 L
667.026 161.953 L
667.026 161.953 L
666.643 162.739 L
665.876 163.132 L
665.493 163.919 L
665.493 164.312 L
665.493 178.07 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
3.45013 w
q
0.3101 0 0 -0.2879 96.75 565.1 cm
666.643 157.629 m
666.643 207.552 L
Q
S
1 1 1 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
648.625 206.372 m
667.026 244.502 L
685.043 206.372 L
648.625 206.372 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
667.026 323.12 m
667.026 298.355 L
Q
S
1 1 1 0 k
q
0.3101 0 0 -0.2879 96.75 565.1 cm
685.81 299.928 m
667.026 261.798 L
649.009 300.714 L
685.81 299.928 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 K
0.383348 w
737.562 902.535 617.191 843.572 [0.3101 0 0 -0.2879 94.94 575.3] Bx
b
[0.1189 0 0 0.1132 291.2 318.2] e
238.266 -26.352 0 108.702 tbx
0 tal
134.2 tld
1 1 1 0 k
/_TimesNewRomanPSMT 122 tfn
(t=kT) 0 0 tpt
T
[0.1189 0 0 0.1132 312.4 478.3] e
64.533 -32.34 0 147.735 tbx
0 tal
161.7 tld
/_SymbolMT 147 tfn
(e) 0 0 tpt
T
[0.1189 0 0 0.1132 319.9 477.9] e
261.219 -31.752 0 130.977 tbx
0 tal
161.7 tld
/_TimesNewRomanPSMT 147 tfn
(\(kT\)) 0 0 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
