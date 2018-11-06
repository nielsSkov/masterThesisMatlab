%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.2
%%Title: laudspeaker_blok_diagram.md
%%CreationDate: Wed Feb 01 12:15:10 2006
%%BoundingBox: 37 339 557 503
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
37 339 moveto 37 503 lineto 557 503 lineto 557 339 lineto closepath clip
newpath
%%EndPageSetup
1 1 1 0 k
0.5 w
q
0.3921 0 0 -0.1425 46.63 493.4 cm
847.916 1004.5 m
953.1 1004.5 L
953.1 717.987 L
847.916 717.987 L
847.916 706.119 L
954.633 706.119 L
957.7 713.748 L
957.7 1007.89 L
954.633 1016.37 L
847.916 1016.37 L
845.156 1007.89 L
847.916 1004.5 L
847.916 1004.5 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
849.756 713.748 m
849.756 1007.89 L
845.156 1007.89 L
845.156 713.748 L
847.916 706.119 L
849.756 713.748 L
849.756 713.748 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
242.568 302.623 m
349.286 302.623 L
349.286 11.8675 L
242.568 11.8675 L
242.568 0 L
350.513 0 L
353.579 7.62914 L
353.579 306.013 L
350.513 313.642 L
242.568 313.642 L
240.115 306.013 L
242.568 302.623 L
242.568 302.623 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
244.408 7.62914 m
244.408 306.013 L
240.115 306.013 L
240.115 7.62914 L
242.568 0 L
244.408 7.62914 L
244.408 7.62914 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
485.75 302.623 m
630.8 302.623 L
630.8 11.8675 L
485.75 11.8675 L
485.75 0 L
632.027 0 L
635.093 7.62914 L
635.093 306.013 L
632.027 314.49 L
485.75 314.49 L
482.99 306.013 L
485.75 302.623 L
485.75 302.623 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
486.977 7.62914 m
486.977 306.013 L
482.99 306.013 L
482.99 7.62914 L
485.75 0 L
486.977 7.62914 L
486.977 7.62914 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
793.943 337.377 m
1127.9 337.377 L
1127.9 11.8675 L
793.943 11.8675 L
793.943 0 L
1129.43 0 L
1132.5 7.62914 L
1132.5 341.616 L
1129.43 349.245 L
793.943 349.245 L
791.184 341.616 L
793.943 337.377 L
793.943 337.377 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
795.477 7.62914 m
795.477 341.616 L
791.184 341.616 L
791.184 7.62914 L
793.943 0 L
795.477 7.62914 L
795.477 7.62914 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
524.082 183.947 m
524.082 196.662 L
525.616 196.662 L
529.909 192.424 L
532.669 189.033 L
533.896 183.947 L
535.736 172.927 L
533.896 161.06 L
529.909 153.43 L
532.669 149.192 L
533.896 137.325 L
532.669 129.695 L
529.909 121.219 L
524.082 117.828 L
524.082 129.695 L
528.376 129.695 L
529.909 133.086 L
529.909 140.715 L
529.909 145.801 L
526.842 149.192 L
524.082 149.192 L
524.082 161.06 L
528.376 161.06 L
531.136 164.45 L
531.136 172.927 L
531.136 180.556 L
529.909 183.947 L
526.842 183.947 L
525.616 183.947 L
524.082 183.947 L
524.082 183.947 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
524.082 129.695 m
524.082 117.828 L
514.269 117.828 L
514.269 196.662 L
524.082 196.662 L
524.082 183.947 L
518.256 183.947 L
518.256 161.06 L
524.082 161.06 L
524.082 149.192 L
518.256 149.192 L
518.256 129.695 L
524.082 129.695 L
524.082 129.695 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
539.722 117.828 m
539.722 200.053 L
544.015 200.053 L
544.015 117.828 L
539.722 117.828 L
539.722 117.828 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
554.135 216.159 m
549.535 192.424 L
548.309 168.689 L
549.535 145.801 L
554.135 117.828 L
556.588 117.828 L
554.135 133.086 L
552.602 149.192 L
551.375 168.689 L
552.602 192.424 L
556.588 216.159 L
554.135 216.159 L
554.135 216.159 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
558.428 196.662 m
565.175 164.45 L
559.655 140.715 L
562.415 140.715 L
567.015 153.43 L
568.242 161.06 L
569.468 153.43 L
572.228 140.715 L
576.828 140.715 L
569.468 164.45 L
576.828 196.662 L
572.228 196.662 L
568.242 176.318 L
568.242 172.927 L
562.415 196.662 L
558.428 196.662 L
558.428 196.662 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
582.348 216.159 m
579.588 216.159 L
583.881 192.424 L
585.108 168.689 L
583.881 149.192 L
582.348 133.086 L
579.588 117.828 L
582.348 117.828 L
586.641 145.801 L
587.868 168.689 L
586.641 192.424 L
582.348 216.159 L
582.348 216.159 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
485.75 1004.5 m
630.8 1004.5 L
630.8 717.987 L
485.75 717.987 L
485.75 706.119 L
632.027 706.119 L
635.093 713.748 L
635.093 1007.89 L
632.027 1016.37 L
485.75 1016.37 L
482.99 1007.89 L
485.75 1004.5 L
485.75 1004.5 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
486.977 713.748 m
486.977 1007.89 L
482.99 1007.89 L
482.99 713.748 L
485.75 706.119 L
486.977 713.748 L
486.977 713.748 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
524.082 890.914 m
524.082 898.543 L
525.616 898.543 L
529.909 898.543 L
532.669 894.305 L
533.896 886.675 L
535.736 879.046 L
533.896 867.179 L
529.909 858.702 L
532.669 851.073 L
533.896 844.291 L
532.669 831.576 L
529.909 828.185 L
524.082 823.947 L
524.082 831.576 L
528.376 831.576 L
529.909 835.815 L
529.909 844.291 L
529.909 851.073 L
526.842 855.311 L
524.082 855.311 L
524.082 862.94 L
528.376 867.179 L
531.136 871.417 L
531.136 879.046 L
531.136 882.437 L
529.909 886.675 L
526.842 890.914 L
525.616 890.914 L
524.082 890.914 L
524.082 890.914 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
524.082 831.576 m
524.082 823.947 L
514.269 823.947 L
514.269 898.543 L
524.082 898.543 L
524.082 890.914 L
518.256 890.914 L
518.256 862.94 L
524.082 862.94 L
524.082 855.311 L
518.256 855.311 L
518.256 831.576 L
524.082 831.576 L
524.082 831.576 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
539.722 823.947 m
539.722 901.934 L
544.015 901.934 L
544.015 823.947 L
539.722 823.947 L
539.722 823.947 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
554.135 921.43 m
549.535 898.543 L
548.309 871.417 L
549.535 847.682 L
554.135 823.947 L
556.588 823.947 L
554.135 835.815 L
552.602 851.073 L
551.375 871.417 L
552.602 894.305 L
556.588 921.43 L
554.135 921.43 L
554.135 921.43 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
558.428 898.543 m
565.175 871.417 L
559.655 844.291 L
562.415 844.291 L
567.015 855.311 L
568.242 862.94 L
569.468 855.311 L
572.228 844.291 L
576.828 844.291 L
569.468 871.417 L
576.828 898.543 L
572.228 898.543 L
568.242 882.437 L
568.242 879.046 L
562.415 898.543 L
558.428 898.543 L
558.428 898.543 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
582.348 921.43 m
579.588 921.43 L
583.881 894.305 L
585.108 871.417 L
583.881 851.073 L
582.348 839.205 L
579.588 823.947 L
582.348 823.947 L
586.641 847.682 L
587.868 871.417 L
586.641 898.543 L
582.348 921.43 L
582.348 921.43 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
137.69 83.0728 m
139.224 83.0728 L
145.05 94.0927 L
149.037 113.589 L
149.037 117.828 L
150.264 137.325 L
149.037 161.06 L
149.037 164.45 L
145.05 180.556 L
139.224 192.424 L
137.69 192.424 L
129.411 200.053 L
122.051 192.424 L
120.517 192.424 L
113.464 180.556 L
109.171 164.45 L
109.171 161.06 L
107.944 137.325 L
109.171 117.828 L
109.171 113.589 L
113.464 94.0927 L
120.517 83.0728 L
122.051 83.0728 L
129.411 77.9868 L
129.411 90.702 L
124.811 94.0927 L
117.758 105.96 L
113.464 126.305 L
111.931 137.325 L
113.464 161.06 L
114.998 164.45 L
126.344 183.947 L
129.411 189.033 L
139.224 180.556 L
141.984 172.927 L
145.05 161.06 L
146.277 137.325 L
145.05 121.219 L
139.224 98.3311 L
136.157 90.702 L
137.69 83.0728 L
137.69 83.0728 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
129.411 77.9868 m
129.411 77.9868 L
137.69 83.0728 L
137.69 94.0927 L
129.411 90.702 L
129.411 77.9868 L
129.411 77.9868 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
149.037 153.43 m
149.037 164.45 L
242.568 164.45 L
242.568 153.43 L
149.037 153.43 L
149.037 153.43 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
350.513 153.43 m
350.513 164.45 L
485.75 164.45 L
485.75 153.43 L
350.513 153.43 L
350.513 153.43 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
485.75 153.43 350.513 153.43 3 2 Ah
Q
q
0.3921 0 0 -0.1425 46.63 493.4 cm
632.027 153.43 m
632.027 164.45 L
793.943 164.45 L
793.943 153.43 L
632.027 153.43 L
632.027 153.43 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1129.43 153.43 m
1129.43 165.298 L
1276.93 165.298 L
1276.93 153.43 L
1129.43 153.43 L
1129.43 153.43 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1211.92 156.821 m
1211.92 863.788 L
1210.39 867.179 L
954.633 867.179 L
954.633 855.311 L
1207.63 855.311 L
1207.63 156.821 L
1211.92 156.821 L
1211.92 156.821 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
632.027 855.311 m
632.027 867.179 L
847.916 867.179 L
847.916 855.311 L
632.027 855.311 L
632.027 855.311 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
136.157 855.311 m
136.157 867.179 L
485.75 867.179 L
485.75 855.311 L
136.157 855.311 L
136.157 855.311 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
130.637 274.649 m
127.571 274.649 L
127.571 867.179 L
133.397 867.179 L
133.397 274.649 L
130.637 274.649 L
130.637 274.649 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
130.637 200.053 m
116.531 278.887 L
145.05 278.887 L
130.637 200.053 L
130.637 200.053 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
80.6516 156.821 m
80.6516 149.192 L
15.6397 149.192 L
15.6397 164.45 L
80.6516 164.45 L
80.6516 156.821 L
80.6516 156.821 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
109.171 156.821 m
79.425 117.828 L
79.425 196.662 L
109.171 156.821 L
109.171 156.821 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
565.175 306.013 m
578.055 372.132 L
554.135 372.132 L
565.175 306.013 L
565.175 306.013 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 368.742 m
563.948 384.848 L
569.468 384.848 L
569.468 368.742 L
563.948 368.742 L
563.948 368.742 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 388.238 m
563.948 407.735 L
569.468 407.735 L
569.468 388.238 L
563.948 388.238 L
563.948 388.238 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 411.974 m
563.948 431.47 L
569.468 431.47 L
569.468 411.974 L
563.948 411.974 L
563.948 411.974 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 435.709 m
563.948 450.967 L
569.468 450.967 L
569.468 435.709 L
563.948 435.709 L
563.948 435.709 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 455.205 m
563.948 474.702 L
569.468 474.702 L
569.468 455.205 L
563.948 455.205 L
563.948 455.205 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 478.093 m
563.948 498.437 L
569.468 498.437 L
569.468 478.093 L
563.948 478.093 L
563.948 478.093 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 501.828 m
563.948 517.934 L
569.468 517.934 L
569.468 501.828 L
563.948 501.828 L
563.948 501.828 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 521.325 m
563.948 540.821 L
569.468 540.821 L
569.468 521.325 L
563.948 521.325 L
563.948 521.325 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 545.06 m
563.948 564.556 L
569.468 564.556 L
569.468 545.06 L
563.948 545.06 L
563.948 545.06 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 569.642 m
563.948 588.291 L
569.468 588.291 L
569.468 569.642 L
563.948 569.642 L
563.948 569.642 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 588.291 m
563.948 607.788 L
569.468 607.788 L
569.468 588.291 L
563.948 588.291 L
563.948 588.291 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 612.026 m
563.948 632.371 L
569.468 632.371 L
569.468 612.026 L
563.948 612.026 L
563.948 612.026 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
563.948 635.762 m
563.948 655.258 L
569.468 655.258 L
569.468 635.762 L
563.948 635.762 L
563.948 635.762 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
565.175 713.748 m
578.055 646.781 L
554.135 646.781 L
565.175 713.748 L
565.175 713.748 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
565.175 486.57 m
565.175 498.437 L
575.295 498.437 L
575.295 486.57 L
565.175 486.57 L
565.175 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
589.708 486.57 m
589.708 498.437 L
597.988 498.437 L
597.988 486.57 L
589.708 486.57 L
589.708 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
600.747 486.57 m
600.747 498.437 L
609.334 498.437 L
609.334 486.57 L
600.747 486.57 L
600.747 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
612.401 486.57 m
612.401 498.437 L
620.987 498.437 L
620.987 486.57 L
612.401 486.57 L
612.401 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
623.44 486.57 m
623.44 498.437 L
632.027 498.437 L
632.027 486.57 L
623.44 486.57 L
623.44 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
635.093 486.57 m
635.093 498.437 L
644.907 498.437 L
644.907 486.57 L
635.093 486.57 L
635.093 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
646.44 486.57 m
646.44 498.437 L
656.253 498.437 L
656.253 486.57 L
646.44 486.57 L
646.44 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
659.32 486.57 m
659.32 498.437 L
667.599 498.437 L
667.599 486.57 L
659.32 486.57 L
659.32 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
670.359 486.57 m
670.359 498.437 L
678.946 498.437 L
678.946 486.57 L
670.359 486.57 L
670.359 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
682.012 486.57 m
682.012 498.437 L
690.599 498.437 L
690.599 486.57 L
682.012 486.57 L
682.012 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
693.052 486.57 m
693.052 498.437 L
701.639 498.437 L
701.639 486.57 L
693.052 486.57 L
693.052 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
704.705 486.57 m
704.705 498.437 L
713.292 498.437 L
713.292 486.57 L
704.705 486.57 L
704.705 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
716.052 486.57 m
716.052 498.437 L
725.865 498.437 L
725.865 486.57 L
716.052 486.57 L
716.052 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
727.398 486.57 m
727.398 498.437 L
737.211 498.437 L
737.211 486.57 L
727.398 486.57 L
727.398 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
739.971 486.57 m
739.971 498.437 L
748.558 498.437 L
748.558 486.57 L
739.971 486.57 L
739.971 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
751.624 486.57 m
751.624 498.437 L
759.904 498.437 L
759.904 486.57 L
751.624 486.57 L
751.624 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
762.664 486.57 m
762.664 498.437 L
771.251 498.437 L
771.251 486.57 L
762.664 486.57 L
762.664 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
774.317 486.57 m
774.317 498.437 L
782.904 498.437 L
782.904 486.57 L
774.317 486.57 L
774.317 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
785.664 486.57 m
785.664 498.437 L
795.477 498.437 L
795.477 486.57 L
785.664 486.57 L
785.664 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
797.01 486.57 m
797.01 498.437 L
806.823 498.437 L
806.823 486.57 L
797.01 486.57 L
797.01 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
809.583 486.57 m
809.583 498.437 L
818.17 498.437 L
818.17 486.57 L
809.583 486.57 L
809.583 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
821.236 486.57 m
821.236 498.437 L
829.516 498.437 L
829.516 486.57 L
821.236 486.57 L
821.236 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
832.276 486.57 m
832.276 498.437 L
840.862 498.437 L
840.862 486.57 L
832.276 486.57 L
832.276 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
843.929 486.57 m
843.929 498.437 L
853.742 498.437 L
853.742 486.57 L
843.929 486.57 L
843.929 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
854.969 486.57 m
854.969 498.437 L
865.395 498.437 L
865.395 486.57 L
854.969 486.57 L
854.969 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
866.622 486.57 m
866.622 498.437 L
876.435 498.437 L
876.435 486.57 L
866.622 486.57 L
866.622 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
877.968 486.57 m
877.968 498.437 L
888.088 498.437 L
888.088 486.57 L
877.968 486.57 L
877.968 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
890.848 486.57 m
890.848 498.437 L
899.128 498.437 L
899.128 486.57 L
890.848 486.57 L
890.848 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
901.888 486.57 m
901.888 498.437 L
910.474 498.437 L
910.474 486.57 L
901.888 486.57 L
901.888 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
913.541 486.57 m
913.541 498.437 L
922.127 498.437 L
922.127 486.57 L
913.541 486.57 L
913.541 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
924.581 486.57 m
924.581 498.437 L
935.007 498.437 L
935.007 486.57 L
924.581 486.57 L
924.581 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
936.234 486.57 m
936.234 498.437 L
946.047 498.437 L
946.047 486.57 L
936.234 486.57 L
936.234 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
948.807 486.57 m
948.807 498.437 L
957.7 498.437 L
957.7 486.57 L
948.807 486.57 L
948.807 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
960.46 486.57 m
960.46 498.437 L
968.74 498.437 L
968.74 486.57 L
960.46 486.57 L
960.46 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
971.5 486.57 m
971.5 498.437 L
980.393 498.437 L
980.393 486.57 L
971.5 486.57 L
971.5 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
983.153 486.57 m
983.153 498.437 L
991.433 498.437 L
991.433 486.57 L
983.153 486.57 L
983.153 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
994.193 486.57 m
994.193 498.437 L
1004.31 498.437 L
1004.31 486.57 L
994.193 486.57 L
994.193 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1005.85 486.57 m
1005.85 498.437 L
1015.66 498.437 L
1015.66 486.57 L
1005.85 486.57 L
1005.85 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1018.73 486.57 m
1018.73 498.437 L
1027.31 498.437 L
1027.31 486.57 L
1018.73 486.57 L
1018.73 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1030.07 486.57 m
1030.07 498.437 L
1038.35 498.437 L
1038.35 486.57 L
1030.07 486.57 L
1030.07 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1041.42 486.57 m
1041.42 498.437 L
1050 498.437 L
1050 486.57 L
1041.42 486.57 L
1041.42 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1052.76 486.57 m
1052.76 498.437 L
1061.04 498.437 L
1061.04 486.57 L
1052.76 486.57 L
1052.76 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1064.11 486.57 m
1064.11 498.437 L
1073.92 498.437 L
1073.92 486.57 L
1064.11 486.57 L
1064.11 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1075.46 486.57 m
1075.46 498.437 L
1085.27 498.437 L
1085.27 486.57 L
1075.46 486.57 L
1075.46 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1086.8 486.57 m
1086.8 498.437 L
1096.92 498.437 L
1096.92 486.57 L
1086.8 486.57 L
1086.8 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1099.68 486.57 m
1099.68 498.437 L
1107.96 498.437 L
1107.96 486.57 L
1099.68 486.57 L
1099.68 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1111.03 486.57 m
1111.03 498.437 L
1119.62 498.437 L
1119.62 486.57 L
1111.03 486.57 L
1111.03 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1122.38 486.57 m
1122.38 498.437 L
1130.66 498.437 L
1130.66 486.57 L
1122.38 486.57 L
1122.38 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1133.72 486.57 m
1133.72 498.437 L
1143.54 498.437 L
1143.54 486.57 L
1133.72 486.57 L
1133.72 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1145.07 486.57 m
1145.07 498.437 L
1154.88 498.437 L
1154.88 486.57 L
1145.07 486.57 L
1145.07 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1156.42 486.57 m
1156.42 498.437 L
1166.54 498.437 L
1166.54 486.57 L
1156.42 486.57 L
1156.42 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1168.99 486.57 m
1168.99 498.437 L
1177.58 498.437 L
1177.58 486.57 L
1168.99 486.57 L
1168.99 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1180.64 486.57 m
1180.64 498.437 L
1189.23 498.437 L
1189.23 486.57 L
1180.64 486.57 L
1180.64 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1191.99 486.57 m
1191.99 498.437 L
1200.27 498.437 L
1200.27 486.57 L
1191.99 486.57 L
1191.99 486.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1210.39 490.808 m
1210.39 486.57 L
1203.33 486.57 L
1203.33 494.199 L
1210.39 494.199 L
1210.39 490.808 L
1210.39 490.808 L
Q
f
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.30666 w
q
0.3921 0 0 -0.1425 46.63 493.4 cm
269.861 156.821 m
323.833 157.669 L
Q
S
q
0.3921 0 0 -0.1425 46.63 493.4 cm
821.236 156.821 m
1116.55 157.669 L
Q
S
1 1 1 0 k
0.5 w
q
0.3921 0 0 -0.1425 46.63 493.4 cm
298.38 121.219 m
294.087 121.219 L
294.087 63.5762 L
291.327 66.9669 L
288.261 74.596 L
288.261 63.5762 L
292.554 55.0993 L
295.314 43.2318 L
298.38 43.2318 L
298.38 121.219 L
298.38 121.219 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
298.38 227.179 m
298.38 235.656 L
298.38 239.046 L
299.607 243.285 L
302.367 251.762 L
306.967 267.02 L
310.954 267.02 L
305.127 246.675 L
302.367 239.046 L
301.14 235.656 L
303.9 232.265 L
306.967 227.179 L
308.194 219.55 L
308.194 216.159 L
306.967 203.444 L
303.9 196.662 L
298.38 192.424 L
298.38 200.053 L
303.9 203.444 L
305.127 216.159 L
303.9 219.55 L
302.367 223.788 L
298.38 227.179 L
298.38 227.179 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
298.38 200.053 m
298.38 192.424 L
286.727 192.424 L
286.727 267.02 L
289.487 267.02 L
289.487 235.656 L
294.087 235.656 L
296.54 235.656 L
298.38 235.656 L
298.38 227.179 L
289.487 227.179 L
289.487 200.053 L
298.38 200.053 L
298.38 200.053 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
955.86 137.325 m
951.873 137.325 L
951.873 77.9868 L
948.807 86.4636 L
946.047 90.702 L
946.047 83.0728 L
950.34 70.3576 L
953.1 63.5762 L
955.86 63.5762 L
955.86 137.325 L
955.86 137.325 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
853.742 278.887 m
853.742 227.179 L
856.502 227.179 L
856.502 235.656 L
859.569 227.179 L
862.329 223.788 L
866.622 227.179 L
867.849 235.656 L
870.609 227.179 L
873.675 223.788 L
876.435 227.179 L
877.968 232.265 L
879.195 235.656 L
881.035 243.285 L
881.035 278.887 L
876.435 278.887 L
876.435 246.675 L
876.435 239.046 L
875.208 235.656 L
873.675 232.265 L
869.382 235.656 L
869.382 243.285 L
867.849 246.675 L
867.849 278.887 L
865.395 278.887 L
865.395 246.675 L
863.555 235.656 L
862.329 232.265 L
859.569 235.656 L
856.502 243.285 L
856.502 251.762 L
856.502 278.887 L
853.742 278.887 L
853.742 278.887 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
903.728 274.649 m
903.728 282.278 L
907.714 278.887 L
912.008 267.02 L
912.008 255.152 L
912.008 239.046 L
908.941 227.179 L
904.954 223.788 L
903.728 223.788 L
903.728 232.265 L
906.488 235.656 L
907.714 239.046 L
908.941 243.285 L
908.941 255.152 L
908.941 262.781 L
907.714 270.411 L
906.488 274.649 L
903.728 274.649 L
903.728 274.649 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
903.728 232.265 m
903.728 223.788 L
900.661 227.179 L
899.128 232.265 L
899.128 227.179 L
894.835 227.179 L
894.835 302.623 L
899.128 302.623 L
899.128 274.649 L
900.661 278.887 L
903.728 282.278 L
903.728 274.649 L
901.888 274.649 L
900.661 270.411 L
899.128 262.781 L
899.128 255.152 L
899.128 243.285 L
900.661 239.046 L
901.888 235.656 L
903.728 232.265 L
903.728 232.265 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
944.82 267.02 m
944.82 246.675 L
937.46 246.675 L
937.46 239.046 L
944.82 239.046 L
944.82 219.55 L
947.58 219.55 L
947.58 239.046 L
954.633 239.046 L
954.633 246.675 L
947.58 246.675 L
947.58 267.02 L
944.82 267.02 L
944.82 267.02 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
970.273 278.887 m
970.273 227.179 L
973.34 227.179 L
973.34 235.656 L
976.1 227.179 L
977.326 223.788 L
980.393 227.179 L
980.393 235.656 L
977.326 235.656 L
976.1 235.656 L
974.566 243.285 L
973.34 251.762 L
973.34 278.887 L
970.273 278.887 L
970.273 278.887 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1001.55 274.649 m
1001.55 282.278 L
1005.85 278.887 L
1009.83 267.02 L
1009.83 255.152 L
1009.83 239.046 L
1007.07 227.179 L
1001.55 223.788 L
1001.55 232.265 L
1004.31 235.656 L
1005.85 239.046 L
1007.07 243.285 L
1007.07 255.152 L
1007.07 262.781 L
1005.85 270.411 L
1004.31 274.649 L
1001.55 274.649 L
1001.55 274.649 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1001.55 232.265 m
1001.55 223.788 L
998.793 227.179 L
997.259 232.265 L
997.259 227.179 L
992.966 227.179 L
992.966 302.623 L
997.259 302.623 L
997.259 274.649 L
998.793 278.887 L
1001.55 282.278 L
1001.55 274.649 L
1000.02 274.649 L
997.259 270.411 L
997.259 262.781 L
996.033 255.152 L
997.259 243.285 L
998.793 239.046 L
1000.02 235.656 L
1001.55 232.265 L
1001.55 232.265 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1031.3 267.02 m
1031.3 246.675 L
1024.25 246.675 L
1024.25 239.046 L
1031.3 239.046 L
1031.3 219.55 L
1035.59 219.55 L
1035.59 239.046 L
1042.95 239.046 L
1042.95 246.675 L
1035.59 246.675 L
1035.59 267.02 L
1031.3 267.02 L
1031.3 267.02 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1058.59 278.887 m
1058.59 203.444 L
1061.04 203.444 L
1061.04 246.675 L
1068.4 228.026 L
1073.92 228.026 L
1065.64 246.675 L
1073.92 278.887 L
1069.63 278.887 L
1064.11 255.152 L
1061.04 259.391 L
1061.04 278.887 L
1058.59 278.887 L
1058.59 278.887 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
899.128 890.914 m
899.128 898.543 L
903.728 894.305 L
906.488 886.675 L
907.714 871.417 L
906.488 855.311 L
903.728 847.682 L
899.128 844.291 L
899.128 851.073 L
900.661 851.073 L
901.888 855.311 L
903.728 862.94 L
903.728 871.417 L
903.728 879.046 L
901.888 886.675 L
900.661 890.914 L
899.128 890.914 L
899.128 890.914 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
899.128 851.073 m
899.128 844.291 L
894.835 844.291 L
893.608 851.073 L
893.608 844.291 L
890.848 844.291 L
890.848 918.04 L
893.608 918.04 L
893.608 894.305 L
894.835 898.543 L
899.128 898.543 L
899.128 890.914 L
897.901 890.914 L
896.368 890.914 L
894.835 886.675 L
893.608 879.046 L
893.608 871.417 L
893.608 862.94 L
894.835 855.311 L
896.368 851.073 L
899.128 851.073 L
899.128 851.073 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
924.581 235.656 m
924.581 243.285 L
912.008 243.285 L
913.541 235.656 L
914.768 232.265 L
917.528 223.788 L
922.127 211.921 L
922.127 203.444 L
922.127 196.662 L
919.367 196.662 L
916.301 196.662 L
914.768 203.444 L
913.541 203.444 L
913.541 196.662 L
914.768 192.424 L
916.301 192.424 L
919.367 189.033 L
922.127 192.424 L
923.354 192.424 L
924.581 196.662 L
924.581 203.444 L
924.581 208.53 L
923.354 216.159 L
919.367 223.788 L
916.301 232.265 L
916.301 235.656 L
924.581 235.656 L
924.581 235.656 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
65.012 255.152 m
65.012 235.656 L
57.9588 235.656 L
57.9588 227.179 L
65.012 227.179 L
65.012 207.682 L
68.0786 207.682 L
68.0786 227.179 L
75.1318 227.179 L
75.1318 235.656 L
68.0786 235.656 L
68.0786 255.152 L
65.012 255.152 L
65.012 255.152 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
96.2913 309.404 m
96.2913 325.51 L
109.171 325.51 L
109.171 309.404 L
96.2913 309.404 L
96.2913 309.404 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
12.5731 77.9868 m
12.5731 70.3576 L
9.81313 77.9868 L
5.51989 83.0728 L
2.75994 77.9868 L
1.22664 74.596 L
0 66.9669 L
0 58.4901 L
0 27.9735 L
2.75994 27.9735 L
2.75994 55.0993 L
2.75994 66.9669 L
3.98658 70.3576 L
7.05319 74.596 L
9.81313 70.3576 L
11.0398 66.9669 L
12.5731 55.0993 L
12.5731 27.9735 L
15.6397 27.9735 L
15.6397 77.9868 L
12.5731 77.9868 L
12.5731 77.9868 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
26.6794 101.722 m
22.6929 77.9868 L
21.1596 55.0993 L
21.1596 31.3642 L
26.6794 4.23841 L
29.746 4.23841 L
26.6794 20.3444 L
25.4528 34.755 L
23.9195 55.0993 L
25.4528 77.9868 L
29.746 101.722 L
26.6794 101.722 L
26.6794 101.722 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
41.0925 70.3576 m
41.0925 77.9868 L
38.3325 83.0728 L
35.2659 77.9868 L
34.0393 74.596 L
34.0393 63.5762 L
34.0393 31.3642 L
31.2793 31.3642 L
31.2793 27.9735 L
34.0393 27.9735 L
34.0393 11.8675 L
36.4926 7.62914 L
36.4926 27.9735 L
41.0925 27.9735 L
41.0925 31.3642 L
36.4926 31.3642 L
36.4926 66.9669 L
36.4926 70.3576 L
38.3325 70.3576 L
39.5592 70.3576 L
41.0925 70.3576 L
41.0925 70.3576 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
46.919 101.722 m
43.8524 101.722 L
48.1457 77.9868 L
49.679 55.0993 L
48.1457 34.755 L
46.919 20.3444 L
43.8524 4.23841 L
46.919 4.23841 L
50.9056 31.3642 L
52.1322 55.0993 L
50.9056 77.9868 L
46.919 101.722 L
46.919 101.722 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
393.445 4.23841 m
393.445 20.3444 L
397.738 20.3444 L
397.738 4.23841 L
393.445 4.23841 L
393.445 4.23841 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
393.445 27.9735 m
393.445 83.0728 L
397.738 83.0728 L
397.738 27.9735 L
393.445 27.9735 L
393.445 27.9735 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
407.552 101.722 m
403.258 77.9868 L
402.032 55.0993 L
403.258 31.3642 L
407.552 4.23841 L
410.311 4.23841 L
407.552 20.3444 L
406.325 34.755 L
404.485 55.0993 L
406.325 77.9868 L
410.311 101.722 L
407.552 101.722 L
407.552 101.722 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
421.965 70.3576 m
421.965 77.9868 L
418.898 83.0728 L
416.138 77.9868 L
414.911 74.596 L
414.911 63.5762 L
414.911 31.3642 L
411.845 31.3642 L
411.845 27.9735 L
414.911 27.9735 L
414.911 11.8675 L
417.671 7.62914 L
417.671 27.9735 L
421.965 27.9735 L
421.965 31.3642 L
417.671 31.3642 L
417.671 66.9669 L
418.898 70.3576 L
420.125 70.3576 L
421.965 70.3576 L
421.965 70.3576 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
427.484 102.57 m
424.724 102.57 L
429.018 77.9868 L
430.551 55.0993 L
429.018 34.755 L
427.484 20.3444 L
424.724 4.23841 L
427.484 4.23841 L
431.778 31.3642 L
433.004 55.0993 L
431.778 77.9868 L
427.484 102.57 L
427.484 102.57 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
685.999 86.4636 m
685.999 39.8411 L
683.239 39.8411 L
683.239 31.3642 L
685.999 31.3642 L
685.999 23.7351 L
685.999 15.2583 L
687.532 11.8675 L
691.826 7.62914 L
694.586 11.8675 L
693.052 20.3444 L
691.826 15.2583 L
690.599 20.3444 L
689.066 27.9735 L
689.066 31.3642 L
693.052 31.3642 L
693.052 39.8411 L
689.066 39.8411 L
689.066 86.4636 L
685.999 86.4636 L
685.999 86.4636 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
701.639 105.96 m
697.652 86.4636 L
694.586 58.4901 L
695.812 34.755 L
701.639 7.62914 L
704.705 7.62914 L
701.639 23.7351 L
698.879 39.8411 L
698.879 58.4901 L
700.412 83.0728 L
704.705 105.96 L
701.639 105.96 L
701.639 105.96 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
716.052 77.9868 m
716.052 86.4636 L
713.292 86.4636 L
710.225 83.0728 L
708.692 77.9868 L
708.692 70.3576 L
708.692 39.8411 L
705.932 39.8411 L
705.932 31.3642 L
708.692 31.3642 L
708.692 20.3444 L
711.758 11.8675 L
711.758 31.3642 L
716.052 31.3642 L
716.052 39.8411 L
711.758 39.8411 L
711.758 70.3576 L
711.758 74.596 L
713.292 77.9868 L
716.052 77.9868 L
716.052 77.9868 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
720.345 105.96 m
718.505 105.96 L
723.105 83.0728 L
724.332 58.4901 L
723.105 39.8411 L
721.572 23.7351 L
718.505 7.62914 L
720.345 7.62914 L
725.865 34.755 L
727.398 58.4901 L
725.865 86.4636 L
720.345 105.96 L
720.345 105.96 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1191.99 90.702 m
1199.04 63.5762 L
1193.22 34.755 L
1197.51 34.755 L
1200.27 47.4702 L
1202.11 55.0993 L
1203.33 47.4702 L
1206.09 34.755 L
1210.39 34.755 L
1203.33 63.5762 L
1210.39 90.702 L
1206.09 90.702 L
1203.33 74.596 L
1202.11 66.9669 L
1196.28 90.702 L
1191.99 90.702 L
1191.99 90.702 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1220.51 113.589 m
1214.68 90.702 L
1213.15 63.5762 L
1214.68 39.8411 L
1220.51 16.106 L
1222.96 16.106 L
1218.97 27.9735 L
1217.75 43.2318 L
1217.75 63.5762 L
1218.97 86.4636 L
1222.96 113.589 L
1220.51 113.589 L
1220.51 113.589 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1233.39 83.0728 m
1234.61 90.702 L
1231.55 90.702 L
1228.79 90.702 L
1227.56 86.4636 L
1227.56 74.596 L
1227.56 43.2318 L
1224.8 43.2318 L
1224.8 34.755 L
1227.56 34.755 L
1227.56 23.7351 L
1230.32 16.106 L
1230.32 34.755 L
1233.39 34.755 L
1233.39 43.2318 L
1230.32 43.2318 L
1230.32 74.596 L
1230.32 78.8344 L
1231.55 83.0728 L
1233.39 83.0728 L
1233.39 83.0728 L
Q
f
q
0.3921 0 0 -0.1425 46.63 493.4 cm
1238.6 113.589 m
1235.84 113.589 L
1240.44 86.4636 L
1241.67 63.5762 L
1241.67 43.2318 L
1240.44 31.3642 L
1235.84 16.106 L
1238.6 16.106 L
1244.43 39.8411 L
1245.96 63.5762 L
1243.2 90.702 L
1238.6 113.589 L
1238.6 113.589 L
Q
f
q
0.3921 0 0 -0.1425 28.9 493.4 cm
623.44 486.57 m
623.44 498.437 L
632.027 498.437 L
632.027 486.57 L
623.44 486.57 L
623.44 486.57 L
Q
f
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
