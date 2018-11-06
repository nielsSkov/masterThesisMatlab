%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: performance_two_par.md
%%CreationDate: Mon Mar 12 11:28:57 2007
%%BoundingBox: 163 303 415 537
%%DocumentFonts: MicrosoftSansSerif
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
%%IncludeFont: MicrosoftSansSerif
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

WinAnsiEncoding /_MicrosoftSansSerif /MicrosoftSansSerif RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
163 303 moveto 163 537 lineto 415 537 lineto 415 303 lineto closepath clip
newpath
%%EndPageSetup
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 K
3.45013 w
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
167.332 75.2864 L
1163.85 75.2864 L
1163.85 910.281 L
167.332 910.281 L
Q
f
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
167.332 75.2864 L
1163.85 75.2864 L
1163.85 910.281 L
167.332 910.281 L
Q
S
1 1 1 0 K
1 w
[3 3] 0 d
q
0.2018 0 0 -0.2172 170.7 538.5 cm
301.312 910.281 m
301.312 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
301.312 75.2864 m
301.312 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
498.544 910.281 m
498.544 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
498.544 75.2864 m
498.544 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 910.281 m
695.777 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 75.2864 m
695.777 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
896.46 910.281 m
896.46 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
896.46 75.2864 m
896.46 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1093.69 910.281 m
1093.69 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1093.69 75.2864 m
1093.69 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
1163.85 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 910.281 m
1163.85 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 492.784 m
1163.85 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 492.784 m
1163.85 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 75.2864 m
1163.85 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 75.2864 m
1163.85 75.2864 L
Q
B
3.45013 w
[] 0 d
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
1163.85 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 75.2864 m
1163.85 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
167.332 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 910.281 m
1163.85 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
1163.85 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
167.332 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
301.312 910.281 m
301.312 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
301.312 75.2864 m
301.312 85.8159 L
Q
B
[0.116 0 0 0.1143 224.3 328.2] e
118.15 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(0.9) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
498.544 910.281 m
498.544 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
498.544 75.2864 m
498.544 85.8159 L
Q
B
[0.116 0 0 0.1143 261.8 328.2] e
165.41 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(0.95) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 910.281 m
695.777 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 75.2864 m
695.777 85.8159 L
Q
B
[0.116 0 0 0.1143 308.3 328.2] e
47.26 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(1) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
896.46 910.281 m
896.46 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
896.46 75.2864 m
896.46 85.8159 L
Q
B
[0.116 0 0 0.1143 342.1 328.2] e
165.41 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(1.05) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1093.69 910.281 m
1093.69 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1093.69 75.2864 m
1093.69 85.8159 L
Q
B
[0.116 0 0 0.1143 384.1 328.2] e
118.15 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(1.1) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
178.257 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 910.281 m
1152.92 910.281 L
Q
B
[0.116 0 0 0.1143 187.5 337.1] e
118.15 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(1.5) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 492.784 m
178.257 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 492.784 m
1152.92 492.784 L
Q
B
[0.116 0 0 0.1143 195.8 427.8] e
47.26 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(2) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 75.2864 m
178.257 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 75.2864 m
1152.92 75.2864 L
Q
B
[0.116 0 0 0.1143 187.5 518.4] e
118.15 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(2.5) 0 -1.445 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
1163.85 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 75.2864 m
1163.85 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 910.281 m
167.332 75.2864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 910.281 m
1163.85 75.2864 L
Q
B
1 1 0.439216 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 393.806 m
736.604 396.965 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 396.965 m
695.777 403.809 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 403.809 m
680.827 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
680.827 410.653 m
658.401 417.497 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 417.497 m
617.574 438.03 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 438.03 m
576.748 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 458.562 m
576.748 462.248 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 462.248 m
542.821 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
542.821 492.784 m
535.346 503.313 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 503.313 m
524.42 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
524.42 527.005 m
531.896 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
531.896 561.226 m
535.346 564.911 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 564.911 m
576.748 585.444 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 585.444 m
617.574 588.603 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 588.603 m
658.401 588.603 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 588.603 m
695.777 578.599 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 578.599 m
736.604 568.07 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 568.07 m
758.455 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
758.455 561.226 m
795.831 540.693 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 540.693 m
818.257 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
818.257 527.005 m
851.608 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
851.608 492.784 m
874.034 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
874.034 458.562 m
848.158 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
848.158 410.653 m
795.831 393.806 L
Q
B
1 1 0.188235 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 352.74 m
795.831 342.211 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 342.211 m
736.604 352.74 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 352.74 m
695.777 362.743 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 362.743 m
658.401 373.273 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 373.273 m
617.574 390.12 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 390.12 m
576.748 407.494 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 407.494 m
572.722 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
572.722 410.653 m
535.346 431.186 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 431.186 m
498.544 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
498.544 458.562 m
494.519 462.248 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 462.248 m
465.193 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
465.193 492.784 m
453.693 510.157 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 510.157 m
442.767 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
442.767 527.005 m
435.292 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
435.292 561.226 m
446.217 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
446.217 592.288 m
453.693 599.132 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 599.132 m
494.519 622.824 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 622.824 m
506.02 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
506.02 626.509 m
535.346 633.353 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 633.353 m
576.748 636.512 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 636.512 m
617.574 633.353 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 633.353 m
658.401 629.668 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 629.668 m
676.801 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
676.801 626.509 m
695.777 622.824 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 622.824 m
736.604 612.821 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 612.821 m
788.356 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
788.356 592.288 m
795.831 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 592.288 m
851.608 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
851.608 561.226 m
888.985 533.849 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 533.849 m
899.91 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
899.91 527.005 m
929.811 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
929.811 492.784 m
948.212 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
948.212 458.562 m
952.237 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
952.237 410.653 m
888.985 352.74 L
Q
B
1 0.937255 -1.42109e-016 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 506.472 m
375.49 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
375.49 527.005 m
364.564 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
364.564 561.226 m
364.564 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
364.564 592.288 m
382.965 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
382.965 626.509 m
386.99 633.353 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 633.353 m
438.742 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
438.742 660.73 m
453.693 663.889 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 663.889 m
494.519 670.733 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 670.733 m
535.346 674.419 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 674.419 m
576.748 674.419 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 674.419 m
617.574 670.733 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 670.733 m
658.401 667.574 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 667.574 m
691.752 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
691.752 660.73 m
695.777 657.045 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 657.045 m
736.604 647.042 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 647.042 m
795.831 629.668 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 629.668 m
803.306 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
803.306 626.509 m
874.034 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
874.034 592.288 m
888.985 585.444 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 585.444 m
926.361 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
926.361 561.226 m
967.188 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
967.188 527.005 m
996.514 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
996.514 492.784 m
1018.94 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1018.94 458.562 m
1033.89 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1033.89 410.653 m
974.663 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
974.663 325.363 m
888.985 297.987 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 297.987 m
795.831 301.146 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 301.146 m
736.604 311.675 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 311.675 m
695.777 318.519 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 318.519 m
676.801 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
676.801 325.363 m
658.401 332.208 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 332.208 m
617.574 349.055 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 349.055 m
576.748 366.429 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 366.429 m
535.346 386.961 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 386.961 m
494.519 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 410.653 m
494.519 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 410.653 m
453.693 441.715 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 441.715 m
431.267 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
431.267 458.562 m
397.916 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
397.916 492.784 m
386.99 506.472 L
Q
B
1 0.686274 -1.42109e-016 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 311.675 m
888.985 256.921 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 256.921 m
795.831 263.766 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 263.766 m
736.604 273.769 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 273.769 m
695.777 284.298 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 284.298 m
658.401 297.987 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 297.987 m
617.574 311.675 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 311.675 m
576.748 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 325.363 m
576.748 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 325.363 m
535.346 345.896 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 345.896 m
494.519 369.588 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 369.588 m
453.693 393.806 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 393.806 m
427.817 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
427.817 410.653 m
386.99 441.715 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 441.715 m
368.014 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
368.014 458.562 m
334.663 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
334.663 492.784 m
312.237 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
312.237 527.005 m
297.287 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
297.287 561.226 m
290.386 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
290.386 592.288 m
297.287 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
297.287 626.509 m
327.188 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
327.188 660.73 m
386.99 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 694.951 m
386.99 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 694.951 m
453.693 704.954 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 704.954 m
494.519 711.798 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 711.798 m
535.346 711.798 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 711.798 m
576.748 708.64 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 708.64 m
617.574 704.954 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 704.954 m
658.401 698.11 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 698.11 m
688.302 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
688.302 694.951 m
695.777 691.266 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 691.266 m
736.604 681.263 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 681.263 m
795.831 663.889 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 663.889 m
803.306 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
803.306 660.73 m
884.96 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
884.96 626.509 m
888.985 622.824 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 622.824 m
944.762 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
944.762 592.288 m
993.064 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
993.064 561.226 m
1030.44 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1030.44 527.005 m
1063.79 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1063.79 492.784 m
1074.72 479.095 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 479.095 m
1089.67 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1089.67 458.562 m
1108.07 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1108.07 410.653 m
1093.69 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1093.69 325.363 m
1074.72 311.675 L
Q
B
1 0.376471 -1.42109e-016 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1163.85 314.834 m
1074.72 246.392 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 246.392 m
888.985 215.856 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 215.856 m
795.831 225.859 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 225.859 m
736.604 239.548 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 239.548 m
695.777 250.077 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 250.077 m
658.401 260.08 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 260.08 m
617.574 273.769 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 273.769 m
576.748 291.142 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 291.142 m
535.346 307.99 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 307.99 m
501.995 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
501.995 325.363 m
494.519 328.522 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 328.522 m
453.693 352.74 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 352.74 m
386.99 393.806 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 393.806 m
368.014 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
368.014 410.653 m
308.787 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
308.787 458.562 m
278.886 489.625 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 489.625 m
275.436 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
275.436 492.784 m
253.01 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
253.01 527.005 m
234.034 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
234.034 561.226 m
227.134 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
227.134 592.288 m
227.134 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
227.134 626.509 m
241.509 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
241.509 660.73 m
271.411 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
271.411 694.951 m
278.886 698.11 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 698.11 m
386.99 736.016 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 736.016 m
442.767 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
442.767 742.861 m
453.693 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 742.861 m
494.519 746.02 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 746.02 m
535.346 746.02 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 746.02 m
550.297 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
550.297 742.861 m
576.748 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 742.861 m
617.574 736.016 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 736.016 m
658.401 729.172 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 729.172 m
695.777 722.328 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 722.328 m
736.604 711.798 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 711.798 m
795.831 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 694.951 m
803.306 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
803.306 694.951 m
888.985 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 660.73 m
892.435 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
892.435 660.73 m
955.687 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
955.687 626.509 m
1008.01 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1008.01 592.288 m
1056.32 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1056.32 561.226 m
1074.72 544.378 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 544.378 m
1093.69 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1093.69 527.005 m
1123.02 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1123.02 492.784 m
1149.47 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1149.47 458.562 m
1163.85 424.341 L
Q
B
1 0.12549 -1.42109e-016 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 574.914 m
174.807 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
174.807 561.226 m
193.208 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
193.208 527.005 m
219.659 492.784 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
219.659 492.784 m
248.985 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
248.985 458.562 m
278.886 431.186 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 431.186 m
304.762 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
304.762 410.653 m
386.99 352.74 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 352.74 m
431.267 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
431.267 325.363 m
453.693 314.834 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 314.834 m
494.519 294.301 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 294.301 m
535.346 273.769 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 273.769 m
576.748 256.921 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 256.921 m
617.574 239.548 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 239.548 m
658.401 225.859 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 225.859 m
695.777 212.171 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 212.171 m
736.604 202.168 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 202.168 m
795.831 188.479 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 188.479 m
888.985 171.105 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 171.105 m
1074.72 181.635 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 181.635 m
1163.85 229.544 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 667.574 m
185.732 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
185.732 694.951 m
260.485 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
260.485 742.861 m
278.886 749.705 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 749.705 m
386.99 773.396 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 773.396 m
453.693 777.082 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 777.082 m
494.519 777.082 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 777.082 m
535.346 773.396 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 773.396 m
576.748 770.238 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 770.238 m
617.574 766.552 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 766.552 m
658.401 759.708 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 759.708 m
695.777 752.864 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 752.864 m
736.604 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 742.861 m
736.604 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 742.861 m
795.831 725.487 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 725.487 m
888.985 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 694.951 m
892.435 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
892.435 694.951 m
959.712 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
959.712 660.73 m
1022.96 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1022.96 626.509 m
1074.72 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 592.288 m
1074.72 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 592.288 m
1119.57 561.226 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1119.57 561.226 m
1152.92 527.005 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1152.92 527.005 m
1163.85 513.316 L
Q
B
0.87451 -1.42109e-016 0.0627451 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 485.939 m
193.208 458.562 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
193.208 458.562 m
248.985 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
248.985 410.653 m
278.886 386.961 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 386.961 m
368.014 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
368.014 325.363 m
386.99 314.834 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 314.834 m
453.693 280.613 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 280.613 m
494.519 256.921 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 256.921 m
535.346 239.548 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 239.548 m
576.748 222.7 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 222.7 m
617.574 205.326 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 205.326 m
658.401 191.638 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 191.638 m
695.777 177.95 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 177.95 m
736.604 167.947 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 167.947 m
765.93 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
765.93 157.417 m
795.831 150.573 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 150.573 m
888.985 133.725 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 133.725 m
1074.72 130.04 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 130.04 m
1163.85 150.573 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 749.705 m
278.886 790.77 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 790.77 m
386.99 807.617 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 807.617 m
453.693 807.617 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 807.617 m
494.519 807.617 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 807.617 m
535.346 804.459 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 804.459 m
576.748 800.773 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 800.773 m
617.574 793.929 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 793.929 m
658.401 787.085 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 787.085 m
695.777 780.241 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 780.241 m
736.604 773.396 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 773.396 m
795.831 756.549 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 756.549 m
836.658 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
836.658 742.861 m
888.985 725.487 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 725.487 m
963.163 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
963.163 694.951 m
1030.44 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1030.44 660.73 m
1074.72 636.512 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 636.512 m
1089.67 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1089.67 626.509 m
1134.52 592.288 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1134.52 592.288 m
1163.85 571.755 L
Q
B
0.623529 -1.42109e-016 0.313725 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 431.186 m
189.757 410.653 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
189.757 410.653 m
278.886 342.211 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 342.211 m
304.762 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
304.762 325.363 m
386.99 277.454 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 277.454 m
453.693 243.233 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 243.233 m
494.519 222.7 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 222.7 m
535.346 205.326 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 205.326 m
576.748 188.479 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 188.479 m
617.574 171.105 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 171.105 m
650.925 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
650.925 157.417 m
658.401 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 157.417 m
695.777 143.729 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 143.729 m
736.604 130.04 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 130.04 m
795.831 116.352 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 116.352 m
888.985 95.819 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 95.819 m
1074.72 85.8159 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 85.8159 m
1163.85 99.5044 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 800.773 m
263.935 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
263.935 828.15 m
278.886 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 828.15 m
386.99 838.68 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 838.68 m
453.693 838.68 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 838.68 m
494.519 834.994 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 834.994 m
535.346 834.994 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 834.994 m
576.748 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 828.15 m
598.598 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
598.598 828.15 m
617.574 824.991 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 824.991 m
658.401 818.147 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 818.147 m
695.777 811.303 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 811.303 m
736.604 800.773 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 800.773 m
795.831 787.085 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 787.085 m
888.985 756.549 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 756.549 m
922.336 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
922.336 742.861 m
1033.89 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1033.89 694.951 m
1074.72 674.419 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 674.419 m
1097.14 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1097.14 660.73 m
1149.47 626.509 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1149.47 626.509 m
1163.85 615.979 L
Q
B
0.313725 -1.42109e-016 0.623529 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
821.707 75.2864 m
795.831 82.1306 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 82.1306 m
736.604 95.819 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 95.819 m
695.777 109.507 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 109.507 m
658.401 123.196 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 123.196 m
617.574 136.884 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 136.884 m
576.748 150.573 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 150.573 m
561.797 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
561.797 157.417 m
535.346 167.947 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 167.947 m
494.519 188.479 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 188.479 m
453.693 209.012 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 209.012 m
386.99 239.548 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 239.548 m
278.886 304.831 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 304.831 m
245.535 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
245.535 325.363 m
167.332 383.276 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 841.839 m
278.886 862.371 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 862.371 m
386.99 869.215 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 869.215 m
453.693 866.057 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 866.057 m
494.519 866.057 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 866.057 m
535.346 862.371 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 862.371 m
576.748 855.527 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 855.527 m
617.574 852.368 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 852.368 m
658.401 845.524 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 845.524 m
695.777 838.68 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 838.68 m
736.604 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 828.15 m
747.529 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
747.529 828.15 m
795.831 814.462 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 814.462 m
888.985 783.926 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 783.926 m
996.514 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
996.514 742.861 m
1074.72 708.64 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 708.64 m
1104.62 694.951 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1104.62 694.951 m
1160.4 660.73 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1160.4 660.73 m
1163.85 657.045 L
Q
B
0.0627451 -1.42109e-016 0.87451 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 75.2864 m
658.401 88.9748 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 88.9748 m
617.574 102.663 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 102.663 m
576.748 116.352 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 116.352 m
535.346 133.725 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 133.725 m
494.519 154.258 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 154.258 m
479.569 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
479.569 157.417 m
453.693 171.105 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 171.105 m
386.99 205.326 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 205.326 m
278.886 266.924 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 266.924 m
185.732 325.363 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
185.732 325.363 m
167.332 339.052 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
167.332 879.745 m
278.886 893.433 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 893.433 m
386.99 896.592 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 896.592 m
453.693 896.592 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 896.592 m
494.519 893.433 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 893.433 m
535.346 889.748 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 889.748 m
576.748 882.904 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 882.904 m
617.574 879.745 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 879.745 m
658.401 872.901 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 872.901 m
695.777 866.057 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 866.057 m
736.604 855.527 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 855.527 m
795.831 841.839 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 841.839 m
851.608 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
851.608 828.15 m
888.985 814.462 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 814.462 m
1074.72 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 742.861 m
1074.72 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 742.861 m
1163.85 694.951 L
Q
B
-1.42109e-016 0.12549 1 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
598.598 75.2864 m
576.748 85.8159 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
576.748 85.8159 m
535.346 99.5044 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
535.346 99.5044 m
494.519 120.037 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 120.037 m
453.693 136.884 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 136.884 m
408.841 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
408.841 157.417 m
386.99 167.947 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 167.947 m
278.886 229.544 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 229.544 m
167.332 297.987 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
583.648 910.281 m
617.574 907.122 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
617.574 907.122 m
658.401 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
658.401 900.278 m
695.777 889.748 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
695.777 889.748 m
736.604 882.904 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 882.904 m
795.831 869.215 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 869.215 m
888.985 841.839 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 841.839 m
937.287 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
937.287 828.15 m
1074.72 773.396 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 773.396 m
1141.99 742.861 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1141.99 742.861 m
1163.85 732.331 L
Q
B
-1.42109e-016 0.376471 1 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
516.945 75.2864 m
494.519 85.8159 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
494.519 85.8159 m
453.693 102.663 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
453.693 102.663 m
386.99 133.725 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 133.725 m
342.138 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
342.138 157.417 m
278.886 191.638 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 191.638 m
167.332 260.08 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 910.281 m
736.604 910.281 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
736.604 910.281 m
795.831 896.592 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
795.831 896.592 m
888.985 869.215 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 869.215 m
1018.94 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1018.94 828.15 m
1074.72 804.459 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 804.459 m
1163.85 766.552 L
Q
B
-1.42109e-016 0.686274 1 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
438.742 75.2864 m
386.99 99.5044 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
386.99 99.5044 m
278.886 154.258 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 154.258 m
275.436 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
275.436 157.417 m
167.332 222.7 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
848.158 910.281 m
888.985 900.278 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
888.985 900.278 m
1074.72 834.994 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 834.994 m
1097.14 828.15 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1097.14 828.15 m
1163.85 797.614 L
Q
B
-1.42109e-016 0.937255 1 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
368.014 75.2864 m
278.886 120.037 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 120.037 m
212.183 157.417 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
212.183 157.417 m
167.332 184.794 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
940.737 910.281 m
1074.72 866.057 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 866.057 m
1163.85 831.835 L
Q
B
0.188235 1 1 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
297.287 75.2864 m
278.886 85.8159 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
278.886 85.8159 m
167.332 147.414 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1030.44 910.281 m
1074.72 896.592 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1074.72 896.592 m
1163.85 859.212 L
Q
B
0.439216 1 1 0 K
q
0.2018 0 0 -0.2172 170.7 538.5 cm
230.584 75.2864 m
167.332 113.193 L
Q
B
q
0.2018 0 0 -0.2172 170.7 538.5 cm
1112.09 910.281 m
1163.85 889.748 L
Q
B
[0.116 0 0 0.1143 288.8 315.5] e
269.28 -19.295 0 76.925 tbx
0 tal
93 tld
1 1 1 0 k
/_MicrosoftSansSerif 85 tfn
(k value) 0 -1.445 tpt
T
[0 0.1143 -0.116 0 182.1 410.8] e
344.93 -19.295 0 76.925 tbx
0 tal
93 tld
/_MicrosoftSansSerif 85 tfn
(tau value) 0 -1.445 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
