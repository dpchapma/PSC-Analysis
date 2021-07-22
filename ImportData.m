function [Data] = ImportData(Folders)
%Import Data imports event statistics from template search in pclamp
%   This function reads in excel files with event statistics in an excel 
%   file 
%   Inputs:
%       Folders =  structure with path to folders gotten from the UIGet 
%                  dir in runscript
%   Outputs:
%       Data = double that mirros the excel file with each event as a row
%              and each metric as a column 
        
for i = 1:length(Folders)
    FileNames{i,1} = dir(strcat(Folders(i).folder,'/',Folders(i).name));
    
    if length(FileNames{i,1})>1
        % Skip this file if it starts with dot underline.
        continue; % Jump to the bottom of the loop.
    else
        Data{i,1} = readtable(strcat(FileNames{i,1}.folder,'/',FileNames{i,1}.name));
    end
    
end
end

