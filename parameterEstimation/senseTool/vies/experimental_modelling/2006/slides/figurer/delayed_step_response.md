%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: delayed_setp_response.md
%%CreationDate: Wed Feb 01 11:46:26 2006
%%BoundingBox: 130 299 471 560
%%DocumentFonts: SymbolMT
%%+ ArialMT
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
%%IncludeFont: SymbolMT
%%IncludeFont: ArialMT
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

SymbolEncoding /_SymbolMT /SymbolMT RE
WinAnsiEncoding /_ArialMT /ArialMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
130 299 moveto 130 560 lineto 471 560 lineto 471 299 lineto closepath clip
newpath
%%EndPageSetup
[0.1237 0 0 0.1124 226.4 482.8] e
58.387 -29.26 0 133.665 tbx
0 tal
146.3 tld
1 1 1 0 k
/_SymbolMT 133 tfn
(t) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
3.01075 w
1162.15 911.488 164.731 76.9068 [0.2876 0 0 -0.2367 118.5 540.4] Bx
s
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 911.963 m
1162.58 911.963 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 76.9068 m
1162.58 76.9068 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 911.963 m
1162.58 76.9068 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 911.963 m
1162.58 911.963 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 911.963 m
164.731 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 76.9068 m
164.731 87.351 L
Q
S
[0.1237 0 0 0.1124 163.2 311.1] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(0) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
307.527 911.963 m
307.527 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
307.527 76.9068 m
307.527 87.351 L
Q
S
[0.1237 0 0 0.1124 198.7 311.1] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
449.892 911.963 m
449.892 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
449.892 76.9068 m
449.892 87.351 L
Q
S
[0.1237 0 0 0.1124 245.2 311.1] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(1) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
592.258 911.963 m
592.258 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
592.258 76.9068 m
592.258 87.351 L
Q
S
[0.1237 0 0 0.1124 280.7 311.1] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(1.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
735.054 911.963 m
735.054 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
735.054 76.9068 m
735.054 87.351 L
Q
S
[0.1237 0 0 0.1124 327.2 311.1] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(2) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
877.419 911.963 m
877.419 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
877.419 76.9068 m
877.419 87.351 L
Q
S
[0.1237 0 0 0.1124 362.7 311.1] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(2.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1020.22 911.963 m
1020.22 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1020.22 76.9068 m
1020.22 87.351 L
Q
S
[0.1237 0 0 0.1124 409.2 311.1] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(3) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 911.963 m
1162.58 901.519 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 76.9068 m
1162.58 87.351 L
Q
S
[0.1237 0 0 0.1124 444.7 311.1] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(3.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 911.963 m
174.194 911.963 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 911.963 m
1153.12 911.963 L
Q
S
[0.1237 0 0 0.1124 140.4 321.6] e
33.3 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(-) 0 0 tpt
T
[0.1237 0 0 0.1124 144.5 321.6] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
/_ArialMT 100 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 743.907 m
174.194 744.382 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 743.907 m
1153.12 744.382 L
Q
S
[0.1237 0 0 0.1124 154 361.4] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(0) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 576.326 m
174.194 576.801 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 576.326 m
1153.12 576.801 L
Q
S
[0.1237 0 0 0.1124 144 401.1] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 412.069 m
174.194 412.543 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 412.069 m
1153.12 412.543 L
Q
S
[0.1237 0 0 0.1124 154 440] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(1) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 244.488 m
174.194 244.488 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 244.488 m
1153.12 244.488 L
Q
S
[0.1237 0 0 0.1124 144 479.6] e
139 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(1.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 76.9068 m
174.194 76.9068 L
Q
S
q
0.2876 0 0 -0.2367 118.5 540.4 cm
1162.58 76.9068 m
1153.12 76.9068 L
Q
S
[0.1237 0 0 0.1124 154 519.3] e
55.6 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(2) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 76.9068 m
1162.58 76.9068 L
Q
S
1 1 -1.42109e-016 0 K
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 740.584 m
167.742 743.907 L
170.753 736.786 L
174.194 740.584 L
177.204 736.786 L
180.645 743.907 L
180.645 747.705 L
183.656 751.028 L
187.097 747.705 L
190.108 740.584 L
193.118 740.584 L
196.559 743.907 L
199.57 740.584 L
202.581 743.907 L
206.021 747.705 L
209.032 743.907 L
212.043 747.705 L
215.484 743.907 L
218.495 743.907 L
221.505 736.786 L
224.946 726.342 L
227.957 726.342 L
230.968 733.463 L
234.409 733.463 L
237.419 736.786 L
237.419 740.584 L
240.86 736.786 L
243.871 736.786 L
247.312 736.786 L
250.323 730.14 L
253.333 723.019 L
256.774 740.584 L
259.785 740.584 L
262.796 726.342 L
266.237 712.575 L
266.237 719.696 L
269.247 723.019 L
272.258 677.445 L
275.699 691.687 L
278.71 677.445 L
281.72 688.363 L
285.161 684.566 L
288.172 674.121 L
291.183 667 L
294.624 656.556 L
294.624 653.233 L
297.634 649.91 L
301.075 632.345 L
304.086 629.022 L
307.527 618.103 L
310.538 629.022 L
313.548 621.901 L
316.989 621.901 L
320 614.78 L
323.011 618.103 L
326.452 610.982 L
329.462 610.982 L
332.473 604.336 L
335.914 597.215 L
338.925 583.447 L
341.935 573.003 L
345.376 562.559 L
348.387 565.882 L
351.398 562.559 L
354.839 569.205 L
357.849 562.559 L
361.29 551.64 L
364.301 548.317 L
367.312 548.317 L
370.753 541.196 L
373.763 534.55 L
376.774 527.429 L
380.215 524.106 L
380.215 527.429 L
383.226 516.985 L
386.237 506.541 L
389.677 496.096 L
392.688 488.975 L
395.699 485.652 L
399.14 488.975 L
402.151 492.299 L
405.161 496.096 L
408.602 492.299 L
408.602 481.854 L
411.613 468.087 L
415.054 464.764 L
418.065 457.643 L
421.505 454.32 L
424.516 450.522 L
427.527 440.078 L
430.968 429.634 L
433.978 429.634 L
436.989 425.836 L
440.43 429.634 L
443.441 425.836 L
446.452 415.392 L
449.892 415.392 L
452.903 412.069 L
455.914 408.745 L
459.355 408.745 L
462.366 412.069 L
465.376 408.745 L
468.817 404.948 L
471.828 401.624 L
475.269 391.18 L
478.28 398.301 L
481.72 401.624 L
484.731 401.624 L
487.742 398.301 L
491.183 391.18 L
494.194 377.413 L
497.204 366.494 L
500.645 356.05 L
503.656 356.05 L
506.667 359.848 L
510.108 352.727 L
513.118 345.606 L
516.129 338.96 L
519.57 342.283 L
522.581 331.839 L
522.581 324.718 L
525.591 321.395 L
529.032 314.274 L
532.043 318.071 L
535.484 318.071 L
538.495 318.071 L
541.935 307.153 L
544.946 303.829 L
547.957 310.95 L
551.398 318.071 L
554.409 324.718 L
557.419 310.95 L
560.86 310.95 L
563.871 307.153 L
566.882 314.274 L
570.323 307.153 L
573.333 300.032 L
576.344 289.587 L
579.785 279.143 L
582.796 275.82 L
585.806 275.82 L
589.247 258.255 L
592.258 275.82 L
595.699 265.376 L
598.71 265.376 L
601.72 254.932 L
605.161 251.609 L
608.172 240.69 L
608.172 251.609 L
611.183 254.932 L
614.624 247.811 L
617.634 254.932 L
620.645 258.255 L
624.086 251.609 L
627.097 251.609 L
630.108 240.69 L
633.548 247.811 L
636.559 234.044 L
636.559 240.69 L
640 234.044 L
643.011 234.044 L
646.021 240.69 L
649.462 240.69 L
652.473 240.69 L
655.914 240.69 L
658.925 244.488 L
661.935 247.811 L
661.935 240.69 L
665.376 240.69 L
668.387 223.599 L
671.398 216.478 L
674.839 206.034 L
677.849 202.711 L
680.86 195.59 L
684.301 202.711 L
687.312 209.357 L
690.323 202.711 L
693.763 198.913 L
693.763 188.469 L
696.774 188.469 L
699.785 192.267 L
703.226 195.59 L
706.237 188.469 L
709.677 195.59 L
712.688 195.59 L
716.129 185.146 L
719.14 185.146 L
722.151 181.348 L
725.591 174.227 L
728.602 167.581 L
731.613 170.904 L
735.054 160.46 L
738.065 153.339 L
741.075 170.904 L
744.516 160.46 L
747.527 153.339 L
750.538 153.339 L
753.979 153.339 L
756.989 160.46 L
760 163.783 L
763.441 170.904 L
766.452 170.904 L
769.892 160.46 L
772.903 150.016 L
776.344 146.693 L
776.344 157.137 L
779.355 153.339 L
782.366 163.783 L
785.806 163.783 L
788.817 163.783 L
791.828 160.46 L
795.269 150.016 L
798.28 160.46 L
801.29 160.46 L
804.731 167.581 L
807.742 174.227 L
807.742 167.581 L
810.753 160.46 L
814.194 163.783 L
817.204 160.46 L
820.215 150.016 L
823.656 157.137 L
826.667 150.016 L
830.108 150.016 L
833.118 157.137 L
836.129 163.783 L
836.129 178.025 L
839.57 178.025 L
842.581 174.227 L
845.591 174.227 L
849.032 167.581 L
852.043 170.904 L
855.054 163.783 L
858.495 160.46 L
861.505 160.46 L
864.516 170.904 L
867.957 170.904 L
870.968 174.227 L
874.409 174.227 L
877.419 157.137 L
880.43 157.137 L
883.871 163.783 L
886.882 157.137 L
890.323 163.783 L
893.333 160.46 L
893.333 142.895 L
896.344 146.693 L
899.785 146.693 L
902.796 136.248 L
905.806 142.895 L
909.247 146.693 L
912.258 146.693 L
915.269 139.572 L
918.71 139.572 L
921.72 139.572 L
924.731 142.895 L
928.172 139.572 L
931.183 139.572 L
934.194 136.248 L
937.634 132.451 L
940.645 139.572 L
944.086 129.127 L
947.097 129.127 L
950.538 136.248 L
950.538 129.127 L
953.548 125.804 L
956.559 129.127 L
960 129.127 L
963.011 129.127 L
966.021 139.572 L
969.462 136.248 L
972.473 139.572 L
975.484 125.804 L
975.484 129.127 L
978.925 122.006 L
981.935 114.885 L
984.946 111.562 L
988.387 111.562 L
991.398 108.239 L
994.409 118.683 L
997.849 122.006 L
1000.86 129.127 L
1004.3 125.804 L
1007.31 136.248 L
1007.31 150.016 L
1010.75 150.016 L
1013.76 132.451 L
1016.77 132.451 L
1020.22 122.006 L
1023.23 129.127 L
1026.24 129.127 L
1029.68 118.683 L
1032.69 111.562 L
1035.7 108.239 L
1039.14 111.562 L
1042.15 108.239 L
1045.16 101.118 L
1048.6 104.441 L
1051.61 108.239 L
1054.62 104.441 L
1058.06 97.7951 L
1061.08 108.239 L
1064.52 114.885 L
1064.52 108.239 L
1067.53 122.006 L
1070.54 122.006 L
1073.98 125.804 L
1076.99 132.451 L
1080 129.127 L
1083.44 118.683 L
1086.45 118.683 L
1089.46 129.127 L
1092.9 118.683 L
1092.9 122.006 L
1095.91 114.885 L
1098.92 122.006 L
1102.37 122.006 L
1105.38 118.683 L
Q
S
1 0.498039 1 0 K
q
0.2876 0 0 -0.2367 118.5 540.4 cm
164.731 743.907 m
167.742 743.907 L
170.753 743.907 L
174.194 743.907 L
177.204 743.907 L
180.645 743.907 L
183.656 743.907 L
187.097 743.907 L
190.108 743.907 L
193.118 743.907 L
196.559 743.907 L
199.57 743.907 L
202.581 743.907 L
206.021 743.907 L
209.032 743.907 L
212.043 743.907 L
215.484 743.907 L
218.495 743.907 L
221.505 743.907 L
224.946 743.907 L
227.957 743.907 L
230.968 743.907 L
234.409 743.907 L
237.419 743.907 L
240.86 743.907 L
243.871 743.907 L
247.312 743.907 L
250.323 743.907 L
253.333 736.786 L
256.774 730.14 L
259.785 726.342 L
262.796 719.696 L
266.237 712.575 L
266.237 705.454 L
269.247 698.808 L
272.258 691.687 L
275.699 688.363 L
278.71 681.242 L
281.72 674.121 L
285.161 670.798 L
288.172 663.677 L
291.183 656.556 L
294.624 653.233 L
294.624 646.112 L
297.634 639.466 L
301.075 635.668 L
304.086 629.022 L
307.527 625.224 L
310.538 618.103 L
313.548 610.982 L
316.989 607.659 L
320 600.538 L
323.011 597.215 L
323.011 590.094 L
326.452 586.771 L
329.462 583.447 L
332.473 576.326 L
335.914 573.003 L
338.925 565.882 L
341.935 562.559 L
345.376 555.438 L
348.387 551.64 L
351.398 548.317 L
351.398 541.196 L
354.839 537.873 L
357.849 534.55 L
361.29 527.429 L
364.301 524.106 L
367.312 520.308 L
370.753 516.985 L
373.763 509.864 L
376.774 506.541 L
380.215 503.217 L
380.215 499.42 L
383.226 496.096 L
386.237 488.975 L
389.677 485.652 L
392.688 481.854 L
395.699 478.531 L
399.14 475.208 L
402.151 471.41 L
405.161 464.764 L
408.602 460.966 L
408.602 457.643 L
411.613 454.32 L
415.054 450.522 L
418.065 447.199 L
421.505 443.876 L
424.516 440.078 L
427.527 436.755 L
430.968 432.957 L
433.978 429.634 L
436.989 425.836 L
436.989 422.513 L
440.43 419.19 L
443.441 415.392 L
446.452 412.069 L
449.892 408.745 L
452.903 404.948 L
455.914 401.624 L
459.355 398.301 L
462.366 394.503 L
465.376 391.18 L
468.817 387.857 L
471.828 384.059 L
475.269 380.736 L
478.28 377.413 L
481.72 373.615 L
484.731 370.292 L
487.742 366.494 L
491.183 366.494 L
494.194 363.171 L
494.194 359.848 L
497.204 356.05 L
500.645 352.727 L
503.656 352.727 L
506.667 349.404 L
510.108 345.606 L
513.118 342.283 L
516.129 338.96 L
519.57 338.96 L
522.581 335.162 L
522.581 331.839 L
525.591 328.516 L
529.032 328.516 L
532.043 324.718 L
535.484 321.395 L
538.495 321.395 L
541.935 318.071 L
544.946 314.274 L
547.957 314.274 L
551.398 310.95 L
554.409 307.153 L
557.419 303.829 L
560.86 300.032 L
563.871 300.032 L
566.882 296.708 L
570.323 293.385 L
573.333 293.385 L
576.344 289.587 L
579.785 286.264 L
582.796 282.941 L
585.806 282.941 L
589.247 279.143 L
592.258 279.143 L
595.699 275.82 L
598.71 272.497 L
601.72 272.497 L
605.161 268.699 L
608.172 265.376 L
611.183 265.376 L
614.624 262.053 L
617.634 262.053 L
620.645 258.255 L
624.086 258.255 L
627.097 254.932 L
630.108 254.932 L
633.548 251.609 L
636.559 247.811 L
640 247.811 L
643.011 244.488 L
646.021 244.488 L
649.462 240.69 L
652.473 240.69 L
655.914 237.367 L
658.925 237.367 L
661.935 234.044 L
665.376 230.246 L
668.387 230.246 L
671.398 230.246 L
674.839 226.923 L
677.849 226.923 L
680.86 223.599 L
684.301 223.599 L
687.312 219.802 L
690.323 219.802 L
693.763 216.478 L
696.774 216.478 L
699.785 213.155 L
703.226 213.155 L
706.237 213.155 L
709.677 209.357 L
712.688 209.357 L
716.129 206.034 L
719.14 206.034 L
722.151 202.711 L
725.591 202.711 L
728.602 202.711 L
731.613 198.913 L
735.054 198.913 L
738.065 198.913 L
741.075 195.59 L
744.516 195.59 L
747.527 192.267 L
750.538 192.267 L
753.979 192.267 L
756.989 188.469 L
760 188.469 L
763.441 188.469 L
766.452 185.146 L
769.892 185.146 L
772.903 185.146 L
776.344 181.348 L
779.355 181.348 L
782.366 178.025 L
785.806 178.025 L
788.817 178.025 L
791.828 178.025 L
795.269 174.227 L
798.28 174.227 L
801.29 174.227 L
804.731 170.904 L
807.742 170.904 L
810.753 170.904 L
814.194 167.581 L
817.204 167.581 L
820.215 167.581 L
823.656 167.581 L
826.667 163.783 L
830.108 163.783 L
833.118 163.783 L
836.129 160.46 L
839.57 160.46 L
842.581 160.46 L
845.591 160.46 L
849.032 157.137 L
852.043 157.137 L
855.054 157.137 L
858.495 157.137 L
861.505 153.339 L
864.516 153.339 L
867.957 153.339 L
870.968 153.339 L
874.409 150.016 L
877.419 150.016 L
880.43 150.016 L
883.871 150.016 L
886.882 150.016 L
890.323 146.693 L
893.333 146.693 L
896.344 146.693 L
899.785 146.693 L
902.796 142.895 L
905.806 142.895 L
909.247 142.895 L
912.258 142.895 L
915.269 142.895 L
918.71 139.572 L
921.72 139.572 L
924.731 139.572 L
928.172 139.572 L
931.183 139.572 L
934.194 136.248 L
937.634 136.248 L
940.645 136.248 L
944.086 136.248 L
947.097 136.248 L
950.538 132.451 L
953.548 132.451 L
956.559 132.451 L
960 132.451 L
963.011 132.451 L
966.021 132.451 L
969.462 129.127 L
972.473 129.127 L
975.484 129.127 L
978.925 129.127 L
981.935 129.127 L
984.946 125.804 L
988.387 125.804 L
991.398 125.804 L
994.409 125.804 L
997.849 125.804 L
1000.86 125.804 L
1004.3 125.804 L
1007.31 122.006 L
1010.75 122.006 L
1013.76 122.006 L
1016.77 122.006 L
1020.22 122.006 L
1023.23 122.006 L
1026.24 122.006 L
1029.68 118.683 L
1032.69 118.683 L
1035.7 118.683 L
1039.14 118.683 L
1042.15 118.683 L
1045.16 118.683 L
1048.6 118.683 L
1051.61 118.683 L
1054.62 114.885 L
1058.06 114.885 L
1061.08 114.885 L
1064.52 114.885 L
1067.53 114.885 L
1070.54 114.885 L
1073.98 114.885 L
1076.99 114.885 L
1080 111.562 L
1083.44 111.562 L
1086.45 111.562 L
1089.46 111.562 L
1092.9 111.562 L
1095.91 111.562 L
1098.92 111.562 L
1102.37 111.562 L
1105.38 111.562 L
Q
S
[0.1237 0 0 0.1124 171.3 540.2] e
2095.4 -21.2 0 90.5 tbx
0 tal
110 tld
1 1 1 0 k
/_ArialMT 100 tfn
(Measured step response  and model with delay) 0 0 tpt
T
[0.1237 0 0 0.1124 277.5 423.4] e
364.221 -24.804 0 105.885 tbx
0 tal
128.7 tld
/_ArialMT 117 tfn
(0.63 %) 0 0 tpt
T
[0.1237 0 0 0.1124 175.4 482.4] e
71.487 -24.804 0 105.885 tbx
0 tal
128.7 tld
/_ArialMT 117 tfn
(T) 0 0 tpt
T
1 1 1 0 K
0 w
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 365.07 m
526.882 364.595 L
526.452 364.121 L
526.021 363.646 L
525.591 363.171 L
525.591 363.171 L
525.161 363.646 L
524.731 364.121 L
524.301 364.595 L
524.301 375.514 L
524.301 375.989 L
524.731 376.464 L
525.161 376.938 L
525.591 377.413 L
526.021 377.413 L
526.452 376.938 L
526.882 376.464 L
526.882 375.989 L
526.882 365.07 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 384.534 m
526.882 384.059 L
526.882 383.585 L
526.452 383.11 L
526.021 383.11 L
525.591 383.11 L
525.161 383.11 L
524.731 383.585 L
524.301 384.059 L
524.301 386.908 L
524.301 387.382 L
524.731 387.857 L
525.161 388.332 L
525.591 388.807 L
526.021 388.807 L
526.452 388.332 L
526.882 387.857 L
526.882 387.382 L
526.882 384.534 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 395.928 m
526.882 395.453 L
526.882 394.978 L
526.452 394.503 L
526.021 394.503 L
525.591 394.503 L
525.161 394.503 L
524.731 394.978 L
524.301 395.453 L
524.301 406.847 L
524.301 407.321 L
524.731 407.796 L
525.161 408.271 L
525.591 408.745 L
526.021 408.745 L
526.452 408.271 L
526.882 407.796 L
526.882 407.321 L
526.882 395.928 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 415.866 m
526.882 415.392 L
526.882 414.917 L
526.452 414.442 L
526.021 414.442 L
525.591 414.442 L
525.161 414.442 L
524.731 414.917 L
524.301 415.392 L
524.301 418.24 L
524.301 418.715 L
524.731 419.19 L
525.161 419.664 L
525.591 420.139 L
526.021 420.139 L
526.452 419.664 L
526.882 419.19 L
526.882 418.715 L
526.882 415.866 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 427.26 m
526.882 426.785 L
526.882 426.311 L
526.452 425.836 L
526.021 425.836 L
525.591 425.836 L
525.161 425.836 L
524.731 426.311 L
524.301 426.785 L
524.301 438.179 L
524.301 438.654 L
524.731 439.128 L
525.161 439.603 L
525.591 440.078 L
526.021 440.078 L
526.452 439.603 L
526.882 439.128 L
526.882 438.654 L
526.882 427.26 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 447.199 m
526.882 446.724 L
526.882 446.249 L
526.452 445.775 L
526.021 445.775 L
525.591 445.775 L
525.161 445.775 L
524.731 446.249 L
524.301 446.724 L
524.301 449.573 L
524.301 450.047 L
524.731 450.522 L
525.161 450.997 L
525.591 451.471 L
526.021 451.471 L
526.452 450.997 L
526.882 450.522 L
526.882 450.047 L
526.882 447.199 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 458.592 m
526.882 458.118 L
526.882 457.643 L
526.452 457.168 L
526.021 457.168 L
525.591 457.168 L
525.161 457.168 L
524.731 457.643 L
524.301 458.118 L
524.301 469.511 L
524.301 469.986 L
524.731 470.461 L
525.161 470.936 L
525.591 471.41 L
526.021 471.41 L
526.452 470.936 L
526.882 470.461 L
526.882 469.986 L
526.882 458.592 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 478.531 m
526.882 478.057 L
526.882 477.582 L
526.452 477.107 L
526.021 477.107 L
525.591 477.107 L
525.161 477.107 L
524.731 477.582 L
524.301 478.057 L
524.301 480.905 L
524.301 481.38 L
524.731 481.854 L
525.161 482.329 L
525.591 482.804 L
526.021 482.804 L
526.452 482.329 L
526.882 481.854 L
526.882 481.38 L
526.882 478.531 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 489.925 m
526.882 489.45 L
526.882 488.975 L
526.452 488.501 L
526.021 488.501 L
525.591 488.501 L
525.161 488.501 L
524.731 488.975 L
524.301 489.45 L
524.301 500.844 L
524.301 501.319 L
524.731 501.793 L
525.161 502.268 L
525.591 502.743 L
526.021 502.743 L
526.452 502.268 L
526.882 501.793 L
526.882 501.319 L
526.882 489.925 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 509.864 m
526.882 509.389 L
526.882 508.914 L
526.452 508.44 L
526.021 508.44 L
525.591 508.44 L
525.161 508.44 L
524.731 508.914 L
524.301 509.389 L
524.301 512.237 L
524.301 512.712 L
524.731 513.187 L
525.161 513.662 L
525.591 514.136 L
526.021 514.136 L
526.452 513.662 L
526.882 513.187 L
526.882 512.712 L
526.882 509.864 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 521.257 m
526.882 520.783 L
526.882 520.308 L
526.452 519.833 L
526.021 519.833 L
525.591 519.833 L
525.161 519.833 L
524.731 520.308 L
524.301 520.783 L
524.301 532.176 L
524.301 532.651 L
524.731 533.126 L
525.161 533.6 L
525.591 534.075 L
526.021 534.075 L
526.452 533.6 L
526.882 533.126 L
526.882 532.651 L
526.882 521.257 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 541.196 m
526.882 540.721 L
526.882 540.247 L
526.452 539.772 L
526.021 539.772 L
525.591 539.772 L
525.161 539.772 L
524.731 540.247 L
524.301 540.721 L
524.301 543.57 L
524.301 544.044 L
524.731 544.519 L
525.161 544.994 L
525.591 545.469 L
526.021 545.469 L
526.452 544.994 L
526.882 544.519 L
526.882 544.044 L
526.882 541.196 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 552.59 m
526.882 552.115 L
526.882 551.64 L
526.452 551.166 L
526.021 551.166 L
525.591 551.166 L
525.161 551.166 L
524.731 551.64 L
524.301 552.115 L
524.301 563.509 L
524.301 563.983 L
524.731 564.458 L
525.161 564.933 L
525.591 565.408 L
526.021 565.408 L
526.452 564.933 L
526.882 564.458 L
526.882 563.983 L
526.882 552.59 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 572.529 m
526.882 572.054 L
526.882 571.579 L
526.452 571.104 L
526.021 571.104 L
525.591 571.104 L
525.161 571.104 L
524.731 571.579 L
524.301 572.054 L
524.301 574.902 L
524.301 575.377 L
524.731 575.852 L
525.161 576.326 L
525.591 576.801 L
526.021 576.801 L
526.452 576.326 L
526.882 575.852 L
526.882 575.377 L
526.882 572.529 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 583.922 m
526.882 583.447 L
526.882 582.973 L
526.452 582.498 L
526.021 582.498 L
525.591 582.498 L
525.161 582.498 L
524.731 582.973 L
524.301 583.447 L
524.301 594.841 L
524.301 595.316 L
524.731 595.79 L
525.161 596.265 L
525.591 596.74 L
526.021 596.74 L
526.452 596.265 L
526.882 595.79 L
526.882 595.316 L
526.882 583.922 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 603.861 m
526.882 603.386 L
526.882 602.911 L
526.452 602.437 L
526.021 602.437 L
525.591 602.437 L
525.161 602.437 L
524.731 602.911 L
524.301 603.386 L
524.301 606.235 L
524.301 606.709 L
524.731 607.184 L
525.161 607.659 L
525.591 608.134 L
526.021 608.134 L
526.452 607.659 L
526.882 607.184 L
526.882 606.709 L
526.882 603.861 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 615.255 m
526.882 614.78 L
526.882 614.305 L
526.452 613.83 L
526.021 613.83 L
525.591 613.83 L
525.161 613.83 L
524.731 614.305 L
524.301 614.78 L
524.301 626.173 L
524.301 626.648 L
524.731 627.123 L
525.161 627.598 L
525.591 628.072 L
526.021 628.072 L
526.452 627.598 L
526.882 627.123 L
526.882 626.648 L
526.882 615.255 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 635.193 m
526.882 634.719 L
526.882 634.244 L
526.452 633.769 L
526.021 633.769 L
525.591 633.769 L
525.161 633.769 L
524.731 634.244 L
524.301 634.719 L
524.301 637.567 L
524.301 638.042 L
524.731 638.516 L
525.161 638.991 L
525.591 639.466 L
526.021 639.466 L
526.452 638.991 L
526.882 638.516 L
526.882 638.042 L
526.882 635.193 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 646.587 m
526.882 646.112 L
526.882 645.637 L
526.452 645.163 L
526.021 645.163 L
525.591 645.163 L
525.161 645.163 L
524.731 645.637 L
524.301 646.112 L
524.301 657.506 L
524.301 657.981 L
524.731 658.455 L
525.161 658.93 L
525.591 659.405 L
526.021 659.405 L
526.452 658.93 L
526.882 658.455 L
526.882 657.981 L
526.882 646.587 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 666.526 m
526.882 666.051 L
526.882 665.576 L
526.452 665.102 L
526.021 665.102 L
525.591 665.102 L
525.161 665.102 L
524.731 665.576 L
524.301 666.051 L
524.301 668.899 L
524.301 669.374 L
524.731 669.849 L
525.161 670.324 L
525.591 670.798 L
526.021 670.798 L
526.452 670.324 L
526.882 669.849 L
526.882 669.374 L
526.882 666.526 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
526.882 677.919 m
526.882 677.445 L
526.882 676.97 L
526.452 676.495 L
526.021 676.495 L
525.591 676.495 L
525.161 676.495 L
524.731 676.97 L
524.301 677.445 L
524.301 688.838 L
524.301 689.313 L
524.731 689.788 L
525.161 690.262 L
525.591 690.737 L
526.021 690.737 L
526.452 690.262 L
526.882 689.788 L
526.882 689.313 L
526.882 677.919 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
539.785 366.019 m
525.591 335.162 L
511.828 366.019 L
539.785 366.019 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
511.828 695.484 m
525.591 726.342 L
539.785 695.484 L
511.828 695.484 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
295.054 333.263 m
294.624 333.263 L
294.194 333.738 L
293.763 334.212 L
293.333 334.687 L
293.333 334.687 L
293.763 335.162 L
294.194 335.637 L
294.624 336.111 L
304.516 336.111 L
304.946 336.111 L
305.376 336.111 L
305.806 335.637 L
306.237 335.162 L
306.237 334.687 L
305.806 334.212 L
305.376 333.738 L
304.946 333.263 L
295.054 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
312.688 333.263 m
312.258 333.263 L
311.828 333.738 L
311.398 334.212 L
311.398 334.687 L
311.398 335.162 L
311.398 335.637 L
311.828 336.111 L
312.258 336.111 L
314.839 336.111 L
315.269 336.111 L
315.699 336.111 L
316.129 335.637 L
316.559 335.162 L
316.559 334.687 L
316.129 334.212 L
315.699 333.738 L
315.269 333.263 L
312.688 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
323.011 333.263 m
322.581 333.263 L
322.151 333.738 L
321.72 334.212 L
321.72 334.687 L
321.72 335.162 L
321.72 335.637 L
322.151 336.111 L
322.581 336.111 L
332.903 336.111 L
333.333 336.111 L
333.763 336.111 L
334.194 335.637 L
334.624 335.162 L
334.624 334.687 L
334.194 334.212 L
333.763 333.738 L
333.333 333.263 L
323.011 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
341.075 333.263 m
340.645 333.263 L
340.215 333.738 L
339.785 334.212 L
339.785 334.687 L
339.785 335.162 L
339.785 335.637 L
340.215 336.111 L
340.645 336.111 L
343.226 336.111 L
343.656 336.111 L
344.086 336.111 L
344.516 335.637 L
344.946 335.162 L
344.946 334.687 L
344.516 334.212 L
344.086 333.738 L
343.656 333.263 L
341.075 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
351.398 333.263 m
350.968 333.263 L
350.538 333.738 L
350.108 334.212 L
350.108 334.687 L
350.108 335.162 L
350.108 335.637 L
350.538 336.111 L
350.968 336.111 L
361.29 336.111 L
361.72 336.111 L
362.151 336.111 L
362.581 335.637 L
363.011 335.162 L
363.011 334.687 L
362.581 334.212 L
362.151 333.738 L
361.72 333.263 L
351.398 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
369.462 333.263 m
369.032 333.263 L
368.602 333.738 L
368.172 334.212 L
368.172 334.687 L
368.172 335.162 L
368.172 335.637 L
368.602 336.111 L
369.032 336.111 L
371.613 336.111 L
372.043 336.111 L
372.473 336.111 L
372.903 335.637 L
373.333 335.162 L
373.333 334.687 L
372.903 334.212 L
372.473 333.738 L
372.043 333.263 L
369.462 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
379.785 333.263 m
379.355 333.263 L
378.925 333.738 L
378.495 334.212 L
378.495 334.687 L
378.495 335.162 L
378.495 335.637 L
378.925 336.111 L
379.355 336.111 L
389.677 336.111 L
390.108 336.111 L
390.538 336.111 L
390.968 335.637 L
391.398 335.162 L
391.398 334.687 L
390.968 334.212 L
390.538 333.738 L
390.108 333.263 L
379.785 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
397.849 333.263 m
397.419 333.263 L
396.989 333.738 L
396.559 334.212 L
396.559 334.687 L
396.559 335.162 L
396.559 335.637 L
396.989 336.111 L
397.419 336.111 L
400 336.111 L
400.43 336.111 L
400.86 336.111 L
401.29 335.637 L
401.72 335.162 L
401.72 334.687 L
401.29 334.212 L
400.86 333.738 L
400.43 333.263 L
397.849 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
408.172 333.263 m
407.742 333.263 L
407.312 333.738 L
406.882 334.212 L
406.882 334.687 L
406.882 335.162 L
406.882 335.637 L
407.312 336.111 L
407.742 336.111 L
418.065 336.111 L
418.495 336.111 L
418.925 336.111 L
419.355 335.637 L
419.785 335.162 L
419.785 334.687 L
419.355 334.212 L
418.925 333.738 L
418.495 333.263 L
408.172 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
426.237 333.263 m
425.806 333.263 L
425.376 333.738 L
424.946 334.212 L
424.946 334.687 L
424.946 335.162 L
424.946 335.637 L
425.376 336.111 L
425.806 336.111 L
428.387 336.111 L
428.817 336.111 L
429.247 336.111 L
429.677 335.637 L
430.108 335.162 L
430.108 334.687 L
429.677 334.212 L
429.247 333.738 L
428.817 333.263 L
426.237 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
436.559 333.263 m
436.129 333.263 L
435.699 333.738 L
435.269 334.212 L
435.269 334.687 L
435.269 335.162 L
435.269 335.637 L
435.699 336.111 L
436.129 336.111 L
446.452 336.111 L
446.882 336.111 L
447.312 336.111 L
447.742 335.637 L
448.172 335.162 L
448.172 334.687 L
447.742 334.212 L
447.312 333.738 L
446.882 333.263 L
436.559 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
454.624 333.263 m
454.194 333.263 L
453.763 333.738 L
453.333 334.212 L
453.333 334.687 L
453.333 335.162 L
453.333 335.637 L
453.763 336.111 L
454.194 336.111 L
456.774 336.111 L
457.204 336.111 L
457.634 336.111 L
458.065 335.637 L
458.495 335.162 L
458.495 334.687 L
458.065 334.212 L
457.634 333.738 L
457.204 333.263 L
454.624 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
464.946 333.263 m
464.516 333.263 L
464.086 333.738 L
463.656 334.212 L
463.656 334.687 L
463.656 335.162 L
463.656 335.637 L
464.086 336.111 L
464.516 336.111 L
474.839 336.111 L
475.269 336.111 L
475.699 336.111 L
476.129 335.637 L
476.559 335.162 L
476.559 334.687 L
476.129 334.212 L
475.699 333.738 L
475.269 333.263 L
464.946 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
483.011 333.263 m
482.581 333.263 L
482.151 333.738 L
481.72 334.212 L
481.72 334.687 L
481.72 335.162 L
481.72 335.637 L
482.151 336.111 L
482.581 336.111 L
485.161 336.111 L
485.591 336.111 L
486.022 336.111 L
486.452 335.637 L
486.882 335.162 L
486.882 334.687 L
486.452 334.212 L
486.022 333.738 L
485.591 333.263 L
483.011 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
493.333 333.263 m
492.903 333.263 L
492.473 333.738 L
492.043 334.212 L
492.043 334.687 L
492.043 335.162 L
492.043 335.637 L
492.473 336.111 L
492.903 336.111 L
498.495 336.111 L
498.495 336.111 L
498.925 335.637 L
499.355 335.162 L
499.785 334.687 L
499.785 334.687 L
499.355 334.212 L
498.925 333.738 L
498.925 333.263 L
493.333 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
295.914 319.496 m
267.527 335.162 L
295.914 350.353 L
295.914 319.496 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
497.634 350.353 m
525.591 335.162 L
497.634 319.496 L
497.634 350.353 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
198.28 333.263 m
197.849 333.263 L
197.419 333.738 L
196.989 334.212 L
196.559 334.687 L
196.559 334.687 L
196.989 335.162 L
197.419 335.637 L
197.849 336.111 L
207.742 336.111 L
208.172 336.111 L
208.602 336.111 L
209.032 335.637 L
209.462 335.162 L
209.462 334.687 L
209.032 334.212 L
208.602 333.738 L
208.172 333.263 L
198.28 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
215.914 333.263 m
215.484 333.263 L
215.054 333.738 L
214.624 334.212 L
214.624 334.687 L
214.624 335.162 L
214.624 335.637 L
215.054 336.111 L
215.484 336.111 L
218.065 336.111 L
218.495 336.111 L
218.925 336.111 L
219.355 335.637 L
219.785 335.162 L
219.785 334.687 L
219.355 334.212 L
218.925 333.738 L
218.495 333.263 L
215.914 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
226.237 333.263 m
225.806 333.263 L
225.376 333.738 L
224.946 334.212 L
224.946 334.687 L
224.946 335.162 L
224.946 335.637 L
225.376 336.111 L
225.806 336.111 L
236.129 336.111 L
236.559 336.111 L
236.989 336.111 L
237.419 335.637 L
237.849 335.162 L
237.849 334.687 L
237.419 334.212 L
236.989 333.738 L
236.559 333.263 L
226.237 333.263 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
199.14 319.496 m
171.183 335.162 L
199.14 350.353 L
199.14 319.496 L
Q
f
q
0.2876 0 0 -0.2367 118.5 540.4 cm
239.57 350.353 m
267.527 335.162 L
239.57 319.496 L
239.57 350.353 L
Q
f
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
