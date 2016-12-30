% Arbitrary Approximate Identity on R
% First Example is the Poisson Kernel
% Author: Simon Gruening

figure('position',[0,0,400,400])
hold on;

% ---
n = 1;
k = @(x) (pi .* (x.^2 + 1)).^-1; % poisson
%k = @(x) sqrt(1-x.^2)./pi; % half circle

ke = @(x,e) e.^-n .* k(e.^-1 .* x);

I = -10:0.01:10;

hold on;
for ep = 1:1:10;
    plot(I, ke(I,ep));
end
% ---

set(gcf,'PaperPositionMode','auto','PaperSize',[5,5])
saveas(gcf,'poissonkernel.pdf')