function [] = saveFig( figHandle, fileName, fileTypeOrig,...
                       figurePath1, figurePath2, margin )

%save fig (or chosen filetype)
figTmp=sprintf('%s%s.%s', figurePath1, fileName, fileTypeOrig);
saveas(figHandle, figTmp);

%save pdf
figTmp=sprintf('%s%s.pdf', figurePath2, fileName);
print(figHandle, figTmp, '-dpdf');

%crop pdf
cmdTmp=sprintf('pdfcrop %s %s --margins "%i"', figTmp, figTmp, margin);
system(cmdTmp);

end

