clearvars variables
close all
clc
%% first subject: ZAB, sub_id = 1
load('resultsZAB_SR.mat')
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
sentence_id = [];
word_id = [];
betta = [];
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;   
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw;
    word_id = cat(1, word_id,WIDs' );
end
sub_id = ones([Nr, 1]);
sub_name = repmat("ZAB", Nr, 1);
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% second subject: ZDM, sub_id = 2
load('resultsZDM_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*2);
sub_name = cat(1, sub_name, repmat("ZDM", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% third subject: ZDN, sub_id = 3
% load('resultsZDN_SR');
% [~,Ns] = size(sentenceData); %number of sentences
% Nr = 0; %number of row
% for i = 1:Ns % This subject has only seen first 150 sentences
%     [~, Nw] = size(sentenceData(i).word) ;
%     Nr = Nr + Nw;
%     Nws = ones([Nw, 1]) .* i; %number of words current sentence
%     sentence_id = cat(1, sentence_id, Nws);
%     WIDs = 1:Nw; % IDs of words in current sentence
%     word_id = cat(1, word_id, WIDs');
% end
% sub_id = cat(1, sub_id, ones([Nr, 1]).*3);
% sub_name = cat(1, sub_name, repmat("ZDN", Nr, 1));
% for i = 1:150 % This subject has only seen first 150 sentences
%     [~, Nw] = size(sentenceData(i).word);
%     for j = 1:Nw
%         bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
%         if isempty(bettaSum)
%             bettaSum = ones([1, 105])*(NaN);
%             betta = cat(1, betta, bettaSum);
%         else
%         betta = cat(1, betta, bettaSum);
%         end
%     end
% end
% betta = cat(1, betta, NaN(4535, 105));
% clear sentenceData
%% fourth subject: ZGW, sub_id = 4
load('resultsZGW_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*4);
sub_name = cat(1, sub_name, repmat("ZGW", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% fifth subject: ZJM, sub_id = 5
load('resultsZJM_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*5);
sub_name = cat(1, sub_name, repmat("ZJM", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% sixth subject: ZJN, sub_id = 6
load('resultsZJN_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*6);
sub_name = cat(1, sub_name, repmat("ZJN", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% seventh subject: ZJN, sub_id = 7
load('resultsZJS_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*7);
sub_name = cat(1, sub_name, repmat("ZJS", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% eighth subject: ZKB, sub_id = 8
load('resultsZKB_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*8);
sub_name = cat(1, sub_name, repmat("ZKB", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% ninth subject: ZKH, sub_id = 9
load('resultsZKH_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*9);
sub_name = cat(1, sub_name, repmat("ZKH", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% tenth subject: ZKW, sub_id = 10
load('resultsZKW_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*10);
sub_name = cat(1, sub_name, repmat("ZKW", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% eleventh subject: ZMG, sub_id = 11
load('resultsZMG_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*11);
sub_name = cat(1, sub_name, repmat("ZMG", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
%% eleventh subject: ZPH, sub_id = 12
load('resultsZPH_SR');
[~,Ns] = size(sentenceData); %number of sentences
Nr = 0; %number of row
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word) ;
    Nr = Nr + Nw;
    Nws = ones([Nw, 1]) .* i; %number of words current sentence
    sentence_id = cat(1, sentence_id, Nws);
    WIDs = 1:Nw; % IDs of words in current sentence
    word_id = cat(1, word_id, WIDs' );
end
sub_id = cat(1, sub_id, ones([Nr, 1]).*12);
sub_name = cat(1, sub_name, repmat("ZPH", Nr, 1));
for i = 1:Ns
    [~, Nw] = size(sentenceData(i).word);
    for j = 1:Nw
        bettaSum = sentenceData(i).word(j).TRT_b1 + sentenceData(i).word(j).TRT_b2;
        if isempty(bettaSum)
            bettaSum = ones([1, 105])*(NaN);
            betta = cat(1, betta, bettaSum);
        else
        betta = cat(1, betta, bettaSum);
        end
    end
end
clear sentenceData
dataTable = table(sub_id, sub_name, sentence_id, word_id, betta);
writetable(dataTable, 'betta_detailed.csv');
dataTables = removevars(dataTable, {'sub_name', 'sub_id'});
dataTableAverage = groupsummary(dataTables, "sentence_id", "mean");
writetable(dataTableAverage, 'betta_behrooz_s.csv');

