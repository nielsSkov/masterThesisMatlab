%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: displacement_dep_force_factor.md
%%CreationDate: Mon Mar 12 11:49:41 2007
%%BoundingBox: 194 344 389 502
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
194 344 moveto 194 502 lineto 389 502 lineto 389 344 lineto closepath clip
newpath
%%EndPageSetup
[0.1202 0 0 0.1172 237.6 488.2] e
839.16 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
( Nonlinear Bl\(x\): Blo=10  c1=1e6  c2=2e-4) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
1 w
[3 3] 0 d
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
412.505 908.778 m
412.505 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
412.505 76.2369 m
412.505 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
661.243 908.778 m
661.243 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
661.243 76.2369 m
661.243 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
906.892 908.778 m
906.892 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
906.892 76.2369 m
906.892 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
1154.86 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1154.86 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 826.477 m
1154.86 826.477 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 826.477 m
1154.86 826.477 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 742.443 m
1154.86 742.443 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 742.443 m
1154.86 742.443 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 660.142 m
1154.86 660.142 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 660.142 m
1154.86 660.142 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 575.242 m
1154.86 575.242 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 575.242 m
1154.86 575.242 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 493.807 m
1154.86 493.807 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 493.807 m
1154.86 493.807 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 408.907 m
1154.86 408.907 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 408.907 m
1154.86 408.907 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 326.606 m
1154.86 326.606 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 326.606 m
1154.86 326.606 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 242.572 m
1154.86 242.572 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 242.572 m
1154.86 242.572 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 158.538 m
1154.86 158.538 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 158.538 m
1154.86 158.538 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
1154.86 76.2369 L
Q
B
2.31744 w
[] 0 d
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
1154.86 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1154.86 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
1154.86 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 898.382 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
164.538 85.7665 L
Q
B
[0.1202 0 0 0.1172 219.9 363.5] e
40.005 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(-2) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
412.505 908.778 m
412.505 898.382 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
412.505 76.2369 m
412.505 85.7665 L
Q
B
[0.1202 0 0 0.1172 258.4 363.5] e
40.005 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(-1) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
661.243 908.778 m
661.243 898.382 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
661.243 76.2369 m
661.243 85.7665 L
Q
B
[0.1202 0 0 0.1172 299.4 363.5] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(0) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
906.892 908.778 m
906.892 898.382 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
906.892 76.2369 m
906.892 85.7665 L
Q
B
[0.1202 0 0 0.1172 337.7 363.5] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(1) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1154.86 898.382 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 76.2369 m
1154.86 85.7665 L
Q
B
[0.1202 0 0 0.1172 376.3 363.5] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(2) 0 -0.765003 tpt
T
[0.1202 0 0 0.1172 360.9 355.4] e
85.05 -10.215 0 40.725 tbx
0 tal
49 tld
/_MicrosoftSansSerif 45 tfn
(x 10) 0 -0.765003 tpt
T
[0.1202 0 0 0.1172 373.5 357.3] e
25.781 -6.583 0 26.245 tbx
0 tal
31 tld
/_MicrosoftSansSerif 29 tfn
(-3) 0 -0.493 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
175.353 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1144.04 908.778 L
Q
B
[0.1202 0 0 0.1172 216 368.6] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(0) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 826.477 m
175.353 826.477 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 826.477 m
1144.04 826.477 L
Q
B
[0.1202 0 0 0.1172 216 379.8] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(1) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 742.443 m
175.353 742.443 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 742.443 m
1144.04 742.443 L
Q
B
[0.1202 0 0 0.1172 216 391.3] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(2) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 660.142 m
175.353 660.142 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 660.142 m
1144.04 660.142 L
Q
B
[0.1202 0 0 0.1172 216 402.3] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(3) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 575.242 m
175.353 575.242 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 575.242 m
1144.04 575.242 L
Q
B
[0.1202 0 0 0.1172 216 413.8] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(4) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 493.807 m
175.353 493.807 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 493.807 m
1144.04 493.807 L
Q
B
[0.1202 0 0 0.1172 216 424.9] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(5) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 408.907 m
175.353 408.907 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 408.907 m
1144.04 408.907 L
Q
B
[0.1202 0 0 0.1172 216 436.3] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(6) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 326.606 m
175.353 326.606 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 326.606 m
1144.04 326.606 L
Q
B
[0.1202 0 0 0.1172 216 447.4] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(7) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 242.572 m
175.353 242.572 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 242.572 m
1144.04 242.572 L
Q
B
[0.1202 0 0 0.1172 216 458.7] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(8) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 158.538 m
175.353 158.538 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 158.538 m
1144.04 158.538 L
Q
B
[0.1202 0 0 0.1172 216 470.1] e
25.02 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(9) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
175.353 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 76.2369 m
1144.04 76.2369 L
Q
B
[0.1202 0 0 0.1172 214 481.2] e
50.04 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(10) 0 -0.765003 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
1154.86 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 908.778 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 908.778 m
164.538 908.778 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
1154.86 76.2369 m
1154.86 76.2369 L
Q
B
q
0.1555 0 0 -0.1353 197.3 494.2 cm
164.538 874.992 m
166.856 874.992 L
169.173 873.259 L
171.491 871.526 L
175.353 871.526 L
177.67 868.927 L
179.988 867.195 L
182.305 867.195 L
184.623 865.462 L
186.94 863.729 L
188.485 861.13 L
190.803 861.13 L
195.438 859.398 L
197.755 857.665 L
200.072 855.932 L
201.617 853.333 L
203.935 851.601 L
206.252 849.868 L
208.57 848.135 L
210.887 845.536 L
215.522 843.804 L
217.067 842.071 L
219.384 840.338 L
221.702 837.739 L
224.019 836.007 L
226.337 834.274 L
228.654 829.942 L
230.199 828.21 L
234.834 826.477 L
237.151 823.878 L
239.469 820.413 L
241.786 818.68 L
243.331 814.349 L
245.649 812.616 L
247.966 810.883 L
250.284 806.552 L
254.919 804.819 L
257.236 800.487 L
258.781 797.022 L
261.098 795.289 L
263.416 790.958 L
265.733 787.492 L
268.051 784.893 L
270.368 781.428 L
274.231 777.096 L
276.548 773.631 L
278.865 769.299 L
281.183 767.567 L
283.5 763.235 L
285.045 759.77 L
287.363 755.438 L
291.998 751.973 L
294.315 745.909 L
296.632 742.443 L
298.95 738.112 L
300.495 734.646 L
302.812 730.315 L
305.13 724.25 L
307.447 720.785 L
312.082 716.453 L
313.627 710.389 L
315.944 706.924 L
318.262 700.86 L
320.579 697.394 L
322.897 691.33 L
325.214 686.998 L
326.759 680.934 L
331.394 675.736 L
333.712 671.404 L
336.029 665.34 L
338.346 660.142 L
340.664 654.078 L
342.209 649.746 L
344.526 644.548 L
346.844 638.484 L
351.479 632.42 L
353.796 626.355 L
355.341 620.291 L
357.658 615.093 L
359.976 609.029 L
362.293 602.964 L
364.611 596.9 L
366.928 589.103 L
370.791 583.039 L
373.108 577.841 L
375.425 571.777 L
377.743 563.98 L
380.06 557.915 L
382.378 551.851 L
383.923 544.054 L
386.24 538.856 L
390.875 532.792 L
393.193 524.995 L
395.51 518.931 L
397.055 511.134 L
399.372 505.069 L
401.69 497.272 L
404.007 491.208 L
406.325 483.411 L
410.187 475.614 L
412.505 469.55 L
414.822 461.753 L
417.139 456.555 L
419.457 448.758 L
421.774 440.961 L
424.092 434.897 L
427.954 427.1 L
430.272 421.036 L
432.589 413.239 L
434.906 405.442 L
437.224 399.377 L
438.769 391.58 L
441.086 383.783 L
443.404 377.719 L
448.039 369.922 L
450.356 362.125 L
451.901 356.061 L
454.218 348.264 L
456.536 343.066 L
458.853 334.403 L
461.171 326.606 L
463.488 321.408 L
467.351 313.611 L
469.668 307.547 L
471.986 299.75 L
474.303 293.685 L
476.62 285.888 L
478.938 279.824 L
480.483 273.76 L
482.8 265.963 L
487.435 260.765 L
489.753 254.701 L
492.07 246.904 L
493.615 240.839 L
495.932 234.775 L
498.25 228.711 L
500.567 223.513 L
502.885 217.448 L
507.52 211.384 L
509.065 205.32 L
511.382 200.122 L
513.699 194.058 L
516.017 187.993 L
518.334 181.929 L
520.652 178.464 L
522.197 172.399 L
526.832 166.335 L
529.149 162.87 L
531.466 156.805 L
533.784 152.474 L
535.329 149.008 L
537.646 142.944 L
539.964 138.613 L
544.599 135.147 L
546.916 130.816 L
549.234 127.35 L
550.779 123.019 L
553.096 119.553 L
555.413 115.222 L
557.731 111.756 L
560.048 110.024 L
563.911 105.692 L
566.228 103.959 L
568.546 99.6277 L
570.863 97.8951 L
573.18 93.5635 L
575.498 91.8308 L
577.043 90.0981 L
579.36 88.3655 L
583.995 85.7665 L
586.313 84.0338 L
588.63 82.3012 L
590.948 82.3012 L
592.492 80.5685 L
594.81 80.5685 L
597.127 77.9695 L
599.445 77.9695 L
604.08 76.2369 L
605.625 76.2369 L
607.942 76.2369 L
610.26 76.2369 L
612.577 76.2369 L
614.894 76.2369 L
617.212 76.2369 L
618.757 77.9695 L
623.392 77.9695 L
625.709 80.5685 L
628.027 80.5685 L
630.344 82.3012 L
632.661 82.3012 L
634.206 84.0338 L
636.524 85.7665 L
638.841 88.3655 L
643.476 90.0981 L
645.794 91.8308 L
647.339 93.5635 L
649.656 97.8951 L
651.973 99.6277 L
654.291 103.959 L
656.608 105.692 L
661.243 110.024 L
662.788 111.756 L
665.106 115.222 L
667.423 119.553 L
669.74 123.019 L
672.058 127.35 L
674.375 130.816 L
675.92 135.147 L
680.555 138.613 L
682.873 142.944 L
685.19 149.008 L
687.508 152.474 L
689.052 156.805 L
691.37 162.87 L
693.687 166.335 L
696.005 172.399 L
700.64 178.464 L
702.957 181.929 L
704.502 187.993 L
706.82 194.058 L
709.137 200.122 L
711.454 205.32 L
713.772 211.384 L
716.089 217.448 L
719.952 223.513 L
722.269 228.711 L
724.587 234.775 L
726.904 240.839 L
729.221 246.904 L
730.766 254.701 L
733.084 260.765 L
735.401 265.963 L
740.036 273.76 L
742.354 279.824 L
744.671 285.888 L
746.216 293.685 L
748.534 299.75 L
750.851 307.547 L
753.168 313.611 L
755.486 321.408 L
759.348 326.606 L
761.666 334.403 L
763.983 343.066 L
766.301 348.264 L
768.618 356.061 L
770.935 362.125 L
772.48 369.922 L
774.798 377.719 L
779.433 383.783 L
781.75 391.58 L
784.068 399.377 L
786.385 405.442 L
787.93 413.239 L
790.247 421.036 L
792.565 427.1 L
797.2 434.897 L
799.517 440.961 L
801.062 448.758 L
803.38 456.555 L
805.697 461.753 L
808.014 469.55 L
810.332 475.614 L
812.649 483.411 L
816.512 491.208 L
818.829 497.272 L
821.147 505.069 L
823.464 511.134 L
825.782 518.931 L
828.099 524.995 L
829.644 532.792 L
831.961 538.856 L
836.596 544.054 L
838.914 551.851 L
841.231 557.915 L
842.776 563.98 L
845.094 571.777 L
847.411 577.841 L
849.728 583.039 L
852.046 589.103 L
855.908 596.9 L
858.226 602.964 L
860.543 609.029 L
862.861 615.093 L
865.178 620.291 L
867.495 626.355 L
869.813 632.42 L
871.358 638.484 L
875.993 644.548 L
878.31 649.746 L
880.628 654.078 L
882.945 660.142 L
884.49 665.34 L
886.807 671.404 L
889.125 675.736 L
891.442 680.934 L
896.077 686.998 L
897.622 691.33 L
899.94 697.394 L
902.257 700.86 L
904.575 706.924 L
906.892 710.389 L
909.209 716.453 L
913.072 720.785 L
915.389 724.25 L
917.707 730.315 L
920.024 734.646 L
922.342 738.112 L
924.659 742.443 L
926.204 745.909 L
928.521 751.973 L
933.156 755.438 L
935.474 759.77 L
937.791 763.235 L
939.336 767.567 L
941.654 769.299 L
943.971 773.631 L
946.288 777.096 L
948.606 781.428 L
953.241 784.893 L
954.786 787.492 L
957.103 790.958 L
959.421 795.289 L
961.738 797.022 L
964.056 800.487 L
966.373 804.819 L
967.918 806.552 L
972.553 810.883 L
974.87 812.616 L
977.188 814.349 L
979.505 818.68 L
981.05 820.413 L
983.368 823.878 L
985.685 826.477 L
988.002 828.21 L
992.637 829.942 L
994.955 834.274 L
996.5 836.007 L
998.817 837.739 L
1001.13 840.338 L
1003.45 842.071 L
1005.77 843.804 L
1008.09 845.536 L
1011.95 848.135 L
1014.27 849.868 L
1016.58 851.601 L
1018.9 853.333 L
1021.22 855.932 L
1022.76 857.665 L
1025.08 859.398 L
1027.4 861.13 L
1032.03 861.13 L
1034.35 863.729 L
1036.67 865.462 L
1038.21 867.195 L
1040.53 867.195 L
1042.85 868.927 L
1045.17 871.526 L
1049.8 871.526 L
1051.35 873.259 L
1053.66 874.992 L
1055.98 874.992 L
1058.3 876.724 L
1060.62 879.323 L
1062.93 879.323 L
1064.48 881.056 L
1069.11 881.056 L
1071.43 882.789 L
1073.75 882.789 L
1076.07 885.387 L
1078.38 885.387 L
1079.93 887.12 L
1082.24 887.12 L
1084.56 887.12 L
1089.2 888.853 L
1091.51 888.853 L
1093.06 890.585 L
1095.38 890.585 L
1097.69 890.585 L
1100.01 893.184 L
1102.33 893.184 L
1104.65 893.184 L
1108.51 894.917 L
1110.83 894.917 L
1113.14 894.917 L
1115.46 894.917 L
1117.78 896.65 L
1120.1 896.65 L
1121.64 896.65 L
1123.96 896.65 L
1128.59 898.382 L
1130.91 898.382 L
1133.23 898.382 L
1134.77 898.382 L
1137.09 898.382 L
1139.41 900.981 L
1141.73 900.981 L
1144.04 900.981 L
1147.91 900.981 L
1150.22 900.981 L
1152.54 900.981 L
1154.86 902.714 L
Q
S
[0.1202 0 0 0.1172 272.4 357] e
375.12 -10.215 0 40.725 tbx
0 tal
49 tld
1 1 1 0 k
/_MicrosoftSansSerif 45 tfn
(displacement x [m]) 0 -0.765003 tpt
T
[0 0.1172 -0.1202 0 208.8 415.2] e
205.02 -10.215 0 40.725 tbx
0 tal
49 tld
/_MicrosoftSansSerif 45 tfn
(Bl\(x\) [N/A]) 0 -0.765003 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
