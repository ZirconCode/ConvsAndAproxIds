% The Fejer Kernel
% Author: Simon Gruening

figure('position',[0,0,400,400])
hold on;

% ---
F = @(t,N) (1./(1+N)).*((sin(pi.*(N+1).*t)./sin(pi.*t))).^2;
I = -0.5:0.001:0.5;

for n=1:7
    plot(I,F(I,n));
end
% ---

set(gcf,'PaperPositionMode','auto','PaperSize',[5,5])
saveas(gcf,'fejerkernel.pdf')