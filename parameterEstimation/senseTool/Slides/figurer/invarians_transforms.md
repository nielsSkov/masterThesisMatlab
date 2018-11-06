%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: invarians_transforms.md
%%CreationDate: Mon Mar 12 11:57:29 2007
%%BoundingBox: 47 326 550 515
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
47 326 moveto 47 515 lineto 550 515 lineto 550 326 lineto closepath clip
newpath
%%EndPageSetup
0.878431 0.898039 0.909804 0 k
0 w
q
0.3751 0 0 -0.1653 57 505.6 cm
996.551 207.558 m
791.802 203.929 L
791.802 209.009 L
996.551 212.638 L
996.551 207.558 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
0 212.638 m
342.954 209.009 L
342.954 203.929 L
0 207.558 L
0 212.638 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
793.082 410.035 m
791.802 407.133 L
342.954 407.133 L
342.954 412.938 L
791.802 412.938 L
793.082 410.035 L
791.802 412.938 L
793.082 412.938 L
793.082 410.035 L
793.082 410.035 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
791.802 0 m
790.522 2.90291 L
790.522 410.035 L
793.082 410.035 L
793.082 2.90291 L
791.802 0 L
793.082 2.90291 L
793.082 0 L
791.802 0 L
791.802 0 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
341.675 2.90291 m
342.954 5.80581 L
791.802 5.80581 L
791.802 0 L
342.954 0 L
341.675 2.90291 L
342.954 0 L
341.675 0 L
341.675 2.90291 L
341.675 2.90291 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
342.954 412.938 m
344.234 410.035 L
344.234 2.90291 L
341.675 2.90291 L
341.675 410.035 L
342.954 412.938 L
341.675 410.035 L
341.675 412.938 L
342.954 412.938 L
342.954 412.938 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1279.68 812.088 m
791.802 814.991 L
791.802 820.071 L
1279.68 817.894 L
1279.68 812.088 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
226.503 817.894 m
342.954 820.071 L
342.954 814.991 L
226.823 812.088 L
226.503 817.894 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
793.082 1021.1 m
791.802 1018.19 L
342.954 1018.19 L
342.954 1024 L
791.802 1024 L
793.082 1021.1 L
791.802 1024 L
793.082 1024 L
793.082 1021.1 L
793.082 1021.1 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
791.802 611.062 m
790.522 613.965 L
790.522 1021.1 L
793.082 1021.1 L
793.082 613.965 L
791.802 611.062 L
793.082 613.965 L
793.082 611.062 L
791.802 611.062 L
791.802 611.062 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
341.675 613.965 m
342.954 616.867 L
791.802 616.867 L
791.802 611.062 L
342.954 611.062 L
341.675 613.965 L
342.954 611.062 L
341.675 611.062 L
341.675 613.965 L
341.675 613.965 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
342.954 1024 m
344.234 1021.1 L
344.234 613.965 L
341.675 613.965 L
341.675 1021.1 L
342.954 1024 L
341.675 1021.1 L
341.675 1024 L
342.954 1024 L
342.954 1024 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
100.135 817.894 m
159.96 817.894 L
159.96 812.088 L
100.135 812.088 L
100.135 817.894 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
160.6 817.894 m
230.662 734.435 L
229.383 729.355 L
159.32 812.814 L
160.6 817.894 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
98.8553 202.478 m
98.8553 814.991 L
101.415 814.991 L
101.415 202.478 L
98.8553 202.478 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1062.45 116.842 m
992.392 207.558 L
993.672 212.638 L
1063.73 121.922 L
1062.45 116.842 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1276.48 207.558 m
1066.29 207.558 L
1066.29 212.638 L
1276.48 212.638 L
1276.48 207.558 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
225.544 811.362 m
225.544 811.362 L
225.544 812.088 L
225.224 812.814 L
225.224 813.539 L
224.904 814.265 L
224.904 814.991 L
224.584 815.716 L
224.264 816.442 L
223.944 817.168 L
223.624 817.894 L
223.304 818.619 L
222.664 818.619 L
222.344 819.345 L
221.705 819.345 L
221.065 820.071 L
220.425 820.071 L
220.105 820.071 L
220.105 825.877 L
220.745 825.877 L
221.385 825.151 L
222.344 825.151 L
222.984 824.425 L
223.624 823.7 L
224.264 823.7 L
224.904 822.248 L
225.544 821.522 L
225.864 820.797 L
226.503 819.345 L
226.823 818.619 L
227.143 817.168 L
227.463 815.716 L
227.783 814.265 L
227.783 812.814 L
227.783 811.362 L
227.783 811.362 L
225.544 811.362 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
220.105 802.653 m
220.105 802.653 L
220.425 802.653 L
221.065 803.379 L
221.705 803.379 L
222.344 803.379 L
222.664 804.105 L
223.304 804.831 L
223.624 804.831 L
223.944 805.556 L
224.264 806.282 L
224.584 807.008 L
224.904 807.734 L
224.904 808.459 L
225.224 809.185 L
225.224 809.911 L
225.544 810.636 L
225.544 811.362 L
227.783 811.362 L
227.783 809.911 L
227.783 808.459 L
227.463 807.008 L
227.143 805.556 L
226.823 804.105 L
226.503 803.379 L
225.864 801.928 L
225.544 801.202 L
224.904 800.476 L
224.264 799.751 L
223.624 799.025 L
222.984 798.299 L
222.344 797.573 L
221.385 797.573 L
220.745 797.573 L
220.105 797.573 L
220.105 797.573 L
220.105 802.653 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
214.666 811.362 m
214.666 811.362 L
214.666 810.636 L
214.666 809.911 L
214.666 809.185 L
214.986 808.459 L
214.986 807.734 L
215.306 807.008 L
215.626 806.282 L
215.946 805.556 L
216.266 804.831 L
216.906 804.831 L
217.226 804.105 L
217.866 803.379 L
218.185 803.379 L
218.825 803.379 L
219.465 802.653 L
220.105 802.653 L
220.105 797.573 L
219.145 797.573 L
218.505 797.573 L
217.866 797.573 L
216.906 798.299 L
216.266 799.025 L
215.626 799.751 L
214.986 800.476 L
214.666 801.202 L
214.026 801.928 L
213.387 803.379 L
213.067 804.105 L
212.747 805.556 L
212.427 807.008 L
212.107 808.459 L
212.107 809.911 L
212.107 811.362 L
212.107 811.362 L
214.666 811.362 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
220.105 820.071 m
220.105 820.071 L
219.465 820.071 L
218.825 820.071 L
218.185 819.345 L
217.866 819.345 L
217.226 818.619 L
216.906 818.619 L
216.266 817.894 L
215.946 817.168 L
215.626 816.442 L
215.306 815.716 L
214.986 814.991 L
214.986 814.265 L
214.666 813.539 L
214.666 812.814 L
214.666 812.088 L
214.666 811.362 L
212.107 811.362 L
212.107 812.814 L
212.107 814.265 L
212.427 815.716 L
212.747 817.168 L
213.067 818.619 L
213.387 819.345 L
214.026 820.797 L
214.666 821.522 L
214.986 822.248 L
215.626 823.7 L
216.266 823.7 L
216.906 824.425 L
217.866 825.151 L
218.505 825.151 L
219.145 825.877 L
220.105 825.877 L
220.105 825.877 L
220.105 820.071 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1068.53 214.089 m
1068.53 214.089 L
1068.53 214.815 L
1068.53 215.541 L
1068.21 216.266 L
1068.21 216.992 L
1068.21 217.718 L
1067.89 218.444 L
1067.57 219.169 L
1067.57 219.895 L
1067.25 220.621 L
1066.93 220.621 L
1066.61 221.347 L
1066.29 222.072 L
1065.97 222.072 L
1065.65 222.072 L
1065.01 222.072 L
1064.69 222.072 L
1064.69 227.878 L
1065.33 227.878 L
1065.97 227.878 L
1066.61 227.152 L
1067.25 227.152 L
1067.89 226.427 L
1068.21 225.701 L
1068.85 224.975 L
1069.17 224.249 L
1069.49 222.798 L
1069.81 222.072 L
1070.13 220.621 L
1070.45 219.169 L
1070.77 218.444 L
1070.77 216.992 L
1071.09 215.541 L
1071.09 214.089 L
1071.09 214.089 L
1068.53 214.089 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1064.69 205.381 m
1064.69 205.381 L
1065.01 205.381 L
1065.65 205.381 L
1065.97 206.106 L
1066.29 206.106 L
1066.61 206.106 L
1066.93 206.832 L
1067.25 207.558 L
1067.57 207.558 L
1067.57 208.283 L
1067.89 209.009 L
1068.21 209.735 L
1068.21 210.461 L
1068.21 211.186 L
1068.53 211.912 L
1068.53 213.364 L
1068.53 214.089 L
1071.09 214.089 L
1071.09 212.638 L
1070.77 211.186 L
1070.77 209.735 L
1070.45 208.283 L
1070.13 206.832 L
1069.81 206.106 L
1069.49 204.655 L
1069.17 203.929 L
1068.85 203.203 L
1068.21 202.478 L
1067.89 201.752 L
1067.25 201.026 L
1066.61 200.3 L
1065.97 200.3 L
1065.33 199.575 L
1064.69 199.575 L
1064.69 199.575 L
1064.69 205.381 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1061.17 214.089 m
1061.17 214.089 L
1061.17 213.364 L
1061.17 211.912 L
1061.17 211.186 L
1061.17 210.461 L
1061.49 209.735 L
1061.81 209.009 L
1061.81 208.283 L
1062.13 207.558 L
1062.45 207.558 L
1062.77 206.832 L
1063.09 206.106 L
1063.41 206.106 L
1063.73 206.106 L
1064.05 205.381 L
1064.37 205.381 L
1064.69 205.381 L
1064.69 199.575 L
1064.05 199.575 L
1063.41 200.3 L
1062.77 200.3 L
1062.45 201.026 L
1061.81 201.752 L
1061.17 202.478 L
1060.85 203.203 L
1060.21 203.929 L
1059.9 204.655 L
1059.58 206.106 L
1059.26 206.832 L
1058.94 208.283 L
1058.94 209.735 L
1058.62 211.186 L
1058.62 212.638 L
1058.62 214.089 L
1058.62 214.089 L
1061.17 214.089 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
1064.69 222.072 m
1064.69 222.072 L
1064.37 222.072 L
1064.05 222.072 L
1063.73 222.072 L
1063.41 222.072 L
1063.09 221.347 L
1062.77 220.621 L
1062.45 220.621 L
1062.13 219.895 L
1061.81 219.169 L
1061.81 218.444 L
1061.49 217.718 L
1061.17 216.992 L
1061.17 216.266 L
1061.17 215.541 L
1061.17 214.815 L
1061.17 214.089 L
1058.62 214.089 L
1058.62 215.541 L
1058.62 216.992 L
1058.94 218.444 L
1058.94 219.169 L
1059.26 220.621 L
1059.58 222.072 L
1059.9 222.798 L
1060.21 224.249 L
1060.85 224.975 L
1061.17 225.701 L
1061.81 226.427 L
1062.45 227.152 L
1062.77 227.152 L
1063.41 227.878 L
1064.05 227.878 L
1064.69 227.878 L
1064.69 227.878 L
1064.69 222.072 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
225.544 811.362 m
225.544 811.362 L
225.544 812.088 L
225.224 812.814 L
225.224 813.539 L
224.904 814.265 L
224.904 814.991 L
224.584 815.716 L
224.264 816.442 L
223.944 817.168 L
223.624 817.894 L
223.304 818.619 L
222.664 818.619 L
222.344 819.345 L
221.705 819.345 L
221.065 820.071 L
220.425 820.071 L
220.105 820.071 L
220.105 825.877 L
220.745 825.877 L
221.385 825.151 L
222.344 825.151 L
222.984 824.425 L
223.624 823.7 L
224.264 823.7 L
224.904 822.248 L
225.544 821.522 L
225.864 820.797 L
226.503 819.345 L
226.823 818.619 L
227.143 817.168 L
227.463 815.716 L
227.783 814.265 L
227.783 812.814 L
227.783 811.362 L
227.783 811.362 L
225.544 811.362 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
220.105 802.653 m
220.105 802.653 L
220.425 802.653 L
221.065 803.379 L
221.705 803.379 L
222.344 803.379 L
222.664 804.105 L
223.304 804.831 L
223.624 804.831 L
223.944 805.556 L
224.264 806.282 L
224.584 807.008 L
224.904 807.734 L
224.904 808.459 L
225.224 809.185 L
225.224 809.911 L
225.544 810.636 L
225.544 811.362 L
227.783 811.362 L
227.783 809.911 L
227.783 808.459 L
227.463 807.008 L
227.143 805.556 L
226.823 804.105 L
226.503 803.379 L
225.864 801.928 L
225.544 801.202 L
224.904 800.476 L
224.264 799.751 L
223.624 799.025 L
222.984 798.299 L
222.344 797.573 L
221.385 797.573 L
220.745 797.573 L
220.105 797.573 L
220.105 797.573 L
220.105 802.653 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
214.666 811.362 m
214.666 811.362 L
214.666 810.636 L
214.666 809.911 L
214.666 809.185 L
214.986 808.459 L
214.986 807.734 L
215.306 807.008 L
215.626 806.282 L
215.946 805.556 L
216.266 804.831 L
216.906 804.831 L
217.226 804.105 L
217.866 803.379 L
218.185 803.379 L
218.825 803.379 L
219.465 802.653 L
220.105 802.653 L
220.105 797.573 L
219.145 797.573 L
218.505 797.573 L
217.866 797.573 L
216.906 798.299 L
216.266 799.025 L
215.626 799.751 L
214.986 800.476 L
214.666 801.202 L
214.026 801.928 L
213.387 803.379 L
213.067 804.105 L
212.747 805.556 L
212.427 807.008 L
212.107 808.459 L
212.107 809.911 L
212.107 811.362 L
212.107 811.362 L
214.666 811.362 L
Q
f
q
0.3751 0 0 -0.1653 57 505.6 cm
220.105 820.071 m
220.105 820.071 L
219.465 820.071 L
218.825 820.071 L
218.185 819.345 L
217.866 819.345 L
217.226 818.619 L
216.906 818.619 L
216.266 817.894 L
215.946 817.168 L
215.626 816.442 L
215.306 815.716 L
214.986 814.991 L
214.986 814.265 L
214.666 813.539 L
214.666 812.814 L
214.666 812.088 L
214.666 811.362 L
212.107 811.362 L
212.107 812.814 L
212.107 814.265 L
212.427 815.716 L
212.747 817.168 L
213.067 818.619 L
213.387 819.345 L
214.026 820.797 L
214.666 821.522 L
214.986 822.248 L
215.626 823.7 L
216.266 823.7 L
216.906 824.425 L
217.866 825.151 L
218.505 825.151 L
219.145 825.877 L
220.105 825.877 L
220.105 825.877 L
220.105 820.071 L
Q
f
[0.12 0 0 0.12 238.3 464.6] e
498 -60.009 0 221.859 tbx
0 tal
273 tld
1 1 1 0 k
/_MicrosoftSansSerif 249 tfn
(G\(p\)) 0 -7.71901 tpt
T
[0.12 0 0 0.12 235.8 364.7] e
596.378 -60.009 0 221.859 tbx
0 tal
273 tld
/_MicrosoftSansSerif 249 tfn
(G\(q\)) 0 -7.71901 tpt
T
[0.12 0 0 0.12 251.9 358.7] e
93.75 -30.125 0 111.375 tbx
0 tal
137 tld
/_MicrosoftSansSerif 125 tfn
(d) 0 -3.875 tpt
T
[0.12 0 0 0.12 484.6 383.4] e
465.015 -45.067 0 166.617 tbx
0 tal
205 tld
/_MicrosoftSansSerif 187 tfn
(y\(k\)) 0 -5.797 tpt
T
[0.12 0 0 0.12 493.3 377.6] e
52.264 -22.654 0 83.754 tbx
0 tal
103 tld
/_MicrosoftSansSerif 94 tfn
(d) 0 -2.914 tpt
T
[0.12 0 0 0.12 80.76 483.4] e
280.5 -45.067 0 166.617 tbx
0 tal
205 tld
/_MicrosoftSansSerif 187 tfn
(u\(t\)) 0 -5.797 tpt
T
[0.12 0 0 0.12 131.7 345.2] e
322.014 -45.067 0 166.617 tbx
0 tal
205 tld
/_MicrosoftSansSerif 187 tfn
(u\(k\)) 0 -5.797 tpt
T
[0.12 0 0 0.12 389.5 482.1] e
270.028 -45.067 0 166.617 tbx
0 tal
205 tld
/_MicrosoftSansSerif 187 tfn
(y\(t\)) 0 -5.797 tpt
T
[0.12 0 0 0.12 482 482.1] e
311.542 -45.067 0 166.617 tbx
0 tal
205 tld
/_MicrosoftSansSerif 187 tfn
(y\(k\)) 0 -5.797 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
