%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: step_response_measured.md
%%CreationDate: Thu Feb 02 10:19:22 2006
%%BoundingBox: 127 267 485 568
%%DocumentFonts: ArialMT
%%+ TimesNewRomanPSMT
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
%%IncludeFont: ArialMT
%%IncludeFont: TimesNewRomanPSMT
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

WinAnsiEncoding /_ArialMT /ArialMT RE
WinAnsiEncoding /_TimesNewRomanPSMT /TimesNewRomanPSMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
127 267 moveto 127 568 lineto 485 568 lineto 485 267 lineto closepath clip
newpath
%%EndPageSetup
2.88939 w
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 913.983 m
1163.6 913.983 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 77.8578 m
1163.6 77.8578 L
Q
S
q
0.2879 0 0 -0.2676 110.4 554.8 cm
166.346 913.983 m
167.172 77.8578 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 913.983 m
1163.6 77.8578 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 913.983 m
167.172 904.251 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 77.8578 m
167.172 87.1669 L
Q
S
[0.1188 0 0 0.1132 156.4 295.9] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(0) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
333.105 913.983 m
333.518 904.251 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
333.105 77.8578 m
333.518 87.1669 L
Q
S
[0.1188 0 0 0.1132 199 295.9] e
141.78 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
499.865 77.8578 m
499.865 87.1669 L
Q
S
[0.1188 0 0 0.1132 252.2 295.9] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(1) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
666.624 913.983 m
667.036 904.251 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
666.624 77.8578 m
667.036 87.1669 L
Q
S
[0.1188 0 0 0.1132 294.9 295.9] e
141.78 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(1.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
830.081 913.983 m
830.081 904.251 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
830.081 77.8578 m
830.081 87.1669 L
Q
S
[0.1188 0 0 0.1132 347.3 295.9] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(2) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
996.84 913.983 m
996.84 904.251 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
996.84 77.8578 m
996.84 87.1669 L
Q
S
[0.1188 0 0 0.1132 389.8 295.9] e
141.78 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(2.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 913.983 m
1163.6 904.251 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 77.8578 m
1163.6 87.1669 L
Q
S
[0.1188 0 0 0.1132 443.3 295.9] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(3) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 913.983 m
176.253 913.983 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 913.983 m
1154.11 913.983 L
Q
S
[0.1188 0 0 0.1132 147.2 304.6] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(0) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 704.106 m
176.253 704.106 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 704.106 m
1154.11 704.106 L
Q
S
[0.1188 0 0 0.1132 137.2 362] e
141.78 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(0.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 497.19 m
176.253 497.613 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 497.19 m
1154.11 497.613 L
Q
S
[0.1188 0 0 0.1132 147.2 417.2] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(1) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 287.312 m
176.253 287.736 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 287.312 m
1154.11 287.736 L
Q
S
[0.1188 0 0 0.1132 137.2 473.4] e
141.78 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(1.5) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 77.8578 m
176.253 77.8578 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 77.8578 m
1154.11 77.8578 L
Q
S
[0.1188 0 0 0.1132 147.2 529.5] e
56.712 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(2) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 77.8578 m
1163.6 77.8578 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
1163.6 913.983 m
1163.6 77.8578 L
Q
S
1 1 -1.42109e-016 0 K
q
0.2879 0 0 -0.2676 111 554.8 cm
166.346 911.021 m
170.061 913.983 L
172.538 897.904 L
176.253 891.557 L
179.555 891.557 L
182.032 888.172 L
185.747 878.44 L
188.223 869.131 L
191.938 865.745 L
198.13 859.398 L
201.432 842.896 L
204.321 836.126 L
207.623 830.202 L
210.926 817.084 L
213.815 804.39 L
217.117 797.62 L
220.006 797.62 L
223.309 801.005 L
226.198 788.311 L
229.5 784.926 L
232.802 775.193 L
235.692 775.193 L
238.994 765.038 L
241.883 752.344 L
245.185 742.612 L
248.488 742.612 L
251.377 736.264 L
257.569 726.532 L
260.871 726.532 L
264.173 723.57 L
267.062 723.57 L
270.364 710.453 L
273.254 694.374 L
276.556 681.679 L
279.445 681.679 L
282.747 671.947 L
286.462 668.562 L
288.939 665.6 L
292.654 658.407 L
295.131 652.06 L
298.846 652.06 L
302.148 649.521 L
305.037 643.174 L
308.339 633.018 L
311.229 633.018 L
317.833 629.633 L
320.722 626.671 L
324.025 613.554 L
326.914 597.474 L
330.216 584.78 L
333.105 575.048 L
336.408 568.701 L
339.71 565.316 L
343.012 568.701 L
345.901 565.316 L
348.791 562.354 L
352.093 555.16 L
355.395 555.16 L
358.284 555.16 L
361.587 546.274 L
364.476 548.813 L
367.778 546.274 L
373.97 539.081 L
377.272 526.387 L
380.987 526.387 L
383.463 520.04 L
386.353 520.04 L
389.655 516.655 L
392.957 513.269 L
396.672 500.575 L
399.149 494.228 L
402.038 500.575 L
405.34 497.19 L
409.055 490.843 L
411.532 494.228 L
415.247 487.881 L
418.549 487.881 L
421.438 478.149 L
424.74 478.149 L
427.63 474.764 L
434.234 470.955 L
437.124 474.764 L
440.013 470.955 L
443.315 468.417 L
446.617 465.455 L
449.919 462.069 L
452.809 465.455 L
456.111 451.914 L
459 439.22 L
462.302 435.835 L
465.192 435.835 L
468.494 429.488 L
471.796 429.488 L
474.686 423.141 L
477.988 429.488 L
480.877 413.408 L
484.179 410.023 L
487.481 400.714 L
493.673 387.597 L
496.562 397.329 L
499.865 397.329 L
503.579 393.944 L
506.056 387.597 L
509.771 384.635 L
512.248 381.25 L
515.963 384.635 L
518.439 381.25 L
522.154 377.864 L
525.456 367.709 L
528.346 367.709 L
531.648 371.517 L
534.537 371.517 L
537.839 365.17 L
541.142 367.709 L
544.031 355.015 L
550.223 349.091 L
553.525 342.744 L
556.827 342.744 L
559.716 335.55 L
563.018 326.241 L
565.908 335.55 L
569.21 326.241 L
572.099 326.241 L
575.401 322.856 L
578.704 316.509 L
581.593 309.739 L
584.895 316.509 L
587.785 322.856 L
591.087 316.509 L
594.389 319.894 L
597.278 326.241 L
600.58 322.856 L
603.47 322.856 L
610.074 326.241 L
612.964 326.241 L
616.266 319.894 L
619.155 326.241 L
622.457 316.509 L
625.347 309.739 L
628.649 306.777 L
632.364 303.815 L
634.84 303.815 L
638.555 306.777 L
641.032 300.43 L
644.747 294.083 L
648.049 284.35 L
650.938 280.965 L
654.241 274.618 L
657.13 261.924 L
660.432 248.383 L
666.624 248.383 L
669.926 235.689 L
672.815 239.498 L
676.117 242.036 L
679.007 235.689 L
682.309 235.689 L
685.611 228.919 L
688.5 225.957 L
691.803 235.689 L
694.692 248.383 L
697.994 245.845 L
701.296 248.383 L
704.186 242.036 L
707.488 232.304 L
710.377 235.689 L
713.679 228.919 L
716.982 228.919 L
719.871 228.919 L
726.063 219.61 L
729.365 222.572 L
732.254 213.263 L
735.556 206.493 L
739.271 216.225 L
742.573 200.145 L
745.05 193.798 L
747.939 187.451 L
751.242 193.798 L
754.956 193.798 L
757.433 203.531 L
761.148 209.878 L
763.625 213.263 L
767.34 209.878 L
770.642 197.183 L
773.531 190.413 L
776.833 193.798 L
780.135 203.531 L
785.914 203.531 L
789.216 203.531 L
792.519 213.263 L
795.821 209.878 L
798.71 203.531 L
802.012 197.183 L
804.902 200.145 L
808.204 200.145 L
811.093 200.145 L
814.395 200.145 L
817.698 197.183 L
820.587 187.451 L
823.889 184.066 L
826.778 181.104 L
830.081 167.987 L
833.383 171.372 L
836.272 167.987 L
842.464 165.025 L
845.766 171.372 L
849.481 184.066 L
851.957 197.183 L
855.672 197.183 L
858.149 197.183 L
861.864 197.183 L
864.341 203.531 L
868.055 200.145 L
871.358 197.183 L
874.247 197.183 L
877.549 190.413 L
880.439 197.183 L
883.741 200.145 L
887.043 200.145 L
889.932 203.531 L
893.234 193.798 L
896.124 184.066 L
902.728 181.104 L
905.618 187.451 L
908.92 181.104 L
911.809 193.798 L
915.111 193.798 L
918.001 174.334 L
921.303 171.372 L
924.605 174.334 L
927.494 167.987 L
930.797 167.987 L
933.686 161.64 L
936.988 161.64 L
940.29 155.293 L
943.18 148.099 L
946.482 148.099 L
949.371 148.099 L
952.673 148.099 L
955.975 148.099 L
962.167 148.099 L
965.056 145.137 L
968.359 148.099 L
971.248 151.484 L
974.55 151.484 L
978.265 155.293 L
980.742 161.64 L
984.457 155.293 L
986.933 155.293 L
990.648 161.64 L
993.95 165.025 L
996.84 161.64 L
1000.14 174.334 L
1003.03 177.719 L
1006.33 184.066 L
1009.64 174.334 L
1012.52 174.334 L
1018.72 165.025 L
1022.02 161.64 L
1024.91 155.293 L
1028.21 158.678 L
1031.51 155.293 L
1034.4 161.64 L
1037.7 161.64 L
1040.59 165.025 L
1043.9 161.64 L
1047.2 167.987 L
1050.09 171.372 L
1053.39 167.987 L
1056.28 158.678 L
1059.58 155.293 L
1062.88 155.293 L
1065.77 151.484 L
1069.07 151.484 L
1071.96 138.79 L
1078.16 138.79 L
1081.46 132.443 L
1085.17 132.443 L
1088.47 135.405 L
1091.36 132.443 L
1093.84 125.673 L
1097.56 135.405 L
1100.86 138.79 L
1103.33 138.79 L
1107.05 135.405 L
1109.53 138.79 L
1113.24 141.752 L
1116.54 135.405 L
1119.43 141.752 L
1122.73 135.405 L
1126.04 129.058 L
1128.93 132.443 L
1131.82 129.058 L
1138.42 119.326 L
1141.72 119.326 L
1144.61 112.979 L
1147.5 112.979 L
1150.8 112.979 L
1154.11 112.979 L
1156.99 119.326 L
1160.3 122.711 L
1163.6 122.711 L
Q
S
[0.1188 0 0 0.1132 174.7 548.5] e
1933.31 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(Measured step response  and fitted model ) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
1 1 1 0 K
0 w
786.327 1042.62 556.827 982.109 [0.2879 0 0 -0.2676 111 557.3] Bx
n
[0.1188 0 0 0.1132 271.3 280.7] e
521.424 -21.624 0 92.31 tbx
0 tal
112.2 tld
1 1 1 0 k
/_ArialMT 102 tfn
(Time in sec) 0 0 tpt
T
[0.1188 0 0 0.1132 333.8 279.8] e
28.25 -24.408 0 100.683 tbx
0 tal
124.3 tld
/_TimesNewRomanPSMT 113 tfn
( ) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
3.30216 w
q
0.2879 0 0 -0.2676 111 554.8 cm
490.371 902.559 m
490.371 902.559 L
Q
S
q
0.2879 0 0 -0.2676 111 554.8 cm
490.371 902.559 m
490.371 902.559 L
Q
S
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 K
0.5 w
448.251 503.155 476.012 508.32 [1 0 0 1 -0.7673 0.2231] Bx
s
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
