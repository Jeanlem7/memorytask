function fdback = feedback(x,y) % permet de verifier la réponse du participant et de l'informer de l'exactitude de sa réponse 
 
for ii = x % x:reponse du participant
    for jj = y % y: reponse atendue
if ii == jj 
    imshow(imread('valide','jpg'));
elseif ii~=jj imshow(imread('faux','jpg'));
else disp('commande entrée invalide ');
end
    end
end
