d = 2;
t = sqrt(d);

N = 1000;
ntrials = 1000;

lambda2 = zeros(ntrials,1);

for trial = 1:ntrials
    A = gnp(N,d/N);
    H = bh(A,t);

    lam = eigs(H,4,'smallestreal');
    lam = sort(real(lam));

    lambda2(trial) = lam(2);
end

fprintf('Probability of second negative eigenvalue: %.4f\n', ...
    mean(lambda2 < 0));

figure;
histogram(lambda2,50,'Normalization','pdf');
xline(0,'k--','LineWidth',2);
xlabel('\lambda_2(BH(\sqrt{2}))');
ylabel('Density');
title(sprintf('N = %d, d = 2',N));
