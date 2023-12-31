% Alexander Romero-Barrionuevo

% Load the database for all photos
loaded_Image=mockload();

% Use random to select image that will be used to search for similarities.
random_Index=round(400*rand(1,1));          
random_Image=loaded_Image(:,random_Index);

% Load the rest of the images into a single collumn vector
rest_of_the_images=loaded_Image(:,[1:random_Index-1 random_Index+1:end]);         
image_Signature=20;

% Calculate mean of images for eigenvectors
white_Image=uint8(ones(1,size(rest_of_the_images,2)));
mean_value=uint8(mean(rest_of_the_images,2));                
mean_Removed=rest_of_the_images-uint8(single(mean_value)*single(white_Image)); 

% Create matrix with row containing signature of each image
L=single(mean_Removed)'*single(mean_Removed);
[V,D]=eig(L);
V=single(mean_Removed)*V;
V=V(:,end:-1:end-(image_Signature-1)); 

% Create difference in original signature photo compared to all images
all_image_Signature=zeros(size(rest_of_the_images,2),image_Signature);
for i=1:size(rest_of_the_images,2)
    all_image_Signature(i,:)=single(mean_Removed(:,i))'*V;  
end

% Create subplot for the original face.
subplot(121);
imshow(reshape(random_Image,112,92));
title('Looking for this Face','FontWeight','bold','Fontsize',16,'color','red');

% Create second subplot for the picture match.
subplot(122);
p=random_Image-mean_value;
s=single(p)'*V;
z=[];

% Create a for loop to cycle though all photos until a match is found.
for i=1:size(rest_of_the_images,2)
    z=[z,norm(all_image_Signature(i,:)-s,2)];
    if(rem(i,20)==0),imshow(reshape(rest_of_the_images(:,i),112,92))
        end
    drawnow;
end

% Replace the subplot image for the image match
[a,i]=min(z);
subplot(122);
imshow(reshape(rest_of_the_images(:,i),112,92));
title('Recognition Completed','FontWeight','bold','Fontsize',16,'color','red');