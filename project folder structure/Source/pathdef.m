%% Script: add root folder to Matlab Search Path
% Get filepath
pathCaller = fileparts( mfilename('fullpath') );

% Split path into components
cellPathParts = regexp(pathCaller,'\','split');

% Obtain path to root folder by removing last component of path
pathRoot = regexprep(pathCaller, ['\\',cellPathParts{end}], '');

% Add root folder to search path
addpath( genpath(pathRoot) );