%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: sens_funct.md
%%CreationDate: Mon Feb 27 11:00:24 2006
%%BoundingBox: 123 349 534 594
%%DocumentFonts: TimesNewRomanPS-ItalicMT
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
%%IncludeFont: TimesNewRomanPS-ItalicMT
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

WinAnsiEncoding /_TimesNewRomanPS-ItalicMT /TimesNewRomanPS-ItalicMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
123 349 moveto 123 594 lineto 534 594 lineto 534 349 lineto closepath clip
newpath
%%EndPageSetup
[0.1268 0 0 0.1283 346.8 567.6] e
88.595 -31.32 0 129.195 tbx
0 tal
159.5 tld
1 1 1 0 k
/_TimesNewRomanPS-ItalicMT 145 tfn
(P) 0 0 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.858824 0.847059 0.839216 0 K
1 w
q
0.52 0 0 -0.2427 -3.969 595.1 cm
325.911 109.431 m
325.911 971.663 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
264.239 871.748 m
975.784 871.748 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
887.785 800.38 m
889.979 790.864 L
889.979 785.578 L
887.785 781.348 L
887.785 800.38 L
883.154 818.883 L
887.785 795.622 L
887.785 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
887.785 781.348 m
883.154 781.348 L
883.154 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
878.766 790.864 m
878.766 781.348 L
869.99 781.348 L
867.797 785.578 L
867.797 805.138 L
876.572 805.138 L
878.766 800.38 L
878.766 790.864 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
878.766 785.578 m
876.572 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
876.572 781.348 m
874.378 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
872.184 781.348 m
867.797 781.348 L
865.603 785.578 L
865.603 805.138 L
869.99 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
872.184 805.138 m
874.378 805.138 L
876.572 800.38 L
876.572 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
878.766 785.578 m
878.766 795.622 L
876.572 800.38 L
876.572 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
867.797 805.138 m
865.603 800.38 L
865.603 795.622 L
867.797 785.578 L
867.797 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
856.827 785.578 m
856.827 805.138 L
861.215 805.138 L
861.215 800.38 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
856.827 800.38 m
856.827 795.622 L
861.215 766.546 L
856.827 766.546 L
861.215 766.546 L
856.827 785.578 L
856.827 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
856.827 785.578 m
859.021 766.546 L
859.021 771.833 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
850.246 781.348 m
839.276 781.348 L
839.276 785.578 L
843.664 795.622 L
848.052 795.622 L
848.052 805.138 L
839.276 805.138 L
839.276 800.38 L
839.276 805.138 L
839.276 800.38 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
839.276 785.578 m
841.47 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
839.276 781.348 m
843.664 790.864 L
845.858 790.864 L
848.052 795.622 L
848.052 800.38 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
848.052 795.622 m
848.052 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
848.052 795.622 m
845.858 795.622 L
843.664 790.864 L
841.47 790.864 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
848.052 790.864 m
848.052 781.348 L
852.44 781.348 L
852.44 790.864 L
848.052 790.864 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
850.246 785.578 m
850.246 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
889.979 781.348 m
898.755 781.348 L
898.755 800.38 L
896.561 805.138 L
889.979 805.138 L
889.979 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
896.561 781.348 m
898.755 785.578 L
898.755 795.622 L
896.561 800.38 L
896.561 805.138 L
894.367 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
894.367 805.138 m
896.561 800.38 L
896.561 781.348 L
894.367 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
907.53 781.348 m
905.336 785.578 L
905.336 805.138 L
911.918 805.138 L
914.112 800.38 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
914.112 790.864 m
916.305 785.578 L
914.112 781.348 L
907.53 781.348 L
905.336 785.578 L
905.336 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
907.53 805.138 m
905.336 800.38 L
905.336 795.622 L
907.53 785.578 L
907.53 781.348 L
909.724 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
911.918 795.622 m
914.112 790.864 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
911.918 795.622 m
905.336 795.622 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
887.785 800.38 m
885.591 818.883 L
880.96 818.883 L
887.785 818.883 L
880.96 818.883 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
931.663 800.38 m
931.663 795.622 L
951.651 795.622 L
951.651 800.38 L
931.663 800.38 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
931.663 785.578 m
931.663 781.348 L
951.651 781.348 L
951.651 785.578 L
931.663 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
967.008 781.348 m
969.202 785.578 L
973.59 790.864 L
973.59 805.138 L
962.62 805.138 L
962.62 795.622 L
962.62 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
973.59 805.138 m
975.784 800.38 L
975.784 795.622 L
973.59 790.864 L
973.59 785.578 L
967.008 781.348 L
967.008 766.546 L
964.814 771.833 L
964.814 776.062 L
967.008 781.348 L
973.59 790.864 L
973.59 795.622 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
977.978 776.062 m
977.978 771.833 L
975.784 766.546 L
967.008 766.546 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
967.008 776.062 m
967.008 781.348 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
977.978 776.062 m
980.171 766.546 L
977.978 771.833 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
806.125 738.528 m
704.719 871.748 L
605.751 738.528 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
649.872 619.052 m
656.454 619.052 L
652.066 619.052 L
654.26 614.294 L
654.26 619.052 L
656.454 600.021 L
656.454 585.747 L
656.454 600.021 L
654.26 619.052 L
652.066 619.052 L
656.454 595.263 L
656.454 585.747 L
654.26 585.747 L
652.066 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
658.648 590.505 m
658.648 585.747 L
663.036 585.747 L
665.229 590.505 L
665.229 600.021 L
660.842 609.536 L
658.648 609.536 L
658.648 604.779 L
656.454 600.021 L
656.454 595.263 L
658.648 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
663.036 590.505 m
663.036 604.779 L
660.842 609.536 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
663.036 604.779 m
663.036 600.021 L
665.229 595.263 L
665.229 590.505 L
663.036 590.505 L
663.036 585.747 L
663.036 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
669.617 604.779 m
671.811 604.779 L
671.811 609.536 L
669.617 609.536 L
669.617 614.294 L
667.423 614.294 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
669.617 614.294 m
669.617 604.779 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
676.199 609.536 m
680.587 609.536 L
678.393 604.779 L
676.199 609.536 L
678.393 604.779 L
680.587 609.536 L
678.393 609.536 L
682.78 576.231 L
684.974 576.231 L
682.78 576.231 L
684.974 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
682.78 576.231 m
678.393 609.536 L
682.78 576.231 L
680.587 576.231 L
682.78 576.231 L
680.587 576.231 L
689.362 576.231 L
691.556 580.989 L
689.362 585.747 L
689.362 590.505 L
680.587 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
684.974 590.505 m
687.168 595.263 L
687.168 604.779 L
689.362 604.779 L
689.362 600.021 L
689.362 609.536 L
687.168 609.536 L
687.168 595.263 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
687.168 590.505 m
689.362 585.747 L
689.362 576.231 L
687.168 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
689.362 576.231 m
689.362 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
687.168 604.779 m
689.362 604.779 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
693.75 609.536 m
698.381 609.536 L
695.944 609.536 L
695.944 604.779 L
693.75 609.536 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
695.944 604.779 m
700.331 576.231 L
700.331 609.536 L
702.769 604.779 L
700.331 576.231 L
698.381 576.231 L
700.331 576.231 L
698.381 576.231 L
700.331 576.231 L
700.331 604.779 L
702.769 604.779 L
709.107 576.231 L
704.719 609.536 L
707.157 609.536 L
711.544 576.231 L
707.157 609.536 L
707.157 604.779 L
704.719 609.536 L
707.157 604.779 L
709.107 609.536 L
702.769 609.536 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
715.932 614.294 m
715.932 600.021 L
718.126 600.021 L
718.126 614.294 L
715.932 614.294 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
718.126 604.779 m
715.932 604.779 L
718.126 604.779 L
720.32 609.536 L
722.514 609.536 L
724.708 604.779 L
724.708 595.263 L
720.32 590.505 L
718.126 585.747 L
718.126 580.989 L
720.32 576.231 L
718.126 580.989 L
720.32 585.747 L
724.708 590.505 L
724.708 595.263 L
726.902 595.263 L
726.902 600.021 L
724.708 604.779 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
724.708 595.263 m
720.32 585.747 L
718.126 585.747 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
720.32 576.231 m
729.095 576.231 L
729.095 585.747 L
729.095 580.989 L
726.902 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
713.738 576.231 m
709.107 576.231 L
713.738 576.231 L
711.544 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
704.719 866.99 m
704.719 881.264 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
718.126 938.358 m
720.32 938.358 L
724.708 966.906 L
724.708 971.663 L
720.32 938.358 L
715.932 971.663 L
713.738 971.663 L
718.126 971.663 L
715.932 971.663 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
724.708 966.906 m
720.32 938.358 L
720.32 943.116 L
718.126 938.358 L
720.32 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
726.902 938.358 m
731.289 938.358 L
729.095 943.116 L
724.708 966.906 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
726.902 938.358 m
729.095 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
704.719 285.472 m
704.719 266.97 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
704.719 123.705 m
702.769 118.947 L
700.331 109.431 L
700.331 95.1575 L
702.769 114.189 L
702.769 118.947 L
704.719 123.705 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
700.331 109.431 m
700.331 85.6417 L
702.769 76.126 L
711.544 57.0945 L
709.107 61.8523 L
707.157 71.3681 L
704.719 76.126 L
704.719 80.8838 L
702.769 85.6417 L
702.769 95.1575 L
700.331 109.431 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
700.331 95.1575 m
704.719 76.126 L
704.719 71.3681 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
718.126 71.3681 m
715.932 76.126 L
715.932 99.9153 L
718.126 104.673 L
720.32 104.673 L
722.514 109.431 L
724.708 109.431 L
726.902 104.673 L
729.095 104.673 L
729.095 99.9153 L
731.289 90.3996 L
731.289 85.6417 L
729.095 76.126 L
729.095 71.3681 L
726.902 71.3681 L
724.708 66.6102 L
722.514 66.6102 L
720.32 71.3681 L
718.126 71.3681 L
718.126 76.126 L
715.932 85.6417 L
715.932 90.3996 L
718.126 99.9153 L
718.126 104.673 L
720.32 104.673 L
722.514 109.431 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
724.708 109.431 m
724.708 104.673 L
726.902 104.673 L
729.095 99.9153 L
729.095 76.126 L
726.902 71.3681 L
724.708 71.3681 L
724.708 66.6102 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
722.514 66.6102 m
720.32 71.3681 L
718.126 71.3681 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
720.32 80.8838 m
720.32 95.1575 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
720.32 90.3996 m
724.708 90.3996 L
724.708 85.6417 L
720.32 85.6417 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
724.708 80.8838 m
724.708 95.1575 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
742.259 95.1575 m
744.453 95.1575 L
744.453 90.3996 L
742.259 90.3996 L
742.259 95.1575 L
744.453 95.1575 L
742.259 90.3996 L
742.259 95.1575 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 104.673 m
742.259 104.673 L
742.259 114.189 L
740.065 118.947 L
740.065 123.705 L
744.453 123.705 L
744.453 118.947 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 118.947 m
740.065 123.705 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 118.947 m
740.065 114.189 L
742.259 109.431 L
742.259 104.673 L
742.259 109.431 L
740.065 118.947 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 104.673 m
737.871 104.673 L
737.871 109.431 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
751.034 123.705 m
753.228 118.947 L
755.422 118.947 L
760.053 109.431 L
760.053 104.673 L
762.003 95.1575 L
764.441 90.3996 L
764.441 80.8838 L
762.003 71.3681 L
762.003 95.1575 L
760.053 104.673 L
757.616 109.431 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
757.616 114.189 m
753.228 118.947 L
751.034 123.705 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
757.616 114.189 m
760.053 104.673 L
760.053 95.1575 L
762.003 90.3996 L
762.003 66.6102 L
760.053 57.0945 L
760.053 61.8523 L
762.003 71.3681 L
762.003 85.6417 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
746.646 547.684 m
742.259 557.2 L
737.871 576.231 L
737.871 585.747 L
740.065 590.505 L
740.065 600.021 L
742.259 604.779 L
742.259 600.021 L
740.065 595.263 L
740.065 576.231 L
740.065 590.505 L
740.065 576.231 L
742.259 566.716 L
742.259 561.958 L
744.453 557.2 L
744.453 552.442 L
748.84 547.684 L
751.034 542.926 L
748.84 542.926 L
746.646 547.684 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
744.453 552.442 m
742.259 557.2 L
740.065 566.716 L
740.065 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
753.228 571.473 m
755.422 580.989 L
755.422 585.747 L
757.616 590.505 L
764.441 590.505 L
768.829 580.989 L
768.829 557.2 L
766.391 557.2 L
762.003 547.684 L
760.053 547.684 L
760.053 552.442 L
757.616 557.2 L
755.422 557.2 L
755.422 580.989 L
760.053 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
762.003 590.505 m
764.441 590.505 L
766.391 585.747 L
766.391 580.989 L
768.829 571.473 L
768.829 566.716 L
766.391 557.2 L
762.003 547.684 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
760.053 547.684 m
755.422 557.2 L
753.228 566.716 L
753.228 571.473 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
760.053 576.231 m
760.053 571.473 L
766.391 571.473 L
766.391 576.231 L
760.053 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
760.053 561.958 m
760.053 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
764.441 576.231 m
764.441 561.958 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
779.798 576.231 m
781.992 576.231 L
779.798 576.231 L
781.992 576.231 L
779.798 576.231 L
781.992 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
779.798 585.747 m
779.798 604.779 L
777.604 604.779 L
779.798 604.779 L
779.798 609.536 L
781.992 609.536 L
781.992 604.779 L
784.186 600.021 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
779.798 600.021 m
779.798 604.779 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
777.604 604.779 m
777.604 600.021 L
779.798 590.505 L
779.798 585.747 L
779.798 600.021 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
779.798 585.747 m
777.604 585.747 L
775.41 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
790.767 604.779 m
792.961 604.779 L
795.155 600.021 L
797.349 590.505 L
801.737 580.989 L
801.737 552.442 L
801.737 571.473 L
799.543 580.989 L
797.349 585.747 L
797.349 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
795.155 595.263 m
790.767 604.779 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
795.155 595.263 m
797.349 590.505 L
797.349 585.747 L
799.543 580.989 L
799.543 571.473 L
801.737 552.442 L
797.349 542.926 L
799.543 547.684 L
799.543 552.442 L
801.737 571.473 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
649.872 571.473 m
645.485 561.958 L
643.047 561.958 L
641.097 566.716 L
641.097 571.473 L
643.047 571.473 L
645.485 576.231 L
641.097 576.231 L
638.659 580.989 L
638.659 590.505 L
647.679 590.505 L
647.679 585.747 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
645.485 576.231 m
641.097 576.231 L
638.659 580.989 L
638.659 585.747 L
641.097 590.505 L
643.047 590.505 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
643.047 571.473 m
645.485 576.231 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
643.047 571.473 m
641.097 571.473 L
641.097 566.716 L
643.047 561.958 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
695.944 919.327 m
693.75 919.327 L
693.75 924.085 L
691.556 933.6 L
691.556 938.358 L
693.75 947.874 L
693.75 952.632 L
695.944 952.632 L
698.381 957.39 L
700.331 957.39 L
702.769 952.632 L
704.719 952.632 L
707.157 947.874 L
707.157 924.085 L
704.719 919.327 L
702.769 919.327 L
700.331 914.569 L
698.381 914.569 L
693.75 924.085 L
693.75 947.874 L
698.381 957.39 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
700.331 957.39 m
702.769 952.632 L
704.719 952.632 L
704.719 947.874 L
707.157 938.358 L
707.157 933.6 L
704.719 924.085 L
704.719 919.327 L
702.769 919.327 L
700.331 914.569 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
698.381 914.569 m
695.944 919.327 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
695.944 928.843 m
695.944 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
695.944 938.358 m
702.769 938.358 L
702.769 933.6 L
695.944 933.6 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
702.769 928.843 m
702.769 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
742.259 943.116 m
744.453 943.116 L
744.453 938.358 L
742.259 938.358 L
742.259 943.116 L
744.453 943.116 L
742.259 938.358 L
742.259 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 952.632 m
742.259 952.632 L
742.259 962.148 L
740.065 966.906 L
740.065 971.663 L
744.453 971.663 L
744.453 966.906 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 966.906 m
740.065 971.663 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 966.906 m
740.065 962.148 L
742.259 957.39 L
742.259 952.632 L
742.259 957.39 L
740.065 966.906 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
740.065 952.632 m
737.871 952.632 L
737.871 957.39 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
790.767 790.864 m
828.307 790.864 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
988.947 790.864 m
988.947 795.622 L
991.141 795.622 L
991.141 790.864 L
988.947 790.864 L
988.947 795.622 L
988.947 790.864 L
991.141 790.864 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
986.753 800.38 m
988.947 805.138 L
988.947 809.367 L
986.753 818.883 L
986.753 824.169 L
988.947 824.169 L
991.141 818.883 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
986.753 814.654 m
986.753 824.169 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
986.753 818.883 m
986.753 814.654 L
988.947 805.138 L
988.947 809.367 L
986.753 814.654 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
986.753 800.38 m
984.559 805.138 L
984.559 809.367 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
975.784 871.748 m
960.427 871.748 L
958.233 876.506 L
971.396 876.506 L
967.008 881.264 L
958.233 881.264 L
958.233 886.022 L
962.62 886.022 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
960.427 871.748 m
956.039 890.78 L
975.784 871.748 L
956.039 857.474 L
960.427 871.748 L
975.784 871.748 L
960.427 871.748 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
960.427 871.748 m
971.396 871.748 L
969.202 866.99 L
958.233 866.99 L
958.233 862.232 L
964.814 862.232 L
956.039 862.232 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
988.947 919.327 m
986.753 919.327 L
986.753 952.632 L
988.947 952.632 L
993.335 957.39 L
997.722 952.632 L
1000.16 947.874 L
1000.16 924.085 L
997.722 919.327 L
993.335 914.569 L
991.141 919.327 L
988.947 919.327 L
986.753 924.085 L
986.753 947.874 L
988.947 952.632 L
991.141 952.632 L
993.335 957.39 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
993.335 957.39 m
995.772 952.632 L
997.722 952.632 L
997.722 947.874 L
1000.16 938.358 L
1000.16 933.6 L
997.722 924.085 L
997.722 919.327 L
995.772 919.327 L
993.335 914.569 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
993.335 914.569 m
988.947 919.327 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
991.141 928.843 m
991.141 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
991.141 938.358 m
995.772 938.358 L
995.772 933.6 L
991.141 933.6 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
995.772 928.843 m
995.772 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
1013.32 943.116 m
1013.32 938.358 L
1013.32 943.116 L
1013.32 938.358 L
1013.32 943.116 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
1011.13 952.632 m
1013.32 957.39 L
1013.32 962.148 L
1011.13 966.906 L
1011.13 971.663 L
1015.52 971.663 L
1015.52 966.906 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
1011.13 966.906 m
1011.13 971.663 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
1011.13 971.663 m
1011.13 952.632 L
1013.32 952.632 L
1013.32 971.663 L
1011.13 971.663 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
1011.13 952.632 m
1008.94 952.632 L
1006.5 957.39 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
806.125 805.138 m
801.737 790.864 L
790.767 790.864 L
801.737 790.864 L
806.125 776.062 L
790.767 790.864 L
795.155 795.622 L
803.931 795.622 L
797.349 795.622 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
797.349 785.578 m
792.961 785.578 L
803.931 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
801.737 790.864 m
790.767 790.864 L
806.125 805.138 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
803.931 785.578 m
797.349 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
801.737 781.348 m
803.931 781.348 L
803.931 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
669.617 781.348 m
669.617 766.546 L
671.811 762.317 L
671.811 776.062 L
674.005 771.833 L
674.005 762.317 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
676.199 762.317 m
669.617 766.546 L
667.423 790.864 L
669.617 766.546 L
665.229 757.03 L
667.423 790.864 L
676.199 762.317 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
667.423 762.317 m
665.229 757.03 L
665.229 785.578 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
667.423 790.864 m
682.78 642.841 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
667.423 762.317 m
667.423 776.062 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
667.423 261.683 m
674.005 266.97 L
678.393 271.727 L
684.974 271.727 L
691.556 275.957 L
718.126 275.957 L
724.708 271.727 L
731.289 271.727 L
744.453 261.683 L
748.84 257.454 L
762.003 247.938 L
766.391 242.652 L
773.217 238.422 L
799.543 199.831 L
806.125 185.557 L
812.706 176.041 L
830.501 137.978 L
834.889 123.705 L
841.47 109.431 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
687.168 137.978 m
667.423 223.62 L
671.811 199.831 L
667.423 190.315 L
667.423 223.62 L
678.393 199.831 L
671.811 199.831 L
667.423 223.62 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
669.617 214.633 m
674.005 214.633 L
669.617 214.633 L
669.617 209.346 L
676.199 209.346 L
676.199 205.117 L
671.811 205.117 L
671.811 199.831 L
678.393 199.831 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
669.617 195.073 m
669.617 190.315 L
669.617 214.633 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
669.617 209.346 m
669.617 195.073 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
667.423 261.683 m
647.679 247.938 L
643.047 242.652 L
636.709 238.422 L
632.321 228.378 L
623.302 218.862 L
610.139 199.831 L
603.557 185.557 L
596.976 176.041 L
592.588 161.768 L
586.006 152.252 L
579.425 137.978 L
570.649 109.431 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
325.911 109.431 m
325.911 142.736 L
334.93 152.252 L
325.911 109.431 L
325.911 142.736 L
325.911 118.947 L
323.717 128.463 L
323.717 147.494 L
321.524 147.494 L
321.524 133.22 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
325.911 142.736 m
325.911 109.431 L
319.33 152.252 L
325.911 142.736 L
Q
S
q
0.52 0 0 -0.2427 -3.969 595.1 cm
328.105 142.736 m
328.105 114.189 L
330.299 123.705 L
330.299 147.494 L
330.299 133.22 L
332.493 142.736 L
332.493 147.494 L
Q
S
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
