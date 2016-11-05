

n = 1;
k = @(x) (pi .* (x.^2 + 1)).^-1; % poisson
%k = @(x) sqrt(1-x.^2)./pi; % half circle

ke = @(x,e) e.^-n .* k(e.^-1 .* x);

I = -10:0.01:10;

hold on;
for ep = 1:1:10;
    plot(I, ke(I,ep));
end


