%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: sensitiv.md
%%CreationDate: Mon Mar 12 13:59:17 2007
%%BoundingBox: 84 275 509 566
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
84 275 moveto 84 566 lineto 509 566 lineto 509 275 lineto closepath clip
newpath
%%EndPageSetup
0.75 w
q
0.3373 0 0 -0.2932 81.1 571.8 cm
147.983 918.209 m
147.983 918.209 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
147.983 918.209 m
158.581 918.209 L
169.178 922.278 L
179.775 922.278 L
190.373 926.799 L
246.765 926.799 L
257.363 922.278 L
267.96 922.278 L
278.557 918.209 L
292.561 918.209 L
320.946 910.072 L
338.356 905.551 L
380.745 892.892 L
398.533 884.754 L
412.537 880.233 L
426.54 872.095 L
440.923 867.574 L
462.117 859.437 L
479.527 846.778 L
500.721 838.188 L
518.51 825.529 L
535.92 817.392 L
557.114 804.733 L
574.902 796.143 L
592.312 783.484 L
613.507 770.826 L
701.691 707.984 L
719.48 690.804 L
736.889 678.146 L
754.678 661.418 L
768.681 648.759 L
786.47 632.032 L
803.879 619.373 L
814.477 606.714 L
828.48 594.056 L
849.675 568.738 L
864.057 556.079 L
895.47 518.103 L
906.067 501.376 L
923.856 480.579 L
931.047 467.921 L
937.859 459.331 L
941.644 446.672 L
948.457 438.534 L
955.648 425.875 L
959.054 413.217 L
966.245 400.558 L
969.651 391.968 L
976.842 379.309 L
987.439 341.333 L
987.439 337.264 L
990.846 333.196 L
990.846 295.219 L
987.439 286.63 L
987.439 278.492 L
980.248 269.902 L
980.248 261.312 L
966.245 244.585 L
962.46 244.585 L
952.241 231.926 L
948.457 231.926 L
945.05 227.857 L
934.453 227.857 L
931.047 223.788 L
920.449 223.788 L
909.852 219.267 L
874.654 219.267 L
864.057 215.198 L
853.459 215.198 L
842.862 219.267 L
811.07 219.267 L
800.473 223.788 L
786.47 223.788 L
758.084 231.926 L
740.674 236.447 L
712.289 244.585 L
698.285 253.174 L
680.497 257.243 L
666.493 261.312 L
652.49 269.902 L
638.108 273.971 L
616.913 286.63 L
599.503 295.219 L
578.309 303.809 L
560.52 316.016 L
543.111 324.606 L
521.916 337.264 L
504.128 349.923 L
486.718 358.513 L
465.523 371.172 L
394.749 421.355 L
377.339 438.534 L
342.141 463.4 L
324.352 480.579 L
310.349 493.238 L
292.561 509.966 L
275.151 522.624 L
264.554 535.283 L
250.171 547.942 L
229.355 573.259 L
214.973 585.466 L
193.779 610.783 L
183.182 627.963 L
162.365 652.828 L
155.174 665.487 L
147.983 674.077 L
141.171 686.736 L
137.386 695.325 L
130.574 707.984 L
123.383 716.122 L
119.976 728.781 L
112.785 741.439 L
109.379 754.098 L
102.188 762.688 L
91.5908 800.212 L
91.5908 804.733 L
88.1845 812.871 L
88.1845 850.847 L
91.5908 854.916 L
91.5908 863.505 L
95.3755 872.095 L
98.7818 876.164 L
98.7818 880.233 L
116.192 901.482 L
119.976 901.482 L
126.789 910.072 L
130.574 910.072 L
133.98 914.14 L
141.171 914.14 L
144.577 918.209 L
147.983 918.209 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 573.259 m
539.326 573.259 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 573.259 m
980.248 269.902 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1142.61 514.034 m
1142.61 514.034 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1142.61 514.034 m
1149.43 514.034 L
1149.43 522.624 L
1146.02 530.762 L
1146.02 522.624 L
1149.43 518.103 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1149.43 514.034 m
1149.43 514.034 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1149.43 514.034 m
1149.43 522.624 L
1146.02 530.762 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1149.43 522.624 m
1149.43 522.624 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1149.43 522.624 m
1153.21 518.103 L
1153.21 514.034 L
1160.02 514.034 L
1160.02 518.103 L
1156.62 518.103 L
1156.62 514.034 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1167.21 509.966 m
1167.21 509.966 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1167.21 509.966 m
1174.03 509.966 L
1177.81 505.897 L
1174.03 509.966 L
1170.62 530.762 L
1167.21 530.762 L
1170.62 530.762 L
1177.81 505.897 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1174.03 509.966 m
1174.03 509.966 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1174.03 509.966 m
1167.21 509.966 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1174.03 509.966 m
1174.03 509.966 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1174.03 509.966 m
1167.21 530.762 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1142.61 518.103 m
1142.61 518.103 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1142.61 518.103 m
1142.61 514.034 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
895.47 720.191 m
895.47 720.191 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
895.47 720.191 m
895.47 724.712 L
888.658 745.508 L
895.47 720.191 L
892.064 724.712 L
888.658 724.712 L
888.658 728.781 L
892.064 724.712 L
888.658 745.508 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 573.259 m
539.326 573.259 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 573.259 m
447.735 383.378 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 341.333 m
482.933 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 341.333 m
486.718 337.264 L
486.718 333.196 L
497.315 328.675 L
497.315 324.606 L
500.721 320.537 L
497.315 316.016 L
500.721 316.016 L
500.721 324.606 L
497.315 328.675 L
486.718 333.196 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
486.718 337.264 m
486.718 337.264 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
486.718 337.264 m
493.53 341.333 L
497.315 341.333 L
500.721 337.264 L
497.315 341.333 L
493.53 341.333 L
486.718 337.264 L
493.53 341.333 L
497.315 341.333 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 328.675 m
497.315 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 328.675 m
493.53 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 328.675 m
497.315 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 328.675 m
500.721 324.606 L
500.721 316.016 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 316.016 m
497.315 316.016 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 316.016 m
490.124 316.016 L
490.124 324.606 L
490.124 320.537 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
486.718 337.264 m
486.718 337.264 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
486.718 337.264 m
486.718 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
529.107 93.132 m
529.107 93.132 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
529.107 93.132 m
539.326 84.5422 L
539.326 59.2247 L
539.326 977.434 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 84.5422 m
539.326 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 84.5422 m
549.923 93.132 L
539.326 59.2247 L
539.326 89.0631 L
539.326 63.7457 L
535.92 67.8146 L
535.92 89.0631 L
535.92 71.8834 L
532.513 76.4044 L
532.513 89.0631 L
532.513 80.4733 L
529.107 84.5422 L
529.107 93.132 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
529.107 93.132 m
529.107 93.132 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
529.107 93.132 m
539.326 59.2247 L
539.326 84.5422 L
539.326 59.2247 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 63.7457 m
543.111 63.7457 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 63.7457 m
543.111 89.0631 L
539.326 84.5422 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 89.0631 m
543.111 89.0631 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 89.0631 m
543.111 63.7457 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 76.4044 m
543.111 76.4044 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 76.4044 m
543.111 89.0631 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
546.517 89.0631 m
546.517 89.0631 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
546.517 89.0631 m
546.517 80.4733 L
543.111 76.4044 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
546.517 84.5422 m
546.517 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
546.517 84.5422 m
546.517 89.0631 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 93.132 m
549.923 93.132 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 93.132 m
549.923 89.0631 L
546.517 84.5422 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
599.503 84.5422 m
599.503 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
599.503 84.5422 m
599.503 80.4733 L
602.91 80.4733 L
602.91 84.5422 L
606.316 84.5422 L
606.316 89.0631 L
602.91 101.722 L
599.503 101.722 L
602.91 89.0631 L
602.91 84.5422 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
602.91 84.5422 m
602.91 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
602.91 84.5422 m
602.91 101.722 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
606.316 89.0631 m
606.316 89.0631 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
606.316 89.0631 m
606.316 84.5422 L
610.101 84.5422 L
610.101 80.4733 L
613.507 80.4733 L
613.507 84.5422 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
620.698 80.4733 m
620.698 80.4733 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
620.698 80.4733 m
620.698 76.4044 L
624.104 76.4044 L
624.104 71.8834 L
634.701 71.8834 L
634.701 80.4733 L
631.295 84.5422 L
620.698 93.132 L
616.913 101.722 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
616.913 97.2009 m
616.913 97.2009 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
616.913 97.2009 m
634.701 97.2009 L
634.701 93.132 L
634.701 97.2009 L
620.698 97.2009 L
627.51 101.722 L
631.295 101.722 L
631.295 97.2009 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
631.295 84.5422 m
631.295 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
631.295 84.5422 m
627.51 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
631.295 84.5422 m
631.295 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
631.295 84.5422 m
620.698 93.132 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
620.698 80.4733 m
620.698 80.4733 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
620.698 80.4733 m
624.104 80.4733 L
624.104 76.4044 L
624.104 80.4733 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
634.701 80.4733 m
634.701 80.4733 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
634.701 80.4733 m
631.295 80.4733 L
631.295 84.5422 L
634.701 80.4733 L
634.701 71.8834 L
631.295 71.8834 L
634.701 76.4044 L
634.701 80.4733 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
631.295 71.8834 m
631.295 71.8834 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
631.295 71.8834 m
631.295 71.8834 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
599.503 84.5422 m
599.503 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
599.503 84.5422 m
596.097 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
596.097 215.198 m
596.097 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
596.097 215.198 m
574.902 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 215.198 m
549.923 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 215.198 m
529.107 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
620.698 215.198 m
620.698 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
620.698 215.198 m
641.892 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
663.087 215.198 m
663.087 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
663.087 215.198 m
687.688 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
708.882 215.198 m
708.882 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
708.882 215.198 m
733.483 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
754.678 215.198 m
754.678 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
754.678 215.198 m
779.279 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
800.473 215.198 m
800.473 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
800.473 215.198 m
821.668 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
846.268 215.198 m
846.268 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
846.268 215.198 m
856.866 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
959.054 273.971 m
959.054 273.971 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
959.054 273.971 m
966.245 278.492 L
980.248 269.902 L
966.245 278.492 L
966.245 291.151 L
980.248 269.902 L
959.054 273.971 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
959.054 273.971 m
959.054 273.971 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
959.054 273.971 m
973.057 273.971 L
969.651 278.492 L
962.46 278.492 L
969.651 278.492 L
969.651 291.151 L
969.651 278.492 L
969.651 286.63 L
973.057 282.561 L
973.057 273.971 L
973.057 282.561 L
976.842 278.492 L
976.842 273.971 L
980.248 273.971 L
980.248 269.902 L
976.842 273.971 L
959.054 273.971 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
969.651 269.902 m
969.651 269.902 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
969.651 269.902 m
980.248 269.902 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 303.809 m
990.846 303.809 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 303.809 m
990.846 316.016 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 341.333 m
990.846 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 341.333 m
990.846 371.172 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 396.037 m
990.846 396.037 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 396.037 m
990.846 421.355 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 450.741 m
990.846 450.741 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 450.741 m
990.846 476.058 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 505.897 m
990.846 505.897 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 505.897 m
990.846 530.762 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 556.079 m
990.846 556.079 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 556.079 m
990.846 585.466 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 585.466 m
1124.83 585.466 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 585.466 m
1153.21 573.259 L
1124.83 556.079 L
1128.23 573.259 L
1153.21 573.259 L
1128.23 573.259 L
1149.43 573.259 L
1128.23 573.259 L
1128.23 577.328 L
1142.61 577.328 L
1124.83 577.328 L
1124.83 581.397 L
1132.02 581.397 L
1124.83 581.397 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 585.466 m
1124.83 585.466 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 585.466 m
1128.23 573.259 L
1153.21 573.259 L
38.6044 573.259 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
518.51 552.011 m
518.51 552.011 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
518.51 552.011 m
539.326 573.259 L
535.92 543.421 L
529.107 552.011 L
539.326 573.259 L
529.107 552.011 L
518.51 552.011 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
521.916 556.079 m
521.916 556.079 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
521.916 556.079 m
532.513 556.079 L
521.916 556.079 L
525.322 560.6 L
532.513 560.6 L
525.322 560.6 L
535.92 560.6 L
535.92 564.669 L
532.513 564.669 L
535.92 564.669 L
535.92 568.738 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
535.92 564.669 m
535.92 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
535.92 564.669 m
535.92 543.421 L
532.513 547.942 L
532.513 560.6 L
532.513 552.011 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
535.92 547.942 m
535.92 547.942 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
535.92 547.942 m
535.92 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 568.738 m
539.326 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
539.326 568.738 m
539.326 560.6 L
535.92 547.942 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
553.708 547.942 m
553.708 547.942 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
553.708 547.942 m
539.326 573.259 L
564.305 568.738 L
553.708 560.6 L
539.326 573.259 L
553.708 560.6 L
553.708 547.942 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
553.708 547.942 m
553.708 547.942 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
553.708 547.942 m
553.708 564.669 L
549.923 564.669 L
549.923 556.079 L
549.923 564.669 L
546.517 564.669 L
546.517 560.6 L
546.517 568.738 L
543.111 568.738 L
543.111 564.669 L
543.111 568.738 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 568.738 m
543.111 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
543.111 568.738 m
549.923 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 564.669 m
549.923 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 564.669 m
546.517 564.669 L
560.52 564.669 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
560.52 568.738 m
560.52 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
560.52 568.738 m
543.111 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 564.669 m
549.923 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 564.669 m
560.52 564.669 L
557.114 560.6 L
553.708 560.6 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
553.708 560.6 m
553.708 560.6 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
553.708 560.6 m
553.708 547.942 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 328.675 m
549.923 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
549.923 328.675 m
529.107 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 400.558 m
468.93 400.558 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 400.558 m
447.735 383.378 L
451.52 413.217 L
458.332 404.627 L
447.735 383.378 L
458.332 404.627 L
468.93 400.558 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
465.523 400.558 m
465.523 400.558 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
465.523 400.558 m
454.926 400.558 L
465.523 400.558 L
462.117 396.037 L
454.926 396.037 L
458.332 396.037 L
458.332 391.968 L
451.52 391.968 L
454.926 391.968 L
454.926 387.899 L
451.52 387.899 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
451.52 391.968 m
451.52 391.968 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
451.52 391.968 m
451.52 408.696 L
451.52 387.899 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
451.52 391.968 m
451.52 391.968 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
451.52 391.968 m
451.52 413.217 L
454.926 408.696 L
454.926 396.037 L
454.926 404.627 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
567.711 80.4733 m
567.711 80.4733 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
567.711 80.4733 m
571.118 84.5422 L
581.715 84.5422 L
585.5 80.4733 L
585.5 76.4044 L
588.906 71.8834 L
588.906 67.8146 L
585.5 59.2247 L
585.5 55.1558 L
581.715 55.1558 L
578.309 51.087 L
574.902 51.087 L
567.711 59.2247 L
567.711 76.4044 L
571.118 80.4733 L
571.118 84.5422 L
574.902 84.5422 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
578.309 84.5422 m
578.309 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
578.309 84.5422 m
581.715 84.5422 L
585.5 80.4733 L
585.5 55.1558 L
581.715 55.1558 L
578.309 51.087 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
574.902 51.087 m
574.902 51.087 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
574.902 51.087 m
571.118 55.1558 L
567.711 55.1558 L
567.711 80.4733 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
571.118 76.4044 m
571.118 76.4044 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
571.118 76.4044 m
571.118 63.7457 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
571.118 67.8146 m
571.118 67.8146 L
Q
B
584.743 71.4313 571.118 67.8146 [0.3373 0 0 -0.2932 81.1 571.8] Bx
s
q
0.3373 0 0 -0.2932 81.1 571.8 cm
581.715 76.4044 m
581.715 76.4044 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
581.715 76.4044 m
581.715 63.7457 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
645.299 67.8146 m
645.299 67.8146 L
Q
B
672.927 75.9523 645.299 67.8146 [0.3373 0 0 -0.2932 81.1 571.8] Bx
s
q
0.3373 0 0 -0.2932 81.1 571.8 cm
683.903 63.7457 m
683.903 63.7457 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
683.903 63.7457 m
694.5 51.087 L
694.5 59.2247 L
687.688 84.5422 L
683.903 84.5422 L
687.688 84.5422 L
694.5 51.087 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
691.094 59.2247 m
691.094 59.2247 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
691.094 59.2247 m
687.688 59.2247 L
683.903 63.7457 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
691.094 59.2247 m
691.094 59.2247 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
691.094 59.2247 m
683.903 84.5422 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 560.6 m
849.675 560.6 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 560.6 m
849.675 585.466 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1022.64 632.032 m
1022.64 632.032 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1022.64 632.032 m
1026.04 632.032 L
1033.23 623.442 L
1029.83 632.032 L
1026.04 652.828 L
1033.23 623.442 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1029.83 632.032 m
1029.83 632.032 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1029.83 632.032 m
1022.64 632.032 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1029.83 632.032 m
1029.83 632.032 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1029.83 632.032 m
1022.64 652.828 L
1026.04 652.828 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1043.83 652.828 m
1043.83 652.828 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1043.83 652.828 m
1047.24 640.622 L
1050.64 640.622 L
1050.64 636.101 L
1057.84 636.101 L
1057.84 652.828 L
1054.43 652.828 L
1057.84 644.69 L
1057.84 640.622 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1057.84 636.101 m
1057.84 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1057.84 636.101 m
1057.84 640.622 L
1054.43 652.828 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1057.84 640.622 m
1057.84 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1057.84 640.622 m
1061.24 640.622 L
1065.03 636.101 L
1068.43 636.101 L
1071.84 640.622 L
1068.43 648.759 L
1068.43 652.828 L
1071.84 652.828 L
1075.62 648.759 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 644.69 m
1068.43 644.69 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 644.69 m
1068.43 652.828 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 648.759 m
1068.43 648.759 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 648.759 m
1068.43 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 640.622 m
1068.43 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 640.622 m
1068.43 644.69 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 640.622 m
1068.43 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1068.43 640.622 m
1068.43 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1079.03 636.101 m
1079.03 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1079.03 636.101 m
1082.44 636.101 L
1086.22 640.622 L
1082.44 648.759 L
1082.44 652.828 L
1086.22 652.828 L
1089.63 648.759 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 644.69 m
1082.44 644.69 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 644.69 m
1082.44 652.828 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 648.759 m
1082.44 648.759 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 648.759 m
1082.44 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 640.622 m
1082.44 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 640.622 m
1082.44 644.69 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 640.622 m
1082.44 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1082.44 640.622 m
1082.44 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1079.03 636.101 m
1079.03 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1079.03 636.101 m
1079.03 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1093.03 640.622 m
1093.03 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1093.03 640.622 m
1093.03 636.101 L
1096.82 636.101 L
1100.22 640.622 L
1096.82 652.828 L
1096.82 640.622 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1096.82 636.101 m
1096.82 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1096.82 636.101 m
1096.82 652.828 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1100.22 640.622 m
1100.22 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1100.22 640.622 m
1103.63 636.101 L
1110.82 636.101 L
1110.82 640.622 L
1107.04 648.759 L
1107.04 652.828 L
1110.82 652.828 L
1114.23 648.759 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1107.04 644.69 m
1107.04 644.69 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1107.04 644.69 m
1107.04 652.828 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1107.04 648.759 m
1107.04 648.759 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1107.04 648.759 m
1107.04 644.69 L
1110.82 640.622 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1110.82 640.622 m
1110.82 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1110.82 640.622 m
1107.04 644.69 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1110.82 640.622 m
1110.82 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1110.82 640.622 m
1110.82 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1086.22 627.963 m
1086.22 627.963 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1086.22 627.963 m
1086.22 623.442 L
1086.22 627.963 L
1086.22 623.442 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1086.22 627.963 m
1086.22 627.963 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1086.22 627.963 m
1086.22 627.963 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1043.83 636.101 m
1043.83 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1043.83 636.101 m
1047.24 636.101 L
1047.24 640.622 L
1043.83 652.828 L
1043.83 644.69 L
1047.24 640.622 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1047.24 636.101 m
1047.24 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1047.24 636.101 m
1047.24 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1043.83 636.101 m
1043.83 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1043.83 636.101 m
1040.05 636.101 L
1040.05 640.622 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1128.23 568.738 m
1128.23 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1128.23 568.738 m
1149.43 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1146.02 568.738 m
1146.02 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1146.02 568.738 m
1128.23 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1128.23 568.738 m
1128.23 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1128.23 568.738 m
1146.02 568.738 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1138.83 564.669 m
1138.83 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1138.83 564.669 m
1128.23 564.669 L
1128.23 568.738 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 564.669 m
1124.83 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 564.669 m
1138.83 564.669 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1132.02 560.6 m
1132.02 560.6 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1132.02 560.6 m
1124.83 560.6 L
1124.83 564.669 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 560.6 m
1124.83 560.6 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 560.6 m
1132.02 560.6 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1128.23 514.034 m
1128.23 514.034 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1128.23 514.034 m
1132.02 509.966 L
1132.02 493.238 L
1128.23 488.717 L
1128.23 484.648 L
1117.63 484.648 L
1114.23 488.717 L
1114.23 493.238 L
1110.82 497.307 L
1110.82 501.376 L
1114.23 509.966 L
1114.23 514.034 L
1117.63 514.034 L
1121.42 518.103 L
1128.23 514.034 L
1124.83 514.034 L
1128.23 514.034 L
1128.23 509.966 L
1132.02 501.376 L
1132.02 497.307 L
1128.23 493.238 L
1128.23 488.717 L
1124.83 484.648 L
1121.42 484.648 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1121.42 484.648 m
1121.42 484.648 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1121.42 484.648 m
1117.63 484.648 L
1110.82 493.238 L
1110.82 509.966 L
1114.23 514.034 L
1117.63 514.034 L
1121.42 518.103 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1121.42 518.103 m
1121.42 518.103 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1121.42 518.103 m
1124.83 514.034 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 505.897 m
1124.83 505.897 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 505.897 m
1124.83 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1124.83 501.376 m
1124.83 501.376 L
Q
B
1127.47 505.445 1117.63 501.376 [0.3373 0 0 -0.2932 81.1 571.8] Bx
s
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1117.63 505.897 m
1117.63 505.897 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1117.63 505.897 m
1117.63 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1191.82 501.376 m
1191.82 501.376 L
Q
B
1215.66 505.445 1191.82 501.376 [0.3373 0 0 -0.2932 81.1 571.8] Bx
s
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1230.8 493.238 m
1230.8 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1230.8 493.238 m
1237.61 488.717 L
1241.4 484.648 L
1237.61 488.717 L
1230.8 518.103 L
1241.4 484.648 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1237.61 488.717 m
1237.61 488.717 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1237.61 488.717 m
1234.2 493.238 L
1230.8 493.238 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1237.61 488.717 m
1237.61 488.717 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1237.61 488.717 m
1230.8 518.103 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 231.926 m
482.933 231.926 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 231.926 m
482.933 219.267 L
482.933 231.926 L
479.527 231.926 L
482.933 231.926 L
482.933 236.447 L
486.718 236.447 L
486.718 227.857 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
490.124 223.788 m
490.124 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
490.124 223.788 m
490.124 219.267 L
493.53 215.198 L
497.315 215.198 L
497.315 236.447 L
493.53 236.447 L
497.315 223.788 L
497.315 219.267 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 219.267 m
497.315 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 219.267 m
497.315 223.788 L
493.53 236.447 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 223.788 m
497.315 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
497.315 223.788 m
504.128 215.198 L
507.912 215.198 L
507.912 219.267 L
511.319 219.267 L
511.319 223.788 L
507.912 231.926 L
507.912 219.267 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
507.912 223.788 m
507.912 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
507.912 223.788 m
507.912 236.447 L
511.319 236.447 L
511.319 231.926 L
514.725 227.857 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
507.912 231.926 m
507.912 231.926 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
507.912 231.926 m
507.912 231.926 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
507.912 223.788 m
507.912 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
507.912 223.788 m
507.912 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 219.267 m
482.933 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 219.267 m
482.933 215.198 L
479.527 215.198 L
476.121 219.267 L
476.121 223.788 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 219.267 m
482.933 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 219.267 m
479.527 227.857 L
479.527 231.926 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
472.336 227.857 m
472.336 227.857 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
472.336 227.857 m
472.336 236.447 L
468.93 236.447 L
468.93 219.267 L
468.93 231.926 L
465.523 231.926 L
468.93 231.926 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
465.523 231.926 m
465.523 231.926 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
465.523 231.926 m
465.523 227.857 L
468.93 219.267 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 219.267 m
468.93 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 219.267 m
465.523 215.198 L
462.117 219.267 L
458.332 219.267 L
458.332 223.788 L
454.926 236.447 L
454.926 223.788 L
458.332 219.267 L
458.332 223.788 L
454.926 236.447 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
458.332 223.788 m
458.332 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
458.332 223.788 m
458.332 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
458.332 219.267 m
458.332 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
458.332 219.267 m
454.926 215.198 L
451.52 215.198 L
451.52 219.267 L
447.735 219.267 L
444.329 223.788 L
444.329 236.447 L
440.923 236.447 L
444.329 223.788 L
444.329 219.267 L
444.329 236.447 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
444.329 223.788 m
444.329 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
444.329 223.788 m
444.329 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
444.329 219.267 m
444.329 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
444.329 219.267 m
444.329 215.198 L
440.923 215.198 L
440.923 219.267 L
437.138 223.788 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
433.732 215.198 m
433.732 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
433.732 215.198 m
430.325 219.267 L
419.728 227.857 L
415.943 236.447 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
415.943 231.926 m
415.943 231.926 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
415.943 231.926 m
433.732 231.926 L
433.732 227.857 L
433.732 231.926 L
419.728 231.926 L
426.54 236.447 L
430.325 236.447 L
430.325 231.926 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
430.325 219.267 m
430.325 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
430.325 219.267 m
426.54 223.788 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
430.325 219.267 m
430.325 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
430.325 219.267 m
419.728 227.857 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
419.728 215.198 m
419.728 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
419.728 215.198 m
419.728 211.129 L
423.134 211.129 L
423.134 206.608 L
433.732 206.608 L
433.732 215.198 L
430.325 219.267 L
430.325 215.198 L
433.732 215.198 L
433.732 211.129 L
430.325 206.608 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
433.732 206.608 m
433.732 206.608 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
433.732 206.608 m
433.732 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
423.134 215.198 m
423.134 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
423.134 215.198 m
419.728 215.198 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
423.134 215.198 m
423.134 215.198 L
Q
B
425.784 218.815 423.134 211.129 [0.3373 0 0 -0.2932 81.1 571.8] Bx
s
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 211.129 m
482.933 211.129 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
482.933 211.129 m
486.718 211.129 L
486.718 206.608 L
482.933 206.608 L
482.933 211.129 L
482.933 206.608 L
486.718 206.608 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
486.718 206.608 m
486.718 206.608 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
486.718 206.608 m
486.718 211.129 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
380.745 471.989 m
380.745 471.989 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
380.745 471.989 m
384.53 480.579 L
384.53 476.058 L
373.933 476.058 L
366.742 484.648 L
366.742 493.238 L
370.148 493.238 L
373.933 497.307 L
384.53 493.238 L
384.53 497.307 L
387.936 501.376 L
387.936 505.897 L
384.53 509.966 L
380.745 509.966 L
377.339 514.034 L
370.148 505.897 L
373.933 514.034 L
373.933 509.966 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
370.148 493.238 m
370.148 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
370.148 493.238 m
384.53 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
387.936 493.238 m
387.936 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
387.936 493.238 m
387.936 505.897 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
387.936 493.238 m
387.936 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
387.936 493.238 m
370.148 493.238 L
370.148 488.717 L
366.742 488.717 L
366.742 484.648 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
370.148 493.238 m
370.148 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
370.148 493.238 m
370.148 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
380.745 476.058 m
380.745 476.058 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
380.745 476.058 m
380.745 471.989 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
356.144 480.579 m
356.144 480.579 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
356.144 480.579 m
348.953 547.942 L
345.547 547.942 L
356.144 480.579 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
324.352 509.966 m
324.352 509.966 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
324.352 509.966 m
324.352 518.103 L
327.759 547.942 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
327.759 547.942 m
327.759 547.942 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
327.759 547.942 m
331.543 547.942 L
324.352 509.966 L
320.946 518.103 L
320.946 522.624 L
317.54 526.693 L
320.946 522.624 L
320.946 518.103 L
327.759 547.942 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
334.95 219.267 m
334.95 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
334.95 219.267 m
345.547 185.812 L
338.356 189.881 L
334.95 193.95 L
334.95 198.471 L
338.356 193.95 L
334.95 219.267 L
342.141 193.95 L
345.547 185.812 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
348.953 231.926 m
348.953 231.926 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
348.953 231.926 m
352.738 231.926 L
384.53 181.291 L
348.953 231.926 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
401.94 219.267 m
401.94 219.267 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
401.94 219.267 m
405.346 215.198 L
405.346 211.129 L
401.94 206.608 L
394.749 202.54 L
391.342 198.471 L
391.342 189.881 L
394.749 189.881 L
391.342 189.881 L
391.342 193.95 L
394.749 198.471 L
401.94 202.54 L
405.346 206.608 L
405.346 219.267 L
387.936 219.267 L
387.936 211.129 L
384.53 219.267 L
387.936 219.267 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
394.749 198.471 m
394.749 198.471 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
394.749 198.471 m
405.346 211.129 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
409.131 198.471 m
409.131 198.471 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
409.131 198.471 m
409.131 189.881 L
401.94 185.812 L
398.533 185.812 L
394.749 189.881 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
391.342 198.471 m
391.342 198.471 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
391.342 198.471 m
394.749 198.471 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
409.131 198.471 m
409.131 198.471 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
409.131 198.471 m
412.537 185.812 L
409.131 189.881 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
412.537 295.219 m
412.537 295.219 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
412.537 295.219 m
409.131 299.288 L
401.94 328.675 L
405.346 328.675 L
412.537 295.219 L
405.346 303.809 L
401.94 303.809 L
405.346 303.809 L
409.131 299.288 L
401.94 328.675 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
415.943 341.333 m
415.943 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
415.943 341.333 m
419.728 341.333 L
454.926 286.63 L
451.52 286.63 L
415.943 341.333 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
472.336 328.675 m
472.336 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
472.336 328.675 m
472.336 316.016 L
462.117 311.947 L
462.117 307.878 L
458.332 303.809 L
458.332 299.288 L
462.117 295.219 L
462.117 307.878 L
468.93 311.947 L
472.336 316.016 L
476.121 316.016 L
476.121 320.537 L
472.336 324.606 L
472.336 328.675 L
458.332 328.675 L
458.332 324.606 L
454.926 320.537 L
454.926 328.675 L
454.926 324.606 L
458.332 324.606 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 307.878 m
462.117 307.878 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 307.878 m
472.336 316.016 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
479.527 303.809 m
479.527 303.809 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
479.527 303.809 m
479.527 299.288 L
476.121 299.288 L
476.121 295.219 L
462.117 295.219 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 303.809 m
462.117 303.809 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 303.809 m
462.117 307.878 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
479.527 303.809 m
479.527 303.809 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
479.527 303.809 m
479.527 295.219 L
479.527 299.288 L
476.121 299.288 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
698.285 375.241 m
698.285 375.241 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
698.285 375.241 m
698.285 383.378 L
705.098 413.217 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
705.098 413.217 m
705.098 413.217 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
705.098 413.217 m
698.285 375.241 L
694.5 383.378 L
694.5 387.899 L
691.094 391.968 L
698.285 383.378 L
701.691 413.217 L
705.098 413.217 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
722.886 413.217 m
722.886 413.217 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
722.886 413.217 m
730.077 345.854 L
722.886 413.217 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
747.487 379.309 m
747.487 379.309 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
747.487 379.309 m
747.487 375.241 L
744.08 371.172 L
747.487 379.309 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
747.487 375.241 m
747.487 375.241 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
747.487 375.241 m
750.893 379.309 L
754.678 375.241 L
758.084 375.241 L
761.49 371.172 L
761.49 362.582 L
758.084 358.513 L
744.08 358.513 L
740.674 353.992 L
740.674 349.923 L
740.674 353.992 L
744.08 353.992 L
744.08 358.513 L
761.49 358.513 L
761.49 371.172 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
758.084 358.513 m
758.084 358.513 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
758.084 358.513 m
744.08 358.513 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
740.674 349.923 m
740.674 349.923 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
740.674 349.923 m
747.487 341.333 L
754.678 341.333 L
754.678 337.264 L
758.084 345.854 L
758.084 341.333 L
754.678 341.333 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 598.125 m
849.675 598.125 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 598.125 m
849.675 678.146 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 695.325 m
849.675 695.325 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 695.325 m
814.477 745.508 L
849.675 695.325 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
860.272 699.394 m
860.272 699.394 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
860.272 699.394 m
856.866 703.463 L
856.866 712.053 L
860.272 716.122 L
867.463 720.191 L
870.869 724.712 L
870.869 728.781 L
867.463 732.849 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
870.869 720.191 m
870.869 720.191 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
870.869 720.191 m
867.463 720.191 L
856.866 707.984 L
860.272 712.053 L
867.463 716.122 L
870.869 720.191 L
870.869 728.781 L
867.463 732.849 L
856.866 732.849 L
853.459 728.781 L
853.459 724.712 L
849.675 732.849 L
853.459 728.781 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
856.866 707.984 m
856.866 707.984 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
856.866 707.984 m
856.866 703.463 L
860.272 699.394 L
874.654 699.394 L
874.654 703.463 L
878.06 699.394 L
874.654 707.984 L
874.654 703.463 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 699.394 m
811.07 699.394 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 699.394 m
807.664 707.984 L
800.473 732.849 L
797.067 732.849 L
800.473 732.849 L
811.07 699.394 L
803.879 703.463 L
800.473 707.984 L
797.067 707.984 L
803.879 707.984 L
797.067 732.849 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
839.077 623.442 m
839.077 623.442 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
839.077 623.442 m
849.675 619.373 L
849.675 598.125 L
849.675 619.373 L
856.866 623.442 L
849.675 598.125 L
849.675 619.373 L
846.268 619.373 L
846.268 602.645 L
846.268 623.442 L
842.862 623.442 L
842.862 610.783 L
842.862 623.442 L
839.077 623.442 L
839.077 619.373 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
839.077 623.442 m
839.077 623.442 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
839.077 623.442 m
849.675 598.125 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 602.645 m
849.675 602.645 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
849.675 602.645 m
849.675 623.442 L
849.675 606.714 L
853.459 610.783 L
853.459 623.442 L
853.459 615.304 L
856.866 619.373 L
856.866 623.442 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
934.453 615.304 m
934.453 615.304 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
934.453 615.304 m
937.859 615.304 L
945.05 606.714 L
941.644 610.783 L
934.453 640.622 L
937.859 640.622 L
945.05 606.714 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
941.644 610.783 m
941.644 610.783 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
941.644 610.783 m
937.859 615.304 L
934.453 615.304 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
941.644 610.783 m
941.644 610.783 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
941.644 610.783 m
934.453 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
952.241 648.759 m
952.241 648.759 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
952.241 648.759 m
987.439 598.125 L
952.241 648.759 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
987.439 640.622 m
987.439 640.622 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
987.439 640.622 m
987.439 636.101 L
990.846 636.101 L
987.439 632.032 L
987.439 627.963 L
987.439 640.622 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 636.101 m
990.846 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 636.101 m
990.846 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 636.101 m
990.846 636.101 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
990.846 636.101 m
994.252 640.622 L
1001.44 640.622 L
1004.85 636.101 L
1004.85 627.963 L
998.037 619.373 L
994.252 619.373 L
994.252 606.714 L
994.252 615.304 L
1004.85 619.373 L
1004.85 623.442 L
1008.63 627.963 L
1008.63 632.032 L
1004.85 636.101 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1004.85 627.963 m
1004.85 627.963 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
1004.85 627.963 m
1004.85 623.442 L
994.252 619.373 L
994.252 615.304 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
994.252 606.714 m
994.252 606.714 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
994.252 606.714 m
1012.04 606.714 L
1012.04 615.304 L
1012.04 606.714 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 471.989 m
462.117 471.989 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 471.989 m
458.332 471.989 L
458.332 467.921 L
458.332 471.989 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 471.989 m
462.117 471.989 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 471.989 m
462.117 459.331 L
458.332 455.262 L
458.332 450.741 L
462.117 450.741 L
462.117 455.262 L
465.523 455.262 L
465.523 467.921 L
468.93 467.921 L
465.523 467.921 L
465.523 463.4 L
462.117 463.4 L
465.523 463.4 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 467.921 m
468.93 467.921 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 467.921 m
468.93 463.4 L
472.336 463.4 L
472.336 459.331 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 450.741 m
468.93 450.741 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 450.741 m
468.93 446.672 L
465.523 446.672 L
465.523 450.741 L
462.117 455.262 L
465.523 455.262 L
462.117 455.262 L
465.523 463.4 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 455.262 m
462.117 455.262 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
462.117 455.262 m
462.117 455.262 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
458.332 450.741 m
458.332 450.741 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
458.332 450.741 m
454.926 455.262 L
454.926 459.331 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
454.926 471.989 m
454.926 471.989 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
454.926 471.989 m
454.926 476.058 L
451.52 476.058 L
447.735 471.989 L
444.329 463.4 L
444.329 459.331 L
447.735 471.989 L
447.735 476.058 L
451.52 476.058 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
447.735 476.058 m
447.735 476.058 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
447.735 476.058 m
447.735 471.989 L
440.923 463.4 L
440.923 467.921 L
437.138 467.921 L
433.732 471.989 L
433.732 476.058 L
440.923 484.648 L
444.329 484.648 L
447.735 480.579 L
447.735 471.989 L
444.329 463.4 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
437.138 467.921 m
437.138 467.921 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
437.138 467.921 m
437.138 476.058 L
440.923 480.579 L
440.923 484.648 L
444.329 484.648 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
440.923 484.648 m
440.923 484.648 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
440.923 484.648 m
437.138 480.579 L
437.138 467.921 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
433.732 484.648 m
433.732 484.648 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
433.732 484.648 m
433.732 488.717 L
430.325 493.238 L
426.54 488.717 L
426.54 480.579 L
423.134 476.058 L
426.54 480.579 L
426.54 484.648 L
430.325 488.717 L
426.54 488.717 L
430.325 493.238 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
426.54 488.717 m
426.54 488.717 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
426.54 488.717 m
426.54 480.579 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
423.134 476.058 m
423.134 476.058 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
423.134 476.058 m
415.943 484.648 L
415.943 488.717 L
419.728 501.376 L
415.943 493.238 L
415.943 484.648 L
415.943 488.717 L
419.728 501.376 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
415.943 488.717 m
415.943 488.717 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
415.943 488.717 m
412.537 484.648 L
415.943 484.648 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
412.537 484.648 m
412.537 484.648 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
412.537 484.648 m
409.131 484.648 L
409.131 493.238 L
405.346 497.307 L
409.131 505.897 L
409.131 509.966 L
405.346 497.307 L
405.346 493.238 L
405.346 497.307 L
409.131 505.897 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
405.346 497.307 m
405.346 497.307 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
405.346 497.307 m
401.94 493.238 L
405.346 493.238 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
401.94 493.238 m
401.94 493.238 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
401.94 493.238 m
398.533 497.307 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 450.741 m
468.93 450.741 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 450.741 m
468.93 450.741 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 446.672 m
468.93 446.672 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
468.93 446.672 m
465.523 446.672 L
468.93 450.741 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
775.872 362.582 m
775.872 362.582 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
775.872 362.582 m
772.088 362.582 L
775.872 358.513 L
779.279 358.513 L
782.685 362.582 L
782.685 375.241 L
779.279 362.582 L
779.279 358.513 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
779.279 358.513 m
779.279 358.513 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
779.279 358.513 m
779.279 362.582 L
782.685 371.172 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
782.685 362.582 m
782.685 362.582 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
782.685 362.582 m
782.685 349.923 L
789.876 349.923 L
793.282 353.992 L
793.282 366.651 L
789.876 358.513 L
789.876 353.992 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
789.876 349.923 m
789.876 349.923 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
789.876 349.923 m
789.876 353.992 L
793.282 366.651 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
793.282 353.992 m
793.282 353.992 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
793.282 353.992 m
793.282 345.854 L
797.067 341.333 L
800.473 345.854 L
803.879 345.854 L
803.879 353.992 L
800.473 353.992 L
803.879 358.513 L
807.664 353.992 L
807.664 349.923 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
807.664 341.333 m
807.664 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
807.664 341.333 m
807.664 337.264 L
811.07 333.196 L
811.07 337.264 L
814.477 341.333 L
814.477 349.923 L
817.883 349.923 L
817.883 345.854 L
821.668 345.854 L
821.668 341.333 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
828.48 341.333 m
828.48 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
828.48 341.333 m
825.074 333.196 L
825.074 324.606 L
828.48 324.606 L
828.48 320.537 L
835.671 320.537 L
835.671 324.606 L
839.077 328.675 L
835.671 333.196 L
842.862 333.196 L
842.862 324.606 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 328.675 m
835.671 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 328.675 m
839.077 333.196 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 333.196 m
835.671 333.196 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 333.196 m
835.671 320.537 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 324.606 m
835.671 324.606 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 324.606 m
835.671 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 324.606 m
835.671 324.606 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
835.671 324.606 m
832.265 320.537 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
825.074 328.675 m
825.074 328.675 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
825.074 328.675 m
825.074 333.196 L
828.48 341.333 L
825.074 333.196 L
825.074 328.675 L
821.668 324.606 L
825.074 333.196 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
821.668 324.606 m
821.668 324.606 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
821.668 324.606 m
817.883 328.675 L
817.883 333.196 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 333.196 m
811.07 333.196 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 333.196 m
814.477 337.264 L
814.477 349.923 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
814.477 345.854 m
814.477 345.854 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
814.477 345.854 m
811.07 345.854 L
811.07 337.264 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 324.606 m
811.07 324.606 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 324.606 m
807.664 324.606 L
807.664 328.675 L
811.07 324.606 L
807.664 324.606 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 324.606 m
811.07 324.606 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
811.07 324.606 m
807.664 324.606 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
797.067 341.333 m
797.067 341.333 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
797.067 341.333 m
800.473 345.854 L
800.473 353.992 L
803.879 358.513 L
Q
S
q
0.3373 0 0 -0.2932 81.1 571.8 cm
800.473 353.992 m
800.473 353.992 L
Q
B
q
0.3373 0 0 -0.2932 81.1 571.8 cm
800.473 353.992 m
800.473 345.854 L
Q
B
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
