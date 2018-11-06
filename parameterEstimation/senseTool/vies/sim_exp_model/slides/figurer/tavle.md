%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: tavle.md
%%CreationDate: Wed Feb 01 12:00:54 2006
%%BoundingBox: 264 381 329 461
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

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
264 381 moveto 264 461 lineto 329 461 lineto 329 381 lineto closepath clip
newpath
%%EndPageSetup
1 1 1 0 k
0 w
q
0.03534 0 0 -0.05907 274.4 451 cm
1263.07 10.2196 m
1256.3 8.17565 L
1252.91 6.13174 L
1246.14 4.08782 L
1239.37 4.08782 L
1235.98 2.04391 L
1229.21 0 L
1222.43 0 L
1215.66 0 L
64.3386 0 L
50.7937 0 L
40.6349 4.08782 L
27.0899 6.13174 L
20.3175 10.2196 L
10.1587 16.3513 L
6.77249 22.483 L
0 30.6587 L
0 38.8343 L
0 647.92 L
0 656.096 L
6.77249 662.228 L
10.1587 668.359 L
16.9312 674.491 L
23.7037 678.579 L
27.0899 680.623 L
33.8624 682.667 L
40.6349 682.667 L
44.0212 684.711 L
50.7937 684.711 L
57.5661 686.755 L
64.3386 686.755 L
1215.66 686.755 L
1222.43 686.755 L
1229.21 684.711 L
1235.98 684.711 L
1239.37 682.667 L
1246.14 682.667 L
1252.91 680.623 L
1256.3 678.579 L
1263.07 674.491 L
1269.84 668.359 L
1273.23 662.228 L
1280 656.096 L
1280 647.92 L
1280 38.8343 L
1280 30.6587 L
1273.23 22.483 L
1269.84 16.3513 L
1263.07 10.2196 L
1263.07 10.2196 L
Q
f
1 0.513725 1 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
1259.68 647.92 m
1259.68 654.052 L
1256.3 658.14 L
1252.91 662.228 L
1246.14 666.315 L
1239.37 668.359 L
1232.59 670.403 L
1225.82 672.447 L
1215.66 674.491 L
64.3386 674.491 L
57.5661 674.491 L
54.1799 672.447 L
50.7937 672.447 L
47.4074 670.403 L
44.0212 670.403 L
40.6349 668.359 L
37.2487 668.359 L
33.8624 666.315 L
27.0899 662.228 L
23.7037 658.14 L
20.3175 654.052 L
20.3175 647.92 L
20.3175 38.8343 L
20.3175 32.7026 L
23.7037 28.6148 L
27.0899 22.483 L
33.8624 20.4391 L
37.2487 18.3952 L
40.6349 16.3513 L
44.0212 16.3513 L
47.4074 14.3074 L
50.7937 14.3074 L
54.1799 12.2635 L
57.5661 12.2635 L
64.3386 12.2635 L
1215.66 12.2635 L
1222.43 12.2635 L
1225.82 12.2635 L
1229.21 14.3074 L
1232.59 14.3074 L
1235.98 16.3513 L
1239.37 16.3513 L
1242.75 18.3952 L
1246.14 20.4391 L
1252.91 22.483 L
1256.3 28.6148 L
1259.68 32.7026 L
1259.68 38.8343 L
1259.68 647.92 L
1259.68 647.92 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
128.677 128.766 m
128.677 130.81 L
128.677 132.854 L
128.677 134.898 L
132.063 136.942 L
138.836 136.942 L
142.222 136.942 L
145.608 134.898 L
145.608 132.854 L
152.381 126.723 L
155.767 120.591 L
162.54 116.503 L
165.926 110.371 L
172.698 112.415 L
176.085 114.459 L
179.471 118.547 L
182.857 120.591 L
186.243 122.635 L
193.016 124.679 L
196.402 126.723 L
199.788 128.766 L
203.175 130.81 L
209.947 130.81 L
213.333 130.81 L
216.72 128.766 L
216.72 126.723 L
216.72 124.679 L
216.72 122.635 L
213.333 120.591 L
209.947 118.547 L
206.561 114.459 L
199.788 112.415 L
196.402 110.371 L
189.63 106.283 L
186.243 104.24 L
182.857 102.196 L
179.471 100.152 L
182.857 96.0639 L
182.857 91.9761 L
186.243 87.8882 L
189.63 83.8004 L
189.63 81.7565 L
189.63 79.7126 L
189.63 77.6687 L
186.243 75.6247 L
182.857 75.6247 L
179.471 75.6247 L
176.085 77.6687 L
172.698 77.6687 L
169.312 81.7565 L
169.312 83.8004 L
165.926 87.8882 L
162.54 89.9321 L
159.153 87.8882 L
152.381 85.8443 L
148.995 81.7565 L
145.608 79.7126 L
138.836 77.6687 L
135.45 75.6247 L
132.063 73.5808 L
125.291 71.5369 L
121.905 69.493 L
118.519 69.493 L
115.132 69.493 L
111.746 71.5369 L
108.36 73.5808 L
108.36 75.6247 L
111.746 77.6687 L
111.746 79.7126 L
118.519 83.8004 L
121.905 85.8443 L
128.677 87.8882 L
132.063 89.9321 L
138.836 94.02 L
142.222 96.0639 L
145.608 98.1078 L
152.381 102.196 L
145.608 108.327 L
138.836 114.459 L
132.063 120.591 L
128.677 128.766 L
128.677 128.766 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
267.513 98.1078 m
277.672 98.1078 L
284.444 98.1078 L
291.217 96.0639 L
297.989 96.0639 L
304.762 96.0639 L
314.921 96.0639 L
321.693 96.0639 L
328.466 96.0639 L
331.852 96.0639 L
335.238 94.02 L
338.624 91.9761 L
338.624 89.9321 L
338.624 85.8443 L
335.238 83.8004 L
331.852 83.8004 L
328.466 83.8004 L
321.693 83.8004 L
314.921 83.8004 L
304.762 83.8004 L
297.989 83.8004 L
291.217 83.8004 L
281.058 83.8004 L
274.286 85.8443 L
267.513 85.8443 L
260.741 85.8443 L
260.741 87.8882 L
257.354 89.9321 L
257.354 94.02 L
260.741 96.0639 L
260.741 98.1078 L
264.127 98.1078 L
267.513 98.1078 L
267.513 98.1078 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
294.603 114.459 m
294.603 116.503 L
297.989 118.547 L
301.376 120.591 L
304.762 120.591 L
311.534 120.591 L
318.307 120.591 L
321.693 120.591 L
328.466 120.591 L
335.238 120.591 L
342.011 120.591 L
345.397 120.591 L
352.169 120.591 L
358.942 120.591 L
362.328 118.547 L
362.328 116.503 L
362.328 114.459 L
362.328 112.415 L
362.328 110.371 L
358.942 108.327 L
352.169 108.327 L
345.397 108.327 L
342.011 108.327 L
335.238 108.327 L
328.466 108.327 L
321.693 108.327 L
318.307 108.327 L
311.534 108.327 L
304.762 108.327 L
301.376 108.327 L
297.989 110.371 L
294.603 112.415 L
294.603 114.459 L
294.603 114.459 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
413.122 141.03 m
416.508 141.03 L
416.508 143.074 L
419.894 143.074 L
419.894 143.074 L
419.894 143.074 L
426.667 141.03 L
436.825 141.03 L
450.37 138.986 L
460.529 138.986 L
474.074 138.986 L
484.233 138.986 L
494.392 138.986 L
507.936 138.986 L
518.095 136.942 L
521.482 136.942 L
524.868 134.898 L
528.254 132.854 L
528.254 130.81 L
528.254 128.766 L
524.868 126.723 L
521.482 126.723 L
518.095 124.679 L
507.936 126.723 L
501.164 126.723 L
491.005 126.723 L
484.233 126.723 L
474.074 126.723 L
463.915 126.723 L
457.143 126.723 L
446.984 128.766 L
457.143 124.679 L
467.302 120.591 L
474.074 114.459 L
484.233 110.371 L
491.005 106.283 L
501.164 100.152 L
507.936 96.0639 L
511.323 89.9321 L
511.323 73.5808 L
511.323 71.5369 L
511.323 71.5369 L
507.936 69.493 L
507.936 69.493 L
501.164 67.4491 L
491.005 67.4491 L
484.233 65.4052 L
477.46 65.4052 L
470.688 65.4052 L
460.529 65.4052 L
453.757 65.4052 L
446.984 65.4052 L
440.212 67.4491 L
436.825 67.4491 L
433.439 69.493 L
433.439 71.5369 L
433.439 73.5808 L
433.439 75.6247 L
436.825 77.6687 L
440.212 77.6687 L
443.598 77.6687 L
450.37 77.6687 L
453.757 77.6687 L
460.529 77.6687 L
467.302 77.6687 L
470.688 77.6687 L
477.46 77.6687 L
480.847 77.6687 L
487.619 77.6687 L
494.392 79.7126 L
487.619 87.8882 L
480.847 96.0639 L
470.688 102.196 L
460.529 106.283 L
446.984 112.415 L
436.825 118.547 L
423.28 122.635 L
413.122 128.766 L
409.735 130.81 L
409.735 130.81 L
409.735 130.81 L
406.349 132.854 L
406.349 132.854 L
406.349 134.898 L
406.349 136.942 L
409.735 138.986 L
413.122 141.03 L
413.122 141.03 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
497.778 67.4491 m
501.164 67.4491 L
501.164 67.4491 L
501.164 67.4491 L
501.164 67.4491 L
501.164 67.4491 L
501.164 67.4491 L
501.164 67.4491 L
497.778 67.4491 L
497.778 67.4491 L
497.778 67.4491 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
589.206 132.854 m
592.593 134.898 L
592.593 134.898 L
592.593 136.942 L
592.593 136.942 L
595.979 136.942 L
599.365 138.986 L
602.751 138.986 L
606.138 136.942 L
609.524 136.942 L
609.524 134.898 L
612.91 132.854 L
612.91 132.854 L
612.91 132.854 L
612.91 130.81 L
612.91 128.766 L
616.296 114.459 L
619.683 98.1078 L
623.069 83.8004 L
626.455 67.4491 L
626.455 67.4491 L
646.772 67.4491 L
670.476 67.4491 L
690.794 67.4491 L
714.497 65.4052 L
734.815 65.4052 L
755.132 63.3613 L
778.836 63.3613 L
799.153 61.3174 L
822.857 59.2735 L
843.175 57.2295 L
866.878 57.2295 L
887.196 55.1856 L
907.513 53.1417 L
931.217 53.1417 L
951.534 51.0978 L
975.238 49.0539 L
978.624 49.0539 L
982.011 49.0539 L
985.397 47.01 L
985.397 44.9661 L
985.397 40.8782 L
982.011 38.8343 L
978.624 38.8343 L
975.238 36.7904 L
954.921 38.8343 L
934.603 40.8782 L
910.899 40.8782 L
890.582 42.9222 L
866.878 42.9222 L
846.561 44.9661 L
826.243 47.01 L
802.54 47.01 L
782.222 49.0539 L
758.518 51.0978 L
738.201 51.0978 L
717.884 53.1417 L
694.18 53.1417 L
673.862 53.1417 L
650.159 55.1856 L
629.841 55.1856 L
609.524 57.2295 L
609.524 57.2295 L
606.138 59.2735 L
606.138 61.3174 L
606.138 63.3613 L
602.751 67.4491 L
602.751 77.6687 L
599.365 87.8882 L
595.979 98.1078 L
595.979 108.327 L
592.593 102.196 L
589.206 96.0639 L
585.82 89.9321 L
579.048 83.8004 L
575.661 77.6687 L
572.275 71.5369 L
568.889 65.4052 L
565.503 59.2735 L
565.503 57.2295 L
562.116 55.1856 L
558.73 55.1856 L
555.344 55.1856 L
551.958 55.1856 L
548.571 57.2295 L
545.185 61.3174 L
548.571 63.3613 L
551.958 71.5369 L
555.344 79.7126 L
562.116 89.9321 L
565.503 98.1078 L
572.275 106.283 L
579.048 114.459 L
582.434 124.679 L
589.206 132.854 L
589.206 132.854 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
619.683 67.4491 m
619.683 67.4491 L
619.683 67.4491 L
619.683 67.4491 L
619.683 67.4491 L
619.683 69.493 L
619.683 67.4491 L
619.683 67.4491 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
741.587 114.459 m
738.201 112.415 L
734.815 110.371 L
731.429 110.371 L
728.042 110.371 L
724.656 110.371 L
721.27 110.371 L
717.884 112.415 L
717.884 112.415 L
717.884 108.327 L
717.884 102.196 L
717.884 98.1078 L
717.884 91.9761 L
714.497 89.9321 L
714.497 87.8882 L
711.111 85.8443 L
707.725 85.8443 L
700.952 85.8443 L
697.566 87.8882 L
697.566 89.9321 L
694.18 91.9761 L
694.18 98.1078 L
694.18 104.24 L
694.18 110.371 L
694.18 114.459 L
694.18 116.503 L
690.794 116.503 L
687.407 116.503 L
684.021 116.503 L
677.249 116.503 L
677.249 110.371 L
677.249 106.283 L
677.249 102.196 L
677.249 98.1078 L
677.249 91.9761 L
677.249 89.9321 L
673.862 87.8882 L
670.476 85.8443 L
667.09 85.8443 L
663.704 85.8443 L
660.317 87.8882 L
656.931 89.9321 L
656.931 91.9761 L
656.931 100.152 L
653.545 108.327 L
656.931 116.503 L
660.317 124.679 L
656.931 124.679 L
660.317 124.679 L
660.317 126.723 L
663.704 126.723 L
663.704 128.766 L
677.249 128.766 L
680.635 128.766 L
687.407 128.766 L
690.794 128.766 L
697.566 128.766 L
697.566 134.898 L
697.566 141.03 L
700.952 147.162 L
700.952 155.337 L
704.339 157.381 L
704.339 159.425 L
707.725 159.425 L
711.111 159.425 L
717.884 159.425 L
721.27 157.381 L
721.27 155.337 L
721.27 153.293 L
721.27 147.162 L
717.884 138.986 L
717.884 132.854 L
717.884 124.679 L
721.27 124.679 L
724.656 124.679 L
731.429 122.635 L
734.815 122.635 L
738.201 120.591 L
741.587 118.547 L
741.587 116.503 L
741.587 114.459 L
741.587 114.459 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
788.995 130.81 m
785.608 132.854 L
785.608 134.898 L
785.608 134.898 L
782.222 136.942 L
782.222 136.942 L
785.608 141.03 L
785.608 143.074 L
788.995 143.074 L
792.381 143.074 L
799.153 143.074 L
809.312 143.074 L
816.085 143.074 L
826.243 143.074 L
833.016 141.03 L
839.788 141.03 L
846.561 141.03 L
856.72 138.986 L
863.492 136.942 L
866.878 136.942 L
866.878 134.898 L
870.265 132.854 L
866.878 128.766 L
866.878 126.723 L
863.492 126.723 L
860.106 126.723 L
853.333 126.723 L
849.947 126.723 L
846.561 128.766 L
839.788 128.766 L
836.402 128.766 L
833.016 128.766 L
826.243 130.81 L
822.857 130.81 L
819.471 130.81 L
822.857 126.723 L
826.243 122.635 L
829.63 118.547 L
833.016 114.459 L
836.402 100.152 L
836.402 98.1078 L
836.402 98.1078 L
836.402 96.0639 L
836.402 96.0639 L
826.243 91.9761 L
819.471 89.9321 L
809.312 87.8882 L
802.54 85.8443 L
792.381 85.8443 L
785.608 85.8443 L
775.45 87.8882 L
768.677 89.9321 L
761.905 91.9761 L
758.518 94.02 L
755.132 96.0639 L
755.132 98.1078 L
758.518 100.152 L
758.518 102.196 L
761.905 104.24 L
765.291 104.24 L
772.063 102.196 L
775.45 100.152 L
782.222 100.152 L
788.995 98.1078 L
792.381 98.1078 L
799.153 98.1078 L
805.926 98.1078 L
809.312 100.152 L
816.085 102.196 L
816.085 106.283 L
812.698 110.371 L
812.698 114.459 L
809.312 116.503 L
805.926 120.591 L
802.54 122.635 L
795.767 126.723 L
792.381 128.766 L
788.995 130.81 L
788.995 130.81 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
819.471 102.196 m
819.471 102.196 L
819.471 102.196 L
819.471 102.196 L
819.471 102.196 L
819.471 102.196 L
819.471 102.196 L
819.471 102.196 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
917.672 143.074 m
921.058 145.118 L
924.444 147.162 L
927.831 147.162 L
934.603 145.118 L
937.989 143.074 L
941.376 141.03 L
948.148 141.03 L
951.534 138.986 L
965.079 130.81 L
965.079 130.81 L
968.466 128.766 L
968.466 128.766 L
968.466 126.723 L
968.466 124.679 L
968.466 122.635 L
968.466 120.591 L
965.079 118.547 L
965.079 118.547 L
954.921 116.503 L
951.534 114.459 L
944.762 114.459 L
941.376 112.415 L
937.989 112.415 L
927.831 110.371 L
931.217 110.371 L
931.217 108.327 L
934.603 106.283 L
934.603 106.283 L
948.148 96.0639 L
948.148 94.02 L
948.148 91.9761 L
948.148 91.9761 L
948.148 89.9321 L
948.148 87.8882 L
944.762 85.8443 L
944.762 83.8004 L
941.376 83.8004 L
937.989 83.8004 L
934.603 83.8004 L
934.603 83.8004 L
934.603 83.8004 L
937.989 83.8004 L
937.989 83.8004 L
934.603 83.8004 L
927.831 83.8004 L
921.058 83.8004 L
914.286 83.8004 L
907.513 83.8004 L
900.741 83.8004 L
897.354 83.8004 L
890.582 83.8004 L
887.196 85.8443 L
883.81 87.8882 L
880.423 89.9321 L
880.423 91.9761 L
883.81 94.02 L
887.196 96.0639 L
890.582 98.1078 L
893.968 98.1078 L
897.354 98.1078 L
900.741 96.0639 L
904.127 96.0639 L
907.513 96.0639 L
910.899 96.0639 L
914.286 96.0639 L
917.672 96.0639 L
921.058 96.0639 L
917.672 98.1078 L
914.286 102.196 L
910.899 104.24 L
907.513 106.283 L
904.127 112.415 L
900.741 114.459 L
904.127 116.503 L
904.127 118.547 L
907.513 120.591 L
921.058 124.679 L
927.831 124.679 L
934.603 124.679 L
937.989 126.723 L
944.762 126.723 L
937.989 128.766 L
934.603 130.81 L
927.831 132.854 L
921.058 134.898 L
917.672 136.942 L
917.672 138.986 L
917.672 141.03 L
917.672 143.074 L
917.672 143.074 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
1005.71 192.128 m
978.624 194.172 L
951.534 196.216 L
924.444 198.259 L
897.354 198.259 L
870.265 200.303 L
843.175 200.303 L
812.698 200.303 L
788.995 202.347 L
758.518 202.347 L
731.429 202.347 L
704.339 202.347 L
677.249 202.347 L
650.159 202.347 L
623.069 202.347 L
595.979 202.347 L
568.889 202.347 L
541.799 202.347 L
514.709 202.347 L
491.005 200.303 L
463.915 200.303 L
440.212 200.303 L
413.122 200.303 L
386.032 198.259 L
362.328 198.259 L
335.238 198.259 L
308.148 198.259 L
284.444 198.259 L
257.354 196.216 L
230.265 196.216 L
206.561 196.216 L
179.471 196.216 L
155.767 196.216 L
148.995 198.259 L
145.608 198.259 L
145.608 200.303 L
145.608 202.347 L
145.608 206.435 L
145.608 208.479 L
148.995 208.479 L
155.767 210.523 L
182.857 210.523 L
206.561 210.523 L
233.651 210.523 L
260.741 210.523 L
287.831 210.523 L
314.921 210.523 L
342.011 210.523 L
369.101 212.567 L
392.804 212.567 L
419.894 212.567 L
446.984 212.567 L
474.074 214.611 L
501.164 214.611 L
528.254 214.611 L
555.344 214.611 L
579.048 214.611 L
606.138 214.611 L
633.228 216.655 L
660.317 216.655 L
687.407 216.655 L
714.497 216.655 L
738.201 214.611 L
765.291 214.611 L
792.381 214.611 L
819.471 214.611 L
846.561 214.611 L
870.265 212.567 L
897.354 212.567 L
924.444 210.523 L
951.534 208.479 L
978.624 208.479 L
1002.33 206.435 L
1009.1 204.391 L
1012.49 204.391 L
1015.87 202.347 L
1015.87 200.303 L
1015.87 196.216 L
1012.49 194.172 L
1009.1 194.172 L
1005.71 192.128 L
1005.71 192.128 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
297.989 298.411 m
301.376 300.455 L
304.762 300.455 L
308.148 300.455 L
311.534 300.455 L
318.307 298.411 L
328.466 296.367 L
335.238 294.323 L
342.011 294.323 L
348.783 290.236 L
355.556 288.192 L
362.328 286.148 L
369.101 282.06 L
379.259 273.884 L
379.259 271.84 L
379.259 269.796 L
375.873 267.753 L
375.873 267.753 L
369.101 263.665 L
362.328 261.621 L
358.942 261.621 L
352.169 261.621 L
345.397 261.621 L
352.169 255.489 L
358.942 249.357 L
358.942 243.226 L
352.169 237.094 L
345.397 235.05 L
342.011 233.006 L
338.624 230.962 L
331.852 230.962 L
328.466 230.962 L
325.079 230.962 L
318.307 230.962 L
314.921 230.962 L
308.148 233.006 L
308.148 235.05 L
304.762 237.094 L
304.762 239.138 L
308.148 241.182 L
308.148 243.226 L
314.921 245.269 L
318.307 245.269 L
321.693 245.269 L
328.466 243.226 L
331.852 243.226 L
338.624 247.313 L
331.852 251.401 L
328.466 253.445 L
321.693 257.533 L
314.921 261.621 L
311.534 263.665 L
308.148 265.709 L
308.148 265.709 L
308.148 267.753 L
308.148 267.753 L
308.148 269.796 L
311.534 271.84 L
314.921 273.884 L
318.307 273.884 L
321.693 273.884 L
325.079 273.884 L
328.466 273.884 L
331.852 273.884 L
338.624 273.884 L
342.011 273.884 L
345.397 273.884 L
348.783 273.884 L
352.169 273.884 L
348.783 275.928 L
342.011 280.016 L
335.238 282.06 L
328.466 282.06 L
321.693 284.104 L
318.307 286.148 L
308.148 288.192 L
304.762 288.192 L
301.376 290.236 L
297.989 292.279 L
297.989 294.323 L
297.989 298.411 L
297.989 298.411 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
440.212 351.553 m
423.28 351.553 L
409.735 353.597 L
396.19 353.597 L
382.646 353.597 L
369.101 353.597 L
352.169 355.641 L
338.624 355.641 L
325.079 355.641 L
308.148 355.641 L
294.603 355.641 L
281.058 355.641 L
267.513 357.685 L
250.582 357.685 L
237.037 357.685 L
223.492 357.685 L
209.947 357.685 L
203.175 357.685 L
199.788 359.729 L
199.788 361.772 L
199.788 363.816 L
199.788 365.86 L
203.175 367.904 L
206.561 369.948 L
209.947 369.948 L
223.492 369.948 L
237.037 369.948 L
253.968 369.948 L
267.513 369.948 L
281.058 367.904 L
294.603 367.904 L
311.534 367.904 L
325.079 367.904 L
338.624 367.904 L
355.556 367.904 L
369.101 365.86 L
382.646 365.86 L
399.577 365.86 L
413.122 363.816 L
426.667 363.816 L
440.212 363.816 L
443.598 361.772 L
446.984 361.772 L
450.37 359.729 L
450.37 357.685 L
450.37 353.597 L
446.984 351.553 L
443.598 351.553 L
440.212 351.553 L
440.212 351.553 L
Q
f
1 1 1 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
1032.8 707.194 m
1032.8 696.974 L
1032.8 684.711 L
1029.42 674.491 L
1026.03 660.184 L
1022.65 647.92 L
1012.49 633.613 L
1002.33 621.349 L
992.169 609.086 L
982.011 596.822 L
968.466 586.603 L
954.921 576.383 L
937.989 568.208 L
924.444 557.988 L
910.899 549.812 L
897.354 543.681 L
883.81 537.549 L
873.651 531.417 L
863.492 527.329 L
853.333 523.242 L
846.561 521.198 L
904.127 394.475 L
910.899 394.475 L
917.672 396.519 L
924.444 396.519 L
937.989 396.519 L
948.148 398.563 L
958.307 398.563 L
971.852 398.563 L
985.397 398.563 L
998.942 396.519 L
1012.49 394.475 L
1026.03 392.431 L
1039.58 388.343 L
1056.51 384.255 L
1070.05 380.168 L
1083.6 374.036 L
1097.14 365.86 L
1103.92 359.729 L
1107.3 353.597 L
1110.69 341.333 L
1107.3 329.07 L
1100.53 316.806 L
1086.98 302.499 L
1073.44 288.192 L
1056.51 275.928 L
1036.19 259.577 L
1015.87 245.269 L
992.169 230.962 L
965.079 216.655 L
937.989 202.347 L
910.899 188.04 L
880.423 175.776 L
853.333 163.513 L
822.857 153.293 L
792.381 145.118 L
761.905 136.942 L
734.815 130.81 L
724.656 128.766 L
714.497 126.723 L
704.339 124.679 L
690.794 122.635 L
680.635 120.591 L
670.476 120.591 L
656.931 118.547 L
646.772 118.547 L
643.386 118.547 L
636.614 120.591 L
629.841 120.591 L
616.296 120.591 L
602.751 122.635 L
585.82 126.723 L
568.889 128.766 L
548.571 134.898 L
531.64 141.03 L
511.323 149.206 L
494.392 159.425 L
480.847 169.645 L
467.302 183.952 L
457.143 200.303 L
450.37 218.699 L
446.984 239.138 L
446.984 243.226 L
446.984 247.313 L
446.984 249.357 L
446.984 253.445 L
430.053 259.577 L
409.735 265.709 L
396.19 273.884 L
382.646 284.104 L
372.487 294.323 L
365.714 304.543 L
362.328 316.806 L
358.942 329.07 L
362.328 337.246 L
362.328 345.421 L
365.714 353.597 L
369.101 359.729 L
375.873 367.904 L
382.646 374.036 L
389.418 380.168 L
399.577 386.299 L
409.735 392.431 L
419.894 396.519 L
430.053 400.607 L
443.598 402.651 L
453.757 406.739 L
467.302 408.782 L
480.847 408.782 L
494.392 410.826 L
511.323 408.782 L
524.868 406.739 L
538.413 404.695 L
551.958 402.651 L
565.503 398.563 L
575.661 392.431 L
589.206 386.299 L
599.365 380.168 L
602.751 416.958 L
602.751 443.529 L
599.365 461.924 L
595.979 468.056 L
595.979 470.1 L
585.82 470.1 L
575.661 470.1 L
565.503 472.144 L
551.958 472.144 L
538.413 472.144 L
521.482 472.144 L
507.936 472.144 L
491.005 472.144 L
474.074 472.144 L
457.143 472.144 L
443.598 470.1 L
426.667 468.056 L
413.122 463.968 L
396.19 461.924 L
382.646 457.836 L
372.487 451.705 L
352.169 441.485 L
335.238 431.265 L
321.693 423.09 L
311.534 414.914 L
301.376 406.739 L
294.603 400.607 L
291.217 394.475 L
291.217 392.431 L
294.603 388.343 L
301.376 384.255 L
304.762 378.124 L
311.534 374.036 L
318.307 367.904 L
321.693 361.772 L
325.079 355.641 L
325.079 347.465 L
325.079 343.377 L
321.693 339.289 L
318.307 335.202 L
314.921 331.114 L
304.762 327.026 L
297.989 322.938 L
294.603 320.894 L
291.217 318.85 L
287.831 316.806 L
284.444 314.762 L
284.444 312.719 L
281.058 310.675 L
281.058 306.587 L
277.672 302.499 L
274.286 300.455 L
264.127 298.411 L
257.354 298.411 L
291.217 247.313 L
243.81 237.094 L
213.333 286.148 L
213.333 286.148 L
209.947 286.148 L
206.561 284.104 L
203.175 284.104 L
193.016 286.148 L
179.471 288.192 L
165.926 292.279 L
148.995 296.367 L
138.836 302.499 L
125.291 308.631 L
115.132 312.719 L
108.36 318.85 L
108.36 320.894 L
111.746 324.982 L
111.746 331.114 L
118.519 335.202 L
206.561 335.202 L
203.175 333.158 L
199.788 331.114 L
199.788 329.07 L
196.402 327.026 L
203.175 324.982 L
206.561 320.894 L
213.333 314.762 L
220.106 310.675 L
216.72 314.762 L
216.72 318.85 L
220.106 324.982 L
226.878 333.158 L
237.037 341.333 L
240.423 347.465 L
240.423 349.509 L
240.423 351.553 L
240.423 351.553 L
240.423 351.553 L
240.423 351.553 L
237.037 351.553 L
237.037 351.553 L
233.651 349.509 L
230.265 347.465 L
223.492 345.421 L
220.106 343.377 L
216.72 341.333 L
209.947 339.289 L
206.561 335.202 L
118.519 335.202 L
121.905 341.333 L
132.063 347.465 L
142.222 353.597 L
152.381 361.772 L
169.312 369.948 L
182.857 378.124 L
199.788 388.343 L
220.106 398.563 L
220.106 408.782 L
223.492 425.134 L
226.878 445.573 L
237.037 466.012 L
250.582 490.539 L
267.513 510.978 L
294.603 531.417 L
328.466 547.768 L
342.011 551.856 L
355.556 555.944 L
365.714 560.032 L
379.259 564.12 L
389.418 566.164 L
399.577 570.252 L
409.735 572.295 L
419.894 574.339 L
430.053 576.383 L
436.825 578.427 L
443.598 580.471 L
450.37 580.471 L
457.143 582.515 L
463.915 582.515 L
467.302 584.559 L
474.074 584.559 L
467.302 598.866 L
460.529 615.218 L
457.143 631.569 L
457.143 647.92 L
453.757 672.447 L
443.598 696.974 L
423.28 719.457 L
406.349 739.896 L
386.032 756.247 L
365.714 768.511 L
355.556 776.687 L
348.783 778.731 L
335.238 786.906 L
365.714 790.994 L
423.28 874.794 L
480.847 876.838 L
484.233 887.058 L
487.619 909.541 L
491.005 932.024 L
491.005 950.419 L
487.619 958.595 L
480.847 964.727 L
477.46 970.858 L
474.074 972.902 L
474.074 972.902 L
474.074 974.946 L
474.074 974.946 L
470.688 976.99 L
470.688 979.034 L
470.688 981.078 L
470.688 983.122 L
474.074 985.166 L
474.074 987.21 L
487.619 987.21 L
487.619 985.166 L
487.619 985.166 L
491.005 983.122 L
491.005 985.166 L
494.392 985.166 L
504.55 985.166 L
514.709 987.21 L
524.868 987.21 L
535.026 985.166 L
545.185 985.166 L
551.958 983.122 L
551.958 979.034 L
551.958 974.946 L
548.571 972.902 L
545.185 972.902 L
541.799 972.902 L
535.026 972.902 L
528.254 974.946 L
521.482 976.99 L
511.323 976.99 L
504.55 976.99 L
497.778 976.99 L
494.392 976.99 L
491.005 976.99 L
494.392 972.902 L
501.164 966.77 L
507.936 960.639 L
514.709 952.463 L
521.482 944.287 L
528.254 934.068 L
531.64 925.892 L
535.026 917.717 L
535.026 901.365 L
535.026 889.102 L
535.026 880.926 L
535.026 878.882 L
521.482 876.838 L
694.18 882.97 L
700.952 901.365 L
704.339 925.892 L
707.725 950.419 L
704.339 970.858 L
700.952 981.078 L
694.18 989.253 L
690.794 995.385 L
687.407 999.473 L
684.021 999.473 L
684.021 1001.52 L
684.021 1001.52 L
680.635 1003.56 L
677.249 1005.6 L
677.249 1009.69 L
680.635 1011.74 L
684.021 1015.82 L
684.021 1015.82 L
704.339 1015.82 L
704.339 1015.82 L
704.339 1013.78 L
707.725 1013.78 L
707.725 1013.78 L
711.111 1015.82 L
721.27 1015.82 L
734.815 1015.82 L
751.746 1015.82 L
765.291 1015.82 L
775.45 1013.78 L
785.608 1011.74 L
785.608 1005.6 L
782.222 1001.52 L
778.836 999.473 L
775.45 997.429 L
768.677 999.473 L
761.905 999.473 L
755.132 1001.52 L
744.974 1003.56 L
734.815 1005.6 L
728.042 1005.6 L
724.656 1005.6 L
721.27 1005.6 L
717.884 1005.6 L
714.497 1005.6 L
711.111 1003.56 L
707.725 1003.56 L
707.725 1003.56 L
711.111 999.473 L
717.884 991.297 L
724.656 983.122 L
734.815 972.902 L
744.974 962.683 L
751.746 950.419 L
758.518 940.2 L
761.905 927.936 L
761.905 915.673 L
761.905 903.409 L
765.291 893.19 L
765.291 885.014 L
778.836 885.014 L
778.836 936.112 L
782.222 936.112 L
782.222 938.156 L
785.608 938.156 L
785.608 940.2 L
792.381 942.244 L
795.767 942.244 L
802.54 944.287 L
809.312 944.287 L
819.471 944.287 L
1144.55 944.287 L
1154.71 942.244 L
1168.25 938.156 L
1168.25 805.301 L
1070.05 805.301 L
1066.67 797.126 L
1059.89 788.95 L
1056.51 780.774 L
1049.74 772.599 L
1039.58 766.467 L
1036.19 760.335 L
1029.42 754.204 L
1026.03 750.116 L
1026.03 743.984 L
1029.42 733.764 L
1032.8 719.457 L
1032.8 707.194 L
944.762 715.369 L
951.534 723.545 L
954.921 733.764 L
961.693 743.984 L
965.079 750.116 L
961.693 752.16 L
958.307 756.247 L
954.921 762.379 L
951.534 770.555 L
951.534 778.731 L
951.534 788.95 L
958.307 797.126 L
965.079 805.301 L
860.106 805.301 L
856.72 786.906 L
853.333 768.511 L
856.72 750.116 L
870.265 733.764 L
880.423 725.589 L
890.582 717.413 L
897.354 711.281 L
904.127 705.15 L
907.513 696.974 L
910.899 692.886 L
914.286 686.755 L
917.672 682.667 L
921.058 686.755 L
924.444 688.798 L
927.831 692.886 L
931.217 696.974 L
934.603 701.062 L
937.989 707.194 L
941.376 711.281 L
944.762 715.369 L
1032.8 707.194 L
1032.8 707.194 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
816.085 645.876 m
816.085 645.876 L
816.085 645.876 L
816.085 645.876 L
816.085 645.876 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
849.947 817.565 m
958.307 817.565 L
954.921 825.741 L
948.148 833.916 L
941.376 842.092 L
937.989 850.267 L
934.603 856.399 L
934.603 864.575 L
937.989 868.663 L
941.376 872.75 L
948.148 874.794 L
951.534 876.838 L
954.921 876.838 L
961.693 876.838 L
965.079 876.838 L
971.852 874.794 L
975.238 874.794 L
978.624 872.75 L
982.011 870.707 L
985.397 870.707 L
988.783 868.663 L
992.169 866.619 L
995.556 868.663 L
998.942 870.707 L
1005.71 872.75 L
1012.49 872.75 L
1019.26 872.75 L
1026.03 872.75 L
1032.8 870.707 L
1039.58 866.619 L
1042.96 862.531 L
1053.12 858.443 L
1056.51 852.311 L
1063.28 844.136 L
1066.67 838.004 L
1070.05 831.872 L
1073.44 823.697 L
1073.44 817.565 L
1147.94 817.565 L
1147.94 925.892 L
849.947 925.892 L
849.947 817.565 L
849.947 817.565 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
1026.03 858.443 m
1022.65 860.487 L
1019.26 860.487 L
1015.87 860.487 L
1015.87 860.487 L
1012.49 860.487 L
1009.1 858.443 L
1005.71 858.443 L
1005.71 856.399 L
1012.49 835.96 L
1005.71 838.004 L
998.942 842.092 L
992.169 848.224 L
988.783 852.311 L
985.397 854.355 L
982.011 856.399 L
978.624 858.443 L
975.238 860.487 L
971.852 862.531 L
965.079 862.531 L
961.693 864.575 L
958.307 864.575 L
958.307 864.575 L
958.307 864.575 L
954.921 864.575 L
954.921 864.575 L
954.921 862.531 L
954.921 856.399 L
958.307 852.311 L
961.693 844.136 L
968.466 835.96 L
975.238 827.784 L
982.011 819.609 L
988.783 811.433 L
992.169 807.345 L
988.783 805.301 L
982.011 799.17 L
975.238 790.994 L
971.852 780.774 L
971.852 772.599 L
975.238 766.467 L
978.624 762.379 L
978.624 760.335 L
982.011 756.247 L
1009.1 756.247 L
1015.87 762.379 L
1022.65 768.511 L
1029.42 776.687 L
1036.19 784.862 L
1042.96 793.038 L
1046.35 801.214 L
1053.12 807.345 L
1053.12 813.477 L
1053.12 819.609 L
1053.12 825.741 L
1049.74 831.872 L
1046.35 838.004 L
1039.58 844.136 L
1036.19 850.267 L
1029.42 854.355 L
1026.03 858.443 L
1026.03 858.443 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
494.392 398.563 m
484.233 396.519 L
474.074 396.519 L
460.529 394.475 L
450.37 392.431 L
440.212 390.387 L
430.053 386.299 L
423.28 382.212 L
413.122 378.124 L
406.349 371.992 L
399.577 367.904 L
392.804 361.772 L
389.418 355.641 L
386.032 349.509 L
382.646 343.377 L
382.646 335.202 L
379.259 329.07 L
382.646 318.85 L
386.032 306.587 L
392.804 298.411 L
402.963 288.192 L
413.122 280.016 L
430.053 273.884 L
443.598 267.753 L
460.529 263.665 L
470.688 261.621 L
467.302 257.533 L
467.302 251.401 L
467.302 247.313 L
467.302 243.226 L
467.302 239.138 L
467.302 228.918 L
470.688 218.699 L
474.074 208.479 L
480.847 198.259 L
487.619 188.04 L
494.392 179.864 L
507.936 171.689 L
518.095 163.513 L
531.64 155.337 L
545.185 149.206 L
562.116 143.074 L
575.661 138.986 L
592.593 134.898 L
609.524 132.854 L
629.841 130.81 L
646.772 130.81 L
656.931 130.81 L
667.09 130.81 L
677.249 132.854 L
687.407 134.898 L
697.566 134.898 L
707.725 136.942 L
717.884 138.986 L
728.042 143.074 L
728.042 143.074 L
755.132 149.206 L
782.222 155.337 L
812.698 163.513 L
839.788 173.733 L
870.265 185.996 L
897.354 198.259 L
924.444 210.523 L
951.534 224.83 L
975.238 239.138 L
998.942 253.445 L
1019.26 267.753 L
1039.58 280.016 L
1056.51 294.323 L
1070.05 306.587 L
1080.21 318.85 L
1086.98 331.114 L
1090.37 339.289 L
1090.37 347.465 L
1086.98 353.597 L
1080.21 357.685 L
1066.67 365.86 L
1053.12 371.992 L
1036.19 376.08 L
1022.65 380.168 L
1005.71 382.212 L
992.169 384.255 L
978.624 386.299 L
961.693 386.299 L
951.534 386.299 L
937.989 384.255 L
927.831 384.255 L
917.672 384.255 L
910.899 382.212 L
904.127 382.212 L
900.741 380.168 L
900.741 380.168 L
887.196 378.124 L
866.878 431.265 L
863.492 425.134 L
856.72 421.046 L
849.947 416.958 L
843.175 416.958 L
833.016 419.002 L
826.243 423.09 L
819.471 429.222 L
819.471 437.397 L
819.471 445.573 L
826.243 451.705 L
833.016 457.836 L
843.175 457.836 L
846.561 457.836 L
849.947 457.836 L
853.333 455.792 L
856.72 455.792 L
829.63 515.066 L
616.296 466.012 L
623.069 451.705 L
623.069 429.222 L
623.069 398.563 L
612.91 363.816 L
609.524 347.465 L
595.979 361.772 L
585.82 369.948 L
575.661 376.08 L
565.503 384.255 L
551.958 388.343 L
538.413 392.431 L
524.868 394.475 L
511.323 396.519 L
494.392 398.563 L
494.392 398.563 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
257.354 251.401 m
264.127 253.445 L
237.037 298.411 L
240.423 300.455 L
233.651 300.455 L
230.265 302.499 L
226.878 304.543 L
223.492 306.587 L
223.492 304.543 L
223.492 304.543 L
223.492 302.499 L
226.878 300.455 L
257.354 251.401 L
257.354 251.401 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
128.677 322.938 m
135.45 318.85 L
142.222 314.762 L
152.381 310.675 L
165.926 306.587 L
179.471 302.499 L
189.63 298.411 L
199.788 298.411 L
206.561 298.411 L
206.561 298.411 L
206.561 298.411 L
206.561 298.411 L
206.561 298.411 L
206.561 298.411 L
206.561 298.411 L
206.561 300.455 L
203.175 302.499 L
203.175 304.543 L
199.788 308.631 L
193.016 310.675 L
186.243 314.762 L
182.857 318.85 L
176.085 322.938 L
169.312 327.026 L
169.312 327.026 L
172.698 329.07 L
172.698 331.114 L
172.698 331.114 L
179.471 335.202 L
186.243 339.289 L
193.016 345.421 L
203.175 349.509 L
209.947 355.641 L
220.106 359.729 L
226.878 361.772 L
233.651 363.816 L
240.423 363.816 L
247.196 363.816 L
253.968 361.772 L
257.354 357.685 L
260.741 353.597 L
260.741 345.421 L
253.968 335.202 L
243.81 324.982 L
240.423 322.938 L
240.423 318.85 L
237.037 316.806 L
240.423 314.762 L
240.423 312.719 L
243.81 310.675 L
250.582 310.675 L
253.968 310.675 L
257.354 310.675 L
260.741 310.675 L
260.741 310.675 L
260.741 310.675 L
260.741 312.719 L
264.127 312.719 L
264.127 314.762 L
264.127 314.762 L
264.127 316.806 L
267.513 320.894 L
270.899 322.938 L
274.286 324.982 L
277.672 329.07 L
284.444 331.114 L
291.217 335.202 L
297.989 341.333 L
301.376 341.333 L
304.762 343.377 L
304.762 345.421 L
304.762 347.465 L
304.762 353.597 L
301.376 357.685 L
297.989 363.816 L
294.603 367.904 L
287.831 374.036 L
284.444 378.124 L
277.672 382.212 L
274.286 384.255 L
233.651 390.387 L
216.72 380.168 L
196.402 369.948 L
179.471 359.729 L
162.54 349.509 L
148.995 341.333 L
138.836 333.158 L
132.063 327.026 L
128.677 322.938 L
128.677 322.938 L
Q
f
0.2 0.541176 0.662745 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
477.46 647.92 m
480.847 621.349 L
487.619 594.778 L
497.778 572.295 L
511.323 549.812 L
524.868 531.417 L
538.413 517.11 L
545.185 506.89 L
548.571 504.846 L
535.026 513.022 L
531.64 515.066 L
528.254 519.154 L
521.482 523.242 L
514.709 531.417 L
504.55 539.593 L
497.778 549.812 L
487.619 562.076 L
480.847 574.339 L
474.074 572.295 L
470.688 572.295 L
467.302 572.295 L
460.529 570.252 L
453.757 570.252 L
446.984 568.208 L
440.212 566.164 L
430.053 564.12 L
419.894 562.076 L
409.735 560.032 L
399.577 555.944 L
389.418 553.9 L
375.873 549.812 L
365.714 545.725 L
352.169 541.637 L
338.624 537.549 L
308.148 523.242 L
287.831 506.89 L
267.513 486.451 L
257.354 466.012 L
250.582 445.573 L
243.81 427.178 L
243.81 412.87 L
240.423 400.607 L
270.899 396.519 L
274.286 402.651 L
281.058 406.739 L
287.831 414.914 L
294.603 423.09 L
308.148 431.265 L
321.693 441.485 L
338.624 451.705 L
358.942 461.924 L
375.873 468.056 L
392.804 474.188 L
413.122 478.275 L
433.439 480.319 L
453.757 482.363 L
474.074 484.407 L
494.392 484.407 L
514.709 484.407 L
535.026 484.407 L
551.958 484.407 L
568.889 482.363 L
582.434 482.363 L
595.979 480.319 L
606.138 480.319 L
609.524 480.319 L
612.91 480.319 L
612.91 478.275 L
829.63 529.373 L
833.016 531.417 L
839.788 533.461 L
849.947 535.505 L
860.106 541.637 L
870.265 545.725 L
883.81 553.9 L
900.741 560.032 L
914.286 570.252 L
927.831 578.427 L
944.762 588.647 L
958.307 598.866 L
971.852 611.13 L
982.011 623.393 L
992.169 635.657 L
1002.33 649.964 L
1005.71 662.228 L
1012.49 690.842 L
1012.49 715.369 L
1012.49 733.764 L
1005.71 743.984 L
985.397 743.984 L
982.011 737.852 L
975.238 729.677 L
968.466 719.457 L
961.693 709.238 L
954.921 696.974 L
944.762 686.755 L
937.989 678.579 L
927.831 670.403 L
914.286 664.271 L
900.741 658.14 L
883.81 652.008 L
866.878 645.876 L
849.947 641.788 L
839.788 637.701 L
829.63 635.657 L
826.243 633.613 L
795.767 629.525 L
799.153 631.569 L
809.312 633.613 L
822.857 639.745 L
836.402 645.876 L
853.333 654.052 L
870.265 660.184 L
887.196 668.359 L
900.741 674.491 L
900.741 674.491 L
897.354 678.579 L
893.968 684.711 L
890.582 690.842 L
883.81 696.974 L
877.037 707.194 L
866.878 717.413 L
853.333 727.633 L
846.561 735.808 L
839.788 743.984 L
836.402 754.204 L
833.016 764.423 L
833.016 774.643 L
833.016 784.862 L
836.402 795.082 L
839.788 805.301 L
829.63 805.301 L
829.63 811.433 L
799.153 811.433 L
799.153 807.345 L
778.836 807.345 L
778.836 817.565 L
375.873 778.731 L
389.418 770.555 L
406.349 758.291 L
423.28 743.984 L
440.212 727.633 L
453.757 711.281 L
467.302 690.842 L
474.074 668.359 L
477.46 647.92 L
477.46 647.92 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
436.825 862.531 m
389.418 793.038 L
778.836 829.828 L
778.836 872.75 L
436.825 862.531 L
436.825 862.531 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
799.153 929.98 m
799.153 823.697 L
829.63 823.697 L
829.63 932.024 L
829.63 932.024 L
826.243 932.024 L
822.857 932.024 L
819.471 932.024 L
809.312 932.024 L
805.926 932.024 L
802.54 932.024 L
799.153 929.98 L
799.153 929.98 L
Q
f
1 1 1 0 k
q
0.03534 0 0 -0.05907 274.4 451 cm
748.36 275.928 m
755.132 273.884 L
758.518 271.84 L
761.905 265.709 L
761.905 259.577 L
761.905 259.577 L
761.905 259.577 L
761.905 257.533 L
761.905 257.533 L
765.291 261.621 L
768.677 265.709 L
768.677 269.796 L
768.677 275.928 L
768.677 280.016 L
765.291 286.148 L
761.905 290.236 L
758.518 294.323 L
758.518 294.323 L
758.518 294.323 L
758.518 294.323 L
758.518 294.323 L
765.291 294.323 L
768.677 292.279 L
775.45 290.236 L
778.836 288.192 L
782.222 284.104 L
785.608 280.016 L
788.995 273.884 L
788.995 269.796 L
788.995 263.665 L
785.608 259.577 L
782.222 255.489 L
778.836 251.401 L
775.45 249.357 L
768.677 247.313 L
765.291 245.269 L
758.518 245.269 L
755.132 245.269 L
755.132 245.269 L
751.746 245.269 L
748.36 245.269 L
748.36 245.269 L
748.36 245.269 L
748.36 245.269 L
748.36 245.269 L
744.974 245.269 L
744.974 247.313 L
741.587 247.313 L
741.587 249.357 L
741.587 249.357 L
741.587 249.357 L
741.587 249.357 L
741.587 249.357 L
741.587 249.357 L
738.201 251.401 L
738.201 255.489 L
734.815 257.533 L
734.815 259.577 L
738.201 265.709 L
741.587 271.84 L
744.974 273.884 L
748.36 275.928 L
748.36 275.928 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
880.423 275.928 m
883.81 273.884 L
890.582 271.84 L
893.968 265.709 L
893.968 259.577 L
893.968 259.577 L
893.968 259.577 L
893.968 257.533 L
893.968 257.533 L
897.354 261.621 L
897.354 265.709 L
900.741 269.796 L
900.741 275.928 L
900.741 280.016 L
897.354 286.148 L
893.968 290.236 L
887.196 294.323 L
887.196 294.323 L
890.582 294.323 L
890.582 294.323 L
890.582 294.323 L
897.354 294.323 L
900.741 292.279 L
907.513 290.236 L
910.899 288.192 L
914.286 284.104 L
917.672 280.016 L
917.672 273.884 L
921.058 269.796 L
917.672 263.665 L
917.672 259.577 L
914.286 255.489 L
910.899 251.401 L
907.513 249.357 L
900.741 247.313 L
897.354 245.269 L
890.582 245.269 L
887.196 245.269 L
883.81 245.269 L
883.81 245.269 L
880.423 245.269 L
880.423 245.269 L
880.423 245.269 L
880.423 245.269 L
880.423 245.269 L
877.037 245.269 L
873.651 247.313 L
873.651 247.313 L
870.265 249.357 L
870.265 249.357 L
870.265 249.357 L
870.265 249.357 L
870.265 249.357 L
870.265 249.357 L
870.265 251.401 L
866.878 255.489 L
866.878 257.533 L
866.878 259.577 L
866.878 265.709 L
870.265 271.84 L
873.651 273.884 L
880.423 275.928 L
880.423 275.928 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
511.323 275.928 m
507.936 275.928 L
501.164 275.928 L
491.005 277.972 L
477.46 280.016 L
463.915 284.104 L
450.37 288.192 L
436.825 294.323 L
426.667 300.455 L
416.508 316.806 L
413.122 335.202 L
416.508 347.465 L
416.508 353.597 L
416.508 351.553 L
416.508 347.465 L
419.894 341.333 L
423.28 333.158 L
430.053 324.982 L
436.825 316.806 L
446.984 308.631 L
460.529 300.455 L
474.074 294.323 L
484.233 290.236 L
494.392 284.104 L
501.164 282.06 L
504.55 277.972 L
507.936 277.972 L
507.936 275.928 L
511.323 275.928 L
511.323 275.928 L
Q
f
q
0.03534 0 0 -0.05907 274.4 451 cm
582.434 316.806 m
582.434 318.85 L
579.048 322.938 L
575.661 327.026 L
572.275 333.158 L
565.503 339.289 L
555.344 347.465 L
545.185 353.597 L
528.254 357.685 L
514.709 361.772 L
501.164 365.86 L
491.005 367.904 L
484.233 369.948 L
477.46 369.948 L
474.074 369.948 L
470.688 371.992 L
470.688 371.992 L
470.688 371.992 L
477.46 371.992 L
484.233 374.036 L
494.392 374.036 L
507.936 374.036 L
521.482 371.992 L
535.026 369.948 L
555.344 363.816 L
568.889 357.685 L
579.048 349.509 L
582.434 341.333 L
585.82 335.202 L
585.82 329.07 L
585.82 322.938 L
582.434 318.85 L
582.434 316.806 L
582.434 316.806 L
Q
f
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
