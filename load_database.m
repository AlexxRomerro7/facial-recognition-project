function output_value = load_database();

% Persistent so variable retians value in memory between calls
% Matlab essentially creates dedicated memory for variables
persistent loaded;
persistent numeric_Image;

% Once we load the images once in MatLab, they will forever be stored
% Use if boolean statement to determine if loaded variable is empty
if(isempty(loaded))
    % We have a total of 40 folders of pixel size(92 X 112), total 10304 pixels
    all_Images = zeros(10304,40);

    % Run a for loop to concatenate each folder to MATLAB cd
    for folders = 1:40
        cd(strcat('Dataset\s',num2str(folders)));
        % Nested for loop to add pictures image container
        for images = 1:10
            % Read each image within the folder.
            image_Container = imread(strcat(num2str(images),'.pgm'));
            % Resize the images for display & quality purposes and move
            % them into a single collumn matrix
            all_Images(:,(folders-1)*10+images) = reshape(image_Container,size(image_Container,1)*size(image_Container,2),1);
        end
        display('Loading Image Database');
        cd ..
    end
    % Convert to 8 unsigned integers to save memory space
    numeric_Image = uint8(all_Images);
end
% Set loaded variable to 1 to avoid any errors for if boolean statement.
loaded = 1;
output_value = numeric_Image;