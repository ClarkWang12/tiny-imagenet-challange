function [im, label] = getBatch(imdb, batch)
%GETBATCH  Get a batch of training data
%   [IM, LABEL] = The GETBATCH(IMDB, BATCH) extracts the images IM
%   and labels LABEL from IMDB according to the list of images
%   BATCH.

names = imdb.images.name(:,:,:,batch) ;

im = load(names) ;
label = imdb.images.label(:,:,:,batch) ;