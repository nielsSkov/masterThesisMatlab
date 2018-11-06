%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: simulating_nonlinear_sys.md
%%CreationDate: Mon Mar 12 11:54:28 2007
%%BoundingBox: 78 366 515 476
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
78 366 moveto 78 476 lineto 515 476 lineto 515 366 lineto closepath clip
newpath
%%EndPageSetup
0.796078 0.772549 0.764706 0 K
0.368028 w
q
0.3269 0 0 -0.09004 88.37 467 cm
592.156 380.421 m
828.062 389.965 L
Q
S
0.807843 0.788235 0.784314 0 K
q
0.3269 0 0 -0.09004 88.37 467 cm
261.668 32.7244 m
261.668 729.481 L
592.156 729.481 L
592.156 32.7244 L
261.668 32.7244 L
Q
s
q
0.3269 0 0 -0.09004 88.37 467 cm
828.062 196.346 m
828.062 583.585 L
1067.65 583.585 L
1067.65 196.346 L
828.062 196.346 L
Q
s
0.796078 0.772549 0.764706 0 K
q
0.3269 0 0 -0.09004 88.37 467 cm
305.095 384.511 m
567.499 385.875 L
Q
S
0.843137 0.847059 0.847059 0 k
1 1 1 0 K
0.5 w
q
0.3269 0 0 -0.09004 88.37 467 cm
567.499 384.511 m
545.785 350.423 L
545.785 351.787 L
546.153 353.15 L
546.153 354.514 L
546.521 354.514 L
546.521 355.878 L
546.521 357.241 L
546.521 358.605 L
546.889 359.968 L
546.889 359.968 L
546.889 361.332 L
547.257 362.695 L
547.257 364.059 L
547.257 364.059 L
547.257 365.422 L
547.625 366.786 L
547.625 368.149 L
547.625 369.513 L
547.625 369.513 L
547.625 370.876 L
547.993 372.24 L
547.993 373.603 L
547.993 374.967 L
547.993 374.967 L
547.993 376.33 L
547.993 377.694 L
547.993 377.694 L
547.993 377.694 L
547.993 379.057 L
547.993 379.057 L
547.993 379.057 L
547.993 380.421 L
547.993 380.421 L
547.993 381.784 L
547.993 381.784 L
547.993 381.784 L
547.993 383.148 L
547.993 384.511 L
547.993 384.511 L
547.993 385.875 L
547.993 387.238 L
547.993 387.238 L
547.993 388.602 L
547.993 388.602 L
547.993 389.965 L
547.993 389.965 L
547.993 389.965 L
547.993 391.329 L
547.993 391.329 L
547.993 392.692 L
547.993 392.692 L
547.993 392.692 L
547.993 394.056 L
547.993 394.056 L
547.993 395.419 L
547.993 396.783 L
547.993 398.146 L
547.625 399.51 L
547.625 399.51 L
547.625 400.874 L
547.625 402.237 L
547.625 403.601 L
547.257 404.964 L
547.257 404.964 L
547.257 406.328 L
547.257 407.691 L
546.889 409.055 L
546.889 409.055 L
546.889 410.418 L
546.521 411.782 L
546.521 413.145 L
546.521 414.509 L
546.521 414.509 L
546.153 415.872 L
546.153 417.236 L
545.785 418.599 L
545.785 418.599 L
567.499 384.511 L
567.499 384.511 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.796078 0.772549 0.764706 0 K
0.368028 w
q
0.3269 0 0 -0.09004 88.37 467 cm
438.321 718.573 m
438.689 81.8109 L
Q
S
0.843137 0.847059 0.847059 0 k
1 1 1 0 K
0.5 w
q
0.3269 0 0 -0.09004 88.37 467 cm
438.689 81.8109 m
429.12 162.258 L
429.488 160.895 L
429.856 160.895 L
430.224 160.895 L
430.592 159.531 L
430.592 159.531 L
430.96 159.531 L
431.328 158.168 L
431.696 158.168 L
431.696 158.168 L
432.064 156.804 L
432.432 156.804 L
432.8 156.804 L
433.168 156.804 L
433.168 155.441 L
433.537 155.441 L
433.905 155.441 L
434.273 155.441 L
434.641 155.441 L
434.641 154.077 L
435.009 154.077 L
435.377 154.077 L
435.745 154.077 L
435.745 154.077 L
436.113 154.077 L
436.481 154.077 L
436.481 154.077 L
436.481 154.077 L
436.849 154.077 L
436.849 154.077 L
436.849 152.714 L
437.217 152.714 L
437.217 152.714 L
437.585 152.714 L
437.585 152.714 L
437.585 152.714 L
437.953 152.714 L
438.321 152.714 L
438.689 152.714 L
438.689 152.714 L
439.057 152.714 L
439.057 152.714 L
439.425 152.714 L
439.425 152.714 L
439.425 152.714 L
439.793 152.714 L
439.793 152.714 L
440.161 154.077 L
440.161 154.077 L
440.529 154.077 L
440.529 154.077 L
440.529 154.077 L
440.897 154.077 L
440.897 154.077 L
441.265 154.077 L
441.633 154.077 L
442.001 154.077 L
442.369 154.077 L
442.369 155.441 L
442.737 155.441 L
443.105 155.441 L
443.473 155.441 L
443.473 155.441 L
443.841 156.804 L
444.209 156.804 L
444.577 156.804 L
444.945 156.804 L
444.945 158.168 L
445.313 158.168 L
445.681 158.168 L
446.049 159.531 L
446.417 159.531 L
446.417 159.531 L
446.786 160.895 L
447.154 160.895 L
447.522 160.895 L
447.522 162.258 L
438.689 81.8109 L
438.689 81.8109 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.796078 0.772549 0.764706 0 K
0.368028 w
q
0.3269 0 0 -0.09004 88.37 467 cm
11.7769 385.875 m
98.6314 387.238 L
Q
S
0.843137 0.847059 0.847059 0 k
1 1 1 0 K
0.5 w
q
0.3269 0 0 -0.09004 88.37 467 cm
98.6314 385.875 m
76.9178 351.787 L
76.9178 353.15 L
77.2858 354.514 L
77.2858 355.878 L
77.2858 357.241 L
77.6538 357.241 L
77.6538 358.605 L
78.0219 359.968 L
78.0219 359.968 L
78.0219 362.695 L
78.3899 362.695 L
78.3899 364.059 L
78.3899 365.422 L
78.3899 365.422 L
78.3899 366.786 L
78.7579 368.149 L
78.7579 369.513 L
78.7579 370.876 L
78.7579 372.24 L
78.7579 372.24 L
78.7579 373.603 L
79.1259 374.967 L
79.1259 374.967 L
79.1259 376.33 L
79.1259 377.694 L
79.1259 377.694 L
79.1259 379.057 L
79.1259 379.057 L
79.1259 380.421 L
79.1259 380.421 L
79.1259 380.421 L
79.1259 381.784 L
79.1259 381.784 L
79.1259 383.148 L
79.1259 383.148 L
79.1259 383.148 L
79.1259 384.511 L
79.1259 385.875 L
79.1259 385.875 L
79.1259 387.238 L
79.1259 388.602 L
79.1259 388.602 L
79.1259 388.602 L
79.1259 389.965 L
79.1259 389.965 L
79.1259 391.329 L
79.1259 391.329 L
79.1259 392.692 L
79.1259 392.692 L
79.1259 392.692 L
79.1259 394.056 L
79.1259 394.056 L
79.1259 394.056 L
79.1259 395.419 L
79.1259 396.783 L
79.1259 398.146 L
78.7579 399.51 L
78.7579 399.51 L
78.7579 400.874 L
78.7579 402.237 L
78.7579 403.601 L
78.7579 403.601 L
78.3899 404.964 L
78.3899 406.328 L
78.3899 407.691 L
78.3899 409.055 L
78.3899 409.055 L
78.0219 410.418 L
78.0219 411.782 L
78.0219 413.145 L
77.6538 414.509 L
77.6538 414.509 L
77.2858 415.872 L
77.2858 417.236 L
77.2858 417.236 L
76.9178 418.599 L
76.9178 419.963 L
98.6314 385.875 L
98.6314 385.875 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.796078 0.772549 0.764706 0 K
0.368028 w
q
0.3269 0 0 -0.09004 88.37 467 cm
118.873 1009 m
1204.92 1010.36 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
118.873 1009 m
119.241 462.232 L
Q
S
0.843137 0.847059 0.847059 0 k
1 1 1 0 K
0.5 w
q
0.3269 0 0 -0.09004 88.37 467 cm
118.873 462.232 m
109.672 542.679 L
110.04 541.316 L
110.04 541.316 L
110.408 541.316 L
110.776 539.952 L
110.776 539.952 L
111.144 539.952 L
111.512 538.589 L
111.88 538.589 L
112.248 538.589 L
112.248 537.225 L
112.616 537.225 L
112.984 537.225 L
113.353 537.225 L
113.721 535.862 L
113.721 535.862 L
114.089 535.862 L
114.457 535.862 L
114.825 535.862 L
114.825 534.498 L
115.193 534.498 L
115.561 534.498 L
115.929 534.498 L
116.297 534.498 L
116.297 534.498 L
116.665 534.498 L
116.665 534.498 L
117.033 534.498 L
117.033 534.498 L
117.033 534.498 L
117.401 534.498 L
117.401 534.498 L
117.769 534.498 L
117.769 534.498 L
117.769 534.498 L
118.137 534.498 L
118.137 534.498 L
118.505 533.134 L
118.873 533.134 L
118.873 533.134 L
119.241 534.498 L
119.241 534.498 L
119.609 534.498 L
119.609 534.498 L
119.977 534.498 L
119.977 534.498 L
119.977 534.498 L
120.345 534.498 L
120.345 534.498 L
120.713 534.498 L
120.713 534.498 L
120.713 534.498 L
121.081 534.498 L
121.449 534.498 L
121.817 534.498 L
121.817 534.498 L
122.185 534.498 L
122.553 534.498 L
122.921 535.862 L
122.921 535.862 L
123.289 535.862 L
123.657 535.862 L
124.025 535.862 L
124.025 537.225 L
124.393 537.225 L
124.761 537.225 L
125.129 537.225 L
125.497 538.589 L
125.497 538.589 L
125.865 538.589 L
126.233 539.952 L
126.601 539.952 L
126.601 539.952 L
126.97 541.316 L
127.338 541.316 L
127.706 541.316 L
128.074 542.679 L
118.873 462.232 L
118.873 462.232 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.796078 0.772549 0.764706 0 K
0.368028 w
q
0.3269 0 0 -0.09004 88.37 467 cm
1066.18 385.875 m
1273.38 388.564 1276.32 388.602 L2
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
1066.18 385.875 1276.32 388.602 4 2 Ah
Q
q
0.3269 0 0 -0.09004 88.37 467 cm
139.114 385.875 m
258.727 380.552 261.668 380.421 L2
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
139.114 385.875 261.668 380.421 4 2 Ah
Q
q
0.3269 0 0 -0.09004 88.37 467 cm
118.873 462.232 m
119.609 462.232 L
120.713 460.868 L
121.817 460.868 L
122.921 459.505 L
123.657 459.505 L
124.761 458.141 L
125.865 456.778 L
126.601 455.414 L
127.706 454.051 L
128.442 452.687 L
129.178 451.324 L
130.282 448.597 L
131.018 447.233 L
131.754 444.506 L
132.49 441.779 L
133.226 439.052 L
133.962 437.688 L
134.33 433.598 L
135.066 430.871 L
135.434 428.144 L
136.17 425.417 L
136.538 422.69 L
136.906 418.599 L
137.642 415.872 L
138.01 411.782 L
138.01 409.055 L
138.378 404.964 L
138.746 400.874 L
138.746 398.146 L
139.114 394.056 L
139.114 389.965 L
139.114 385.875 L
139.114 381.784 L
139.114 379.057 L
138.746 374.967 L
138.746 370.876 L
138.378 366.786 L
138.01 364.059 L
138.01 359.968 L
137.642 357.241 L
136.906 353.15 L
136.538 350.423 L
136.17 347.696 L
135.434 344.969 L
135.066 340.879 L
134.33 338.152 L
133.962 335.425 L
133.226 332.698 L
132.49 329.971 L
131.754 328.607 L
131.018 325.88 L
130.282 323.153 L
129.178 321.79 L
128.442 320.426 L
127.706 319.063 L
126.601 316.336 L
125.865 314.972 L
124.761 314.972 L
123.657 313.609 L
122.921 312.245 L
121.817 312.245 L
120.713 312.245 L
119.609 310.882 L
118.873 310.882 L
117.769 310.882 L
116.665 312.245 L
115.561 312.245 L
114.825 312.245 L
113.721 313.609 L
112.616 314.972 L
111.88 314.972 L
110.776 316.336 L
110.04 319.063 L
108.936 320.426 L
108.2 321.79 L
107.464 323.153 L
106.728 325.88 L
105.624 328.607 L
105.256 329.971 L
104.52 332.698 L
103.784 335.425 L
103.048 338.152 L
102.312 340.879 L
101.944 344.969 L
101.208 347.696 L
100.84 350.423 L
100.472 353.15 L
100.104 357.241 L
99.7355 359.968 L
99.3675 364.059 L
98.9994 366.786 L
98.9994 370.876 L
98.6314 374.967 L
98.6314 379.057 L
98.6314 381.784 L
98.2634 385.875 L
98.6314 389.965 L
98.6314 394.056 L
98.6314 398.146 L
98.9994 400.874 L
98.9994 404.964 L
99.3675 409.055 L
99.7355 411.782 L
100.104 415.872 L
100.472 418.599 L
100.84 422.69 L
101.208 425.417 L
101.944 428.144 L
102.312 430.871 L
103.048 433.598 L
103.784 437.688 L
104.52 439.052 L
105.256 441.779 L
105.624 444.506 L
106.728 447.233 L
107.464 448.597 L
108.2 451.324 L
108.936 452.687 L
110.04 454.051 L
110.776 455.414 L
111.88 456.778 L
112.616 458.141 L
113.721 459.505 L
114.825 459.505 L
115.561 460.868 L
116.665 460.868 L
117.769 462.232 L
118.873 462.232 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
371.708 583.585 m
320.92 584.948 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
492.789 211.345 m
543.945 212.708 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
492.789 211.345 m
371.708 583.585 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
428.752 211.345 m
446.049 212.708 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
368.764 351.787 m
369.132 417.236 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
496.101 361.332 m
496.469 424.053 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
433.537 576.767 m
448.626 578.13 L
Q
S
q
0.3269 0 0 -0.09004 88.37 467 cm
1204.92 1009 m
1205.29 402.237 L
Q
S
[0.1203 0 0 0.1228 88.37 441.7] e
169.841 -32.053 0 118.503 tbx
0 tal
146 tld
1 1 1 0 k
/_MicrosoftSansSerif 133 tfn
(r\(t\)) 0 -4.123 tpt
T
[0.1203 0 0 0.1228 107.1 413.8] e
77.672 -32.053 0 118.503 tbx
0 tal
146 tld
/_MicrosoftSansSerif 133 tfn
(+) 0 -4.123 tpt
T
[0.1203 0 0 0.1228 115.2 412.5] e
73.416 -32.053 0 118.503 tbx
0 tal
146 tld
/_MicrosoftSansSerif 133 tfn
(_) 0 -4.123 tpt
T
[0.1203 0 0 0.1228 147.3 441.1] e
199.5 -32.053 0 118.503 tbx
0 tal
146 tld
/_MicrosoftSansSerif 133 tfn
(e\(t\)) 0 -4.123 tpt
T
[0.1203 0 0 0.1228 316.3 440.5] e
199.5 -32.053 0 118.503 tbx
0 tal
146 tld
/_MicrosoftSansSerif 133 tfn
(u\(t\)) 0 -4.123 tpt
T
[0.1203 0 0 0.1228 477.7 439.6] e
192.052 -32.053 0 118.503 tbx
0 tal
146 tld
/_MicrosoftSansSerif 133 tfn
(y\(t\)) 0 -4.123 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
0.3269 0 0 -0.09004 88.37 467 cm
1041.89 385.875 m
845.359 389.965 L
Q
S
[0.1203 0 0 0.1228 394 435.2] e
72.2 -24.1 0 89.1 tbx
0 tal
110 tld
1 1 1 0 k
/_MicrosoftSansSerif 100 tfn
(K) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 402.6 433.2] e
27.8 -12.05 0 44.55 tbx
0 tal
55 tld
/_MicrosoftSansSerif 50 tfn
(1) 0 -1.55 tpt
T
[0.1203 0 0 0.1228 381 419.5] e
299.28 -25.8094 0 87.3906 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(1 + pb) 0 -4.80938 tpt
T
[0.1203 0 0 0.1228 272.6 433.8] e
55.6 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(e) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 246.6 420.2] e
55.6 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(e) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 252.3 418.1] e
27.8 -12.05 0 44.55 tbx
0 tal
55 tld
/_MicrosoftSansSerif 50 tfn
(o) 0 -1.55 tpt
T
[0.1203 0 0 0.1228 206.2 437.1] e
55.6 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(e) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 212.7 435.1] e
27.8 -12.05 0 44.55 tbx
0 tal
55 tld
/_MicrosoftSansSerif 50 tfn
(o) 0 -1.55 tpt
T
[0.1203 0 0 0.1228 235.2 455.1] e
55.6 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(u) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 219.8 442.8] e
55.6 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(u) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 226.9 440.8] e
27.8 -12.05 0 44.55 tbx
0 tal
55 tld
/_MicrosoftSansSerif 50 tfn
(o) 0 -1.55 tpt
T
[0.1203 0 0 0.1228 239.4 409.8] e
55.6 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(u) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 245.9 407.7] e
27.8 -12.05 0 44.55 tbx
0 tal
55 tld
/_MicrosoftSansSerif 50 tfn
(o) 0 -1.55 tpt
T
[0.1203 0 0 0.1228 235.4 409.6] e
33.3 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(-) 0 -3.1 tpt
T
[0.1203 0 0 0.1228 201.8 436.5] e
33.3 -24.1 0 89.1 tbx
0 tal
110 tld
/_MicrosoftSansSerif 100 tfn
(-) 0 -3.1 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
