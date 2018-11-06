%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: prefilter_ulin.md
%%CreationDate: Tue Mar 07 11:38:01 2006
%%BoundingBox: 55 275 529 552
%%DocumentFonts: ArialMT
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

WinAnsiEncoding /_ArialMT /ArialMT RE
SymbolEncoding /_SymbolMT /SymbolMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
55 275 moveto 55 552 lineto 529 552 lineto 529 275 lineto closepath clip
newpath
%%EndPageSetup
1 w
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 730.429 m
413.822 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 730.429 m
396.279 730.429 L
396.279 734.112 L
408.07 734.112 L
396.279 734.112 L
393.404 737.796 L
402.031 737.796 L
393.404 737.796 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
393.404 741.479 m
393.404 741.479 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
393.404 741.479 m
413.822 730.429 L
393.404 719.01 L
396.279 730.429 L
413.822 730.429 L
396.279 730.429 L
393.404 741.479 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
396.279 730.429 m
396.279 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
396.279 730.429 m
410.946 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
408.07 726.745 m
408.07 726.745 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
408.07 726.745 m
396.279 726.745 L
396.279 730.429 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
393.404 726.745 m
393.404 726.745 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
393.404 726.745 m
408.07 726.745 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
399.155 722.694 m
399.155 722.694 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
399.155 722.694 m
393.404 722.694 L
393.404 726.745 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
393.404 722.694 m
393.404 722.694 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
393.404 722.694 m
399.155 722.694 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 312.357 m
446.03 312.357 L
Q
B
648.196 315.672 446.03 188.224 [0.4459 0 0 -0.3633 11.67 608.2] Bx
s
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 248.633 m
446.03 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 248.633 m
428.488 248.633 L
428.488 252.317 L
443.154 252.317 L
428.488 252.317 L
428.488 256 L
434.527 256 L
431.364 259.683 L
425.612 259.683 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
425.612 259.683 m
425.612 259.683 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
425.612 259.683 m
446.03 248.633 L
425.612 240.898 L
428.488 248.633 L
446.03 248.633 L
428.488 248.633 L
425.612 259.683 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
428.488 248.633 m
428.488 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
428.488 248.633 m
443.154 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
440.279 248.633 m
440.279 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
440.279 248.633 m
428.488 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
428.488 244.581 m
428.488 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
428.488 244.581 m
437.403 244.581 L
440.279 248.633 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
431.364 244.581 m
431.364 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
431.364 244.581 m
425.612 244.581 L
428.488 244.581 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
425.612 240.898 m
425.612 240.898 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
425.612 240.898 m
428.488 240.898 L
431.364 244.581 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
754.311 248.633 m
754.311 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
754.311 248.633 m
821.892 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 504.633 m
821.892 504.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 504.633 m
821.892 523.419 L
821.892 500.581 L
819.016 500.581 L
819.016 515.683 L
815.853 512 L
815.853 500.581 L
815.853 504.633 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 504.633 m
821.892 504.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 504.633 m
812.977 496.898 L
821.892 523.419 L
819.016 523.419 L
815.853 527.102 L
810.101 527.102 L
801.186 538.521 L
801.186 542.204 L
798.31 542.204 L
798.31 568.357 L
801.186 572.409 L
801.186 576.092 L
804.35 576.092 L
804.35 579.776 L
807.225 583.459 L
812.977 583.459 L
812.977 587.142 L
830.519 587.142 L
830.519 583.459 L
836.558 583.459 L
839.434 579.776 L
839.434 576.092 L
842.31 576.092 L
842.31 572.409 L
845.185 568.357 L
845.185 542.204 L
842.31 542.204 L
842.31 538.521 L
833.682 527.102 L
827.643 527.102 L
824.767 523.419 L
821.892 523.419 L
821.892 504.633 L
821.892 523.419 L
830.519 496.898 L
821.892 504.633 L
821.892 523.419 L
824.767 515.683 L
824.767 500.581 L
824.767 512 L
827.643 508.317 L
827.643 500.581 L
827.643 504.633 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
827.643 542.204 m
827.643 542.204 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
827.643 542.204 m
830.519 549.571 L
830.519 542.204 L
812.977 542.204 L
821.892 557.306 L
812.977 572.409 L
830.519 572.409 L
830.519 564.673 L
827.643 572.409 L
812.977 572.409 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 557.306 m
821.892 557.306 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 557.306 m
812.977 542.204 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 587.142 m
821.892 587.142 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 587.142 m
821.892 609.98 L
830.519 613.663 L
821.892 587.142 L
821.892 609.98 L
821.892 591.194 L
819.016 598.561 L
819.016 609.98 L
815.853 613.663 L
815.853 602.245 L
815.853 613.663 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
812.977 613.663 m
812.977 613.663 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
812.977 613.663 m
821.892 609.98 L
821.892 587.142 L
812.977 613.663 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 609.98 m
821.892 609.98 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 609.98 m
821.892 591.194 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
824.767 594.878 m
824.767 594.878 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
824.767 594.878 m
824.767 609.98 L
821.892 609.98 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
824.767 609.98 m
824.767 609.98 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
824.767 609.98 m
824.767 594.878 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
827.643 606.296 m
827.643 606.296 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
827.643 606.296 m
827.643 613.663 L
824.767 609.98 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
827.643 613.663 m
827.643 613.663 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
827.643 613.663 m
827.643 606.296 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
851.224 598.561 m
851.224 598.561 L
Q
B
865.316 601.508 851.224 598.561 [0.4459 0 0 -0.3633 11.67 573.5] Bx
s
q
0.4459 0 0 -0.3633 11.67 573.5 cm
851.224 515.683 m
851.224 515.683 L
Q
B
865.316 518.63 851.224 515.683 [0.4459 0 0 -0.3633 11.67 573.5] Bx
s
q
0.4459 0 0 -0.3633 11.67 573.5 cm
856.976 523.419 m
856.976 523.419 L
Q
B
858.989 526.365 856.976 508.317 [0.4459 0 0 -0.3633 11.67 573.5] Bx
s
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 398.918 m
827.643 398.918 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 398.918 m
815.853 398.918 L
819.016 402.97 L
824.767 402.97 L
827.643 398.918 L
827.643 391.551 L
824.767 387.868 L
819.016 387.868 L
815.853 391.551 L
815.853 398.918 L
827.643 398.918 L
815.853 398.918 L
815.853 395.235 L
827.643 395.235 L
815.853 395.235 L
827.643 395.235 L
827.643 391.551 L
815.853 391.551 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 391.551 m
815.853 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 391.551 m
827.643 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 391.551 m
827.643 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 391.551 m
815.853 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 387.868 m
819.016 387.868 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 387.868 m
824.767 387.868 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
824.767 402.97 m
824.767 402.97 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
824.767 402.97 m
819.016 402.97 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 361.347 m
819.016 361.347 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 361.347 m
824.767 361.347 L
824.767 357.663 L
827.643 357.663 L
827.643 346.245 L
815.853 346.245 L
815.853 357.663 L
819.016 357.663 L
819.016 361.347 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 256 m
819.016 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 256 m
821.892 259.683 L
824.767 256 L
827.643 256 L
827.643 244.581 L
824.767 244.581 L
821.892 240.898 L
819.016 244.581 L
815.853 244.581 L
815.853 256 L
824.767 256 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 256 m
827.643 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 256 m
815.853 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 252.317 m
815.853 252.317 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 252.317 m
827.643 252.317 L
815.853 252.317 L
827.643 252.317 L
827.643 248.633 L
815.853 248.633 L
827.643 248.633 L
815.853 248.633 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 244.581 m
815.853 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 244.581 m
827.643 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 244.581 m
827.643 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
827.643 244.581 m
815.853 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 244.581 m
819.016 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
819.016 244.581 m
824.767 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
821.892 248.633 m
821.892 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
821.892 248.633 m
821.892 346.245 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
845.185 353.98 m
845.185 353.98 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
845.185 353.98 m
821.892 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1003.93 259.683 m
1003.93 259.683 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1003.93 259.683 m
1024.35 248.633 L
1003.93 240.898 L
1006.8 248.633 L
1024.35 248.633 L
1006.8 248.633 L
1006.8 252.317 L
1021.47 252.317 L
1006.8 252.317 L
1006.8 256 L
1012.55 256 L
1009.68 259.683 L
1003.93 259.683 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1003.93 259.683 m
1003.93 259.683 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1003.93 259.683 m
1006.8 248.633 L
1024.35 248.633 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1021.47 248.633 m
1021.47 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1021.47 248.633 m
1006.8 248.633 L
1018.59 248.633 L
1015.43 244.581 L
1003.93 244.581 L
1012.55 244.581 L
1006.8 240.898 L
1003.93 240.898 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1003.93 719.01 m
1003.93 719.01 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1003.93 719.01 m
1006.8 730.429 L
1024.35 730.429 L
1006.8 730.429 L
1006.8 734.112 L
1021.47 734.112 L
1006.8 734.112 L
1006.8 737.796 L
1012.55 737.796 L
1003.93 737.796 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1003.93 741.479 m
1003.93 741.479 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1003.93 741.479 m
1024.35 730.429 L
1003.93 719.01 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1003.93 722.694 m
1003.93 722.694 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1003.93 722.694 m
1012.55 722.694 L
1003.93 722.694 L
1006.8 726.745 L
1018.59 726.745 L
1006.8 726.745 L
1006.8 730.429 L
1021.47 730.429 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1024.35 730.429 m
1024.35 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1024.35 730.429 m
1006.8 730.429 L
1003.93 741.479 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
863.015 598.561 m
863.015 598.561 L
Q
B
865.316 601.508 848.349 598.561 [0.4459 0 0 -0.3633 11.67 573.5] Bx
s
q
0.4459 0 0 -0.3633 11.67 608.2 cm
859.852 395.235 m
859.852 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
859.852 395.235 m
880.557 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
889.472 395.235 m
889.472 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
889.472 395.235 m
909.89 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
921.681 395.235 m
921.681 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
921.681 395.235 m
942.098 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
951.013 395.235 m
951.013 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
951.013 395.235 m
971.431 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
983.222 395.235 m
983.222 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
983.222 395.235 m
1003.93 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1012.55 395.235 m
1012.55 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1012.55 395.235 m
1033.26 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1044.76 395.235 m
1044.76 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
1044.76 395.235 m
1059.72 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1124.13 557.306 m
1124.13 557.306 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1124.13 557.306 m
1135.92 557.306 L
1133.05 560.99 L
1121.26 560.99 L
1129.89 560.99 L
1124.13 564.673 L
1121.26 564.673 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1118.38 568.357 m
1118.38 568.357 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1118.38 568.357 m
1138.8 557.306 L
1124.13 557.306 L
1118.38 568.357 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1124.13 557.306 m
1124.13 557.306 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1124.13 557.306 m
1138.8 557.306 L
1017.83 557.864 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 591.194 m
821.892 591.194 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 591.194 m
821.892 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 395.235 m
815.853 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
815.853 395.235 m
795.435 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
786.52 395.235 m
786.52 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
786.52 395.235 m
766.102 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
754.311 395.235 m
754.311 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
754.311 395.235 m
733.893 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
724.979 395.235 m
724.979 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
724.979 395.235 m
704.561 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
692.77 395.235 m
692.77 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
692.77 395.235 m
672.065 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
663.437 395.235 m
663.437 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
663.437 395.235 m
642.732 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
630.941 395.235 m
630.941 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
630.941 395.235 m
610.523 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
601.609 395.235 m
601.609 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
601.609 395.235 m
581.191 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
569.4 395.235 m
569.4 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
569.4 395.235 m
548.982 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
537.192 395.235 m
537.192 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
537.192 395.235 m
516.486 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
507.859 395.235 m
507.859 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
507.859 395.235 m
487.153 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
475.363 395.235 m
475.363 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
475.363 395.235 m
454.945 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 395.235 m
446.03 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 395.235 m
425.612 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
413.822 395.235 m
413.822 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
413.822 395.235 m
393.404 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
384.489 395.235 m
384.489 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
384.489 395.235 m
364.071 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
352.28 395.235 m
352.28 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
352.28 395.235 m
331.575 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
322.948 395.235 m
322.948 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
322.948 395.235 m
302.242 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
290.452 395.235 m
290.452 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
290.452 395.235 m
270.034 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
261.119 395.235 m
261.119 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
261.119 395.235 m
237.825 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
240.701 395.235 m
240.701 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
240.701 395.235 m
240.701 398.918 L
243.577 398.918 L
243.577 402.97 L
252.492 402.97 L
252.492 395.235 L
255.367 395.235 L
252.492 395.235 L
252.492 387.868 L
243.577 387.868 L
243.577 391.551 L
240.701 391.551 L
240.701 395.235 L
255.367 395.235 L
240.701 395.235 L
240.701 391.551 L
252.492 391.551 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 391.551 m
252.492 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 391.551 m
243.577 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 391.551 m
243.577 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 391.551 m
252.492 391.551 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 387.868 m
252.492 387.868 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 387.868 m
243.577 387.868 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
246.452 395.235 m
246.452 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
246.452 395.235 m
272.909 353.98 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
255.367 353.98 m
255.367 353.98 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
255.367 353.98 m
252.492 350.296 L
252.492 346.245 L
243.577 346.245 L
240.701 350.296 L
240.701 357.663 L
243.577 357.663 L
243.577 361.347 L
249.616 361.347 L
252.492 357.663 L
252.492 353.98 L
255.367 353.98 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
246.452 346.245 m
246.452 346.245 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
246.452 346.245 m
246.452 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
255.367 248.633 m
255.367 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
255.367 248.633 m
252.492 248.633 L
252.492 244.581 L
249.616 244.581 L
249.616 240.898 L
246.452 240.898 L
240.701 248.633 L
240.701 252.317 L
246.452 259.683 L
249.616 259.683 L
249.616 256 L
252.492 256 L
252.492 252.317 L
255.367 248.633 L
240.701 248.633 L
252.492 248.633 L
240.701 248.633 L
243.577 244.581 L
252.492 244.581 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 244.581 m
252.492 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 244.581 m
243.577 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 244.581 m
243.577 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 244.581 m
252.492 244.581 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 252.317 m
252.492 252.317 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 252.317 m
240.701 252.317 L
252.492 252.317 L
243.577 252.317 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 256 m
243.577 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 256 m
252.492 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 256 m
252.492 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 256 m
243.577 256 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
240.701 395.235 m
240.701 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
240.701 395.235 m
252.492 395.235 L
252.492 398.918 L
240.701 398.918 L
252.492 398.918 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 398.918 m
252.492 398.918 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
252.492 398.918 m
243.577 398.918 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 402.97 m
243.577 402.97 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
243.577 402.97 m
252.492 402.97 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
228.91 395.235 m
228.91 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
228.91 395.235 m
208.492 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
196.702 395.235 m
196.702 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
196.702 395.235 m
175.996 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
167.369 395.235 m
167.369 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
167.369 395.235 m
146.664 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
134.873 395.235 m
134.873 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
134.873 395.235 m
120.207 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 666.337 m
413.822 666.337 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 666.337 m
413.822 794.521 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
410.946 692.858 m
410.946 692.858 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
410.946 692.858 m
410.946 692.858 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
692.77 666.337 m
692.77 666.337 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
692.77 666.337 m
692.77 794.521 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
815.853 734.112 m
815.853 734.112 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
815.853 734.112 m
827.643 734.112 L
827.643 726.745 L
824.767 722.694 L
819.016 722.694 L
815.853 726.745 L
815.853 734.112 L
819.016 737.796 L
824.767 737.796 L
827.643 734.112 L
815.853 734.112 L
827.643 734.112 L
827.643 730.429 L
815.853 730.429 L
827.643 730.429 L
815.853 730.429 L
815.853 726.745 L
827.643 726.745 L
815.853 726.745 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
815.853 726.745 m
815.853 726.745 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
815.853 726.745 m
827.643 726.745 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
824.767 722.694 m
824.767 722.694 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
824.767 722.694 m
819.016 722.694 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
819.016 737.796 m
819.016 737.796 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
819.016 737.796 m
824.767 737.796 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1124.13 557.306 m
1124.13 557.306 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1124.13 557.306 m
1138.8 557.306 L
1118.38 545.888 L
1124.13 557.306 L
1138.8 557.306 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1133.05 553.255 m
1133.05 553.255 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1133.05 553.255 m
1121.26 553.255 L
1124.13 557.306 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1121.26 549.571 m
1121.26 549.571 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1121.26 549.571 m
1129.89 549.571 L
1133.05 553.255 L
Q
S
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1127.01 549.571 m
1127.01 549.571 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1127.01 549.571 m
1121.26 549.571 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1121.26 545.888 m
1121.26 545.888 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
1121.26 545.888 m
1124.13 545.888 L
1127.01 549.571 L
Q
S
q
0.4459 0 0 -0.3633 11.67 608.2 cm
848.349 395.235 m
848.349 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
848.349 395.235 m
827.643 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
821.892 395.235 m
821.892 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
821.892 395.235 m
786.52 395.235 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
645.608 248.633 m
645.608 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
645.608 248.633 m
1024.35 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
540.067 188.224 m
540.067 188.224 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
542.943 184.541 m
542.943 184.541 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
540.067 180.858 m
540.067 180.858 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 248.633 m
446.03 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
446.03 248.633 m
120.207 248.633 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
246.452 398.918 m
246.452 398.918 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
247.15 300.408 m
246.452 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 523.419 m
821.892 523.419 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
821.892 523.419 m
821.972 300.408 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
692.77 730.429 m
692.77 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
692.77 730.429 m
1021.47 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
551.858 801.888 m
551.858 801.888 L
Q
B
q
0.4459 0 0 -0.3633 11.67 608.2 cm
692.77 794.521 m
692.77 794.521 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
692.77 794.521 m
413.822 794.521 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 730.429 m
413.822 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 730.429 m
246.452 730.429 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 666.337 m
413.822 666.337 L
Q
B
q
0.4459 0 0 -0.3633 11.67 573.5 cm
413.822 666.337 m
692.77 666.337 L
Q
B
q
0.4459 0 0 -0.3633 -244.8 623.7 cm
821.892 504.633 m
821.892 504.633 L
Q
B
q
0.4459 0 0 -0.3633 -244.8 623.7 cm
821.892 504.633 m
821.892 504.633 L
Q
B
146.91 398.674 103.423 432.759 [1 0 0 1 318.4 -43.55] Bx
s
[1 0 0 1 -0.5168 20.15] e
224.709 509.349 224.709 509.349 tbx
0 tal
22 tld
1 1 1 0 k
/_ArialMT 20 tfn
(System) 224.709 491.249 tpt
T
[1 0 0 1 66.15 -41.86] e
360.101 424.083 360.101 424.083 tbx
0 tal
22 tld
/_ArialMT 20 tfn
(L\(q\)) 360.101 405.983 tpt
T
[1 0 0 1 24.8 10.34] e
207.14 308.329 207.14 308.329 tbx
0 tal
22 tld
/_ArialMT 20 tfn
(Model) 207.14 290.229 tpt
T
[1 0 0 1 -41.34 1.034] e
116.707 536.22 116.707 536.22 tbx
0 tal
15 tld
/_ArialMT 14 tfn
(u\(t\)) 116.707 523.55 tpt
T
[1 0 0 1 0 5.684] e
130.659 451.471 130.659 451.471 tbx
0 tal
15 tld
/_ArialMT 14 tfn
(u\(k\)) 130.659 438.801 tpt
T
[1 0 0 1 2.584 6.201] e
384.905 454.055 384.905 454.055 tbx
0 tal
15 tld
/_ArialMT 14 tfn
(y\(k\)) 384.905 441.385 tpt
T
[1 0 0 1 -12.4 5.168] e
340.981 531.053 340.981 531.053 tbx
0 tal
15 tld
/_ArialMT 14 tfn
(y\(t\)) 340.981 518.383 tpt
T
[1 0 0 1 9.818 8.785] e
389.039 321.765 389.039 321.765 tbx
0 tal
15 tld
/_ArialMT 14 tfn
(y \(k\)) 389.039 309.095 tpt
T
[1 0 0 1 25.32 10.34] e
450.534 382.742 450.534 382.742 tbx
0 tal
15 tld
/_SymbolMT 14 tfn
(e) 450.534 368.672 tpt
T
[1 0 0 1 47.03 11.89] e
437.615 379.642 437.615 379.642 tbx
0 tal
15 tld
/_ArialMT 14 tfn
(\(k\)) 437.615 366.972 tpt
T
[1 0 0 1 234.1 7.094] e
247.964 377.575 247.964 377.575 tbx
0 tal
10 tld
/_ArialMT 9 tfn
(f) 247.964 369.43 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1124.13 557.306 m
1124.13 557.306 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1124.13 557.306 m
1135.92 557.306 L
1133.05 560.99 L
1121.26 560.99 L
1129.89 560.99 L
1124.13 564.673 L
1121.26 564.673 L
Q
S
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1118.38 568.357 m
1118.38 568.357 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1118.38 568.357 m
1138.8 557.306 L
1124.13 557.306 L
1118.38 568.357 L
Q
S
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1124.13 557.306 m
1124.13 557.306 L
Q
B
q
0.4459 0 0 -0.3633 -85.59 573.8 cm
1124.13 557.306 m
1138.8 557.306 L
1063.27 557.117 L
Q
S
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1124.13 557.306 m
1124.13 557.306 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1124.13 557.306 m
1138.8 557.306 L
1118.38 545.888 L
1124.13 557.306 L
1138.8 557.306 L
Q
S
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1133.05 553.255 m
1133.05 553.255 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1133.05 553.255 m
1121.26 553.255 L
1124.13 557.306 L
Q
S
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1121.26 549.571 m
1121.26 549.571 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1121.26 549.571 m
1129.89 549.571 L
1133.05 553.255 L
Q
S
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1127.01 549.571 m
1127.01 549.571 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1127.01 549.571 m
1121.26 549.571 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1121.26 545.888 m
1121.26 545.888 L
Q
B
q
0.4459 0 0 -0.3633 -86.1 573.8 cm
1121.26 545.888 m
1124.13 545.888 L
1127.01 549.571 L
Q
S
[1 0 0 1 133.3 -65.63] e
270.184 386.876 270.184 386.876 tbx
0 tal
10 tld
1 1 1 0 k
/_ArialMT 9 tfn
(m) 270.184 378.731 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
