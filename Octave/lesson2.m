>> A = rand (4,3)
A =

   0.677188   0.184946   0.916575
   0.889327   0.120186   0.920084
   0.944539   0.495613   0.523281
   0.973714   0.911966   0.047015

>> B = rand(3,4)
B =

   2.2472e-01   4.7333e-01   2.0415e-01   3.7574e-01
   5.5691e-01   5.1645e-01   9.7970e-01   8.0460e-01
   8.0662e-03   2.8234e-01   1.3812e-01   9.4264e-01

>> A1 = (1:3, 1:3)
error: parse error:

  syntax error

>>> A1 = (1:3, 1:3)
             ^
>> A1 = A(1:3, 1:3)
A1 =

   0.6772   0.1849   0.9166
   0.8893   0.1202   0.9201
   0.9445   0.4956   0.5233

>> B1 = B(1:3, 1:3)
B1 =

   2.2472e-01   4.7333e-01   2.0415e-01
   5.5691e-01   5.1645e-01   9.7970e-01
   8.0662e-03   2.8234e-01   1.3812e-01

>> AB = A1*B1
AB =

   0.2626   0.6748   0.4460
   0.2742   0.7428   0.4264
   0.4925   0.8508   0.7507

>> det(AB)
ans = -5.1536e-03
>> A_3 = rand(5,3)
A_3 =

   0.479180   0.968962   0.189081
   0.229776   0.728730   0.286180
   0.537140   0.903417   0.062982
   0.402495   0.837716   0.269967
   0.830887   0.834106   0.407520

>> B_3 = rand(3,2)
B_3 =

   0.719823   0.688822
   0.867893   0.059351
   0.334209   0.151430

>> I
ans =  0 + 1i
>> yey
error: 'yey' undefined near line 1, column 1
>> eye
ans = 1
>> C = [A_3, zeros(5,2); B_3', eye]
error: horizontal dimensions mismatch (2x3 vs 1x1)
>> C = [A_3, zeros(5,2); B_3', eye(2,2)]
C =

   0.4792   0.9690   0.1891        0        0
   0.2298   0.7287   0.2862        0        0
   0.5371   0.9034   0.0630        0        0
   0.4025   0.8377   0.2700        0        0
   0.8309   0.8341   0.4075        0        0
   0.7198   0.8679   0.3342   1.0000        0
   0.6888   0.0594   0.1514        0   1.0000

>>
>> A_4 = rand(6,3)
A_4 =

   0.7628   0.2428   0.5765
   0.1738   0.6599   0.1441
   0.6394   0.6129   0.5313
   0.9391   0.4109   0.3792
   0.9624   0.5946   0.6190
   0.9562   0.7592   0.6811

>> A_44 = A_4(1:3, 1:3)
A_44 =

   0.7628   0.2428   0.5765
   0.1738   0.6599   0.1441
   0.6394   0.6129   0.5313

>> det(A_44)
ans = 0.018195
>> inv(A_44)
ans =

   1.4416e+01   1.2330e+01  -1.8988e+01
  -1.2030e-02   2.0151e+00  -5.3338e-01
  -1.7335e+01  -1.7163e+01   2.5349e+01

>> AA = inv(A_44)
AA =

   1.4416e+01   1.2330e+01  -1.8988e+01
  -1.2030e-02   2.0151e+00  -5.3338e-01
  -1.7335e+01  -1.7163e+01   2.5349e+01

>> AA * eye(3,3)
ans =

   1.4416e+01   1.2330e+01  -1.8988e+01
  -1.2030e-02   2.0151e+00  -5.3338e-01
  -1.7335e+01  -1.7163e+01   2.5349e+01

>> A_44 * AA
ans =

   1.0000e+00  -1.5619e-15   1.9506e-15
  -5.6992e-17   1.0000e+00   9.3697e-16
   2.8832e-16  -1.2582e-15   1.0000e+00

>> A_44 * AA
ans =

   1.0000e+00  -1.5619e-15   1.9506e-15
  -5.6992e-17   1.0000e+00   9.3697e-16
   2.8832e-16  -1.2582e-15   1.0000e+00

>> A = rand(6,3)
A =

   3.0371e-01   3.3961e-02   3.1587e-01
   3.6566e-01   7.2698e-01   8.8034e-02
   4.1077e-01   3.6578e-01   9.8895e-01
   5.9324e-01   3.7451e-01   3.4949e-01
   3.8554e-01   5.9139e-03   3.5249e-01
   7.3274e-01   9.2760e-01   8.6443e-01

>> AA = A(1:3, 1:3)
AA =

   0.303709   0.033961   0.315868
   0.365664   0.726982   0.088034
   0.410772   0.365785   0.988946

>> det(AA)
ans = 0.1454
>> AA_1 = inv(AA)
AA_1 =

   4.7218   0.5635  -1.5583
  -2.2378   1.1730   0.6103
  -1.1336  -0.6679   1.4327

>> AA * AA_1
ans =

   1.0000e+00   6.0386e-17  -1.5293e-16
   3.0413e-16   1.0000e+00  -2.0223e-16
   3.2820e-16   1.6747e-16   1.0000e+00

>> ans = AA * AA_1
ans =

   1.0000e+00   6.0386e-17  -1.5293e-16
   3.0413e-16   1.0000e+00  -2.0223e-16
   3.2820e-16   1.6747e-16   1.0000e+00

>> ans>eye(3,3)
ans =

  0  1  0
  1  0  0
  1  1  0

>> M_6 = rand(20,20)
M_6 =

 Columns 1 through 13:

   8.4496e-01   6.9011e-01   8.7074e-02   7.6023e-01   2.6744e-01   4.8505e-01   2.0191e-01   4.3571e-01   6.7012e-02   4.0710e-01   3.1649e-01   3.6565e-01   3.7668e-01
   7.6725e-01   7.4848e-01   7.2220e-01   2.4419e-01   9.4644e-01   2.5115e-01   1.6958e-01   6.2765e-02   3.9024e-02   5.8320e-01   3.3534e-01   5.9778e-01   9.1800e-02
   9.6499e-01   8.7917e-01   1.6384e-01   6.6827e-02   8.2998e-01   5.2375e-01   2.9537e-01   7.8824e-01   5.5153e-01   1.4838e-01   4.8186e-01   4.2606e-01   8.1453e-01
   3.6582e-01   8.0543e-01   1.1489e-01   2.0966e-01   3.9542e-01   3.2404e-01   5.7160e-01   7.2164e-01   7.9803e-02   6.5802e-01   7.4065e-01   1.3719e-01   3.0054e-01
   2.6913e-01   2.2316e-01   2.2571e-01   5.9169e-01   6.7551e-01   2.0518e-01   2.2253e-01   8.5569e-01   1.3507e-01   2.3331e-02   5.5795e-01   1.7418e-01   4.8265e-01
   9.4131e-01   8.4495e-01   4.4864e-01   1.4406e-01   9.0648e-01   3.4135e-01   2.3013e-02   3.7915e-01   4.5064e-01   5.9401e-01   3.1315e-01   7.5968e-01   7.9396e-01
   8.3305e-01   1.3492e-01   3.1142e-01   8.1363e-01   1.8557e-02   4.4848e-01   8.5772e-01   4.8904e-01   6.9046e-01   1.7166e-01   8.7455e-01   6.0479e-01   1.6210e-01
   9.9970e-01   1.3364e-01   8.1327e-01   7.7745e-01   3.7677e-01   5.8291e-01   5.3494e-01   2.0468e-01   7.7910e-01   8.6291e-01   1.3875e-01   7.6889e-02   8.1833e-01
   4.9827e-01   3.2065e-01   9.9942e-01   4.3991e-01   3.5301e-01   8.0486e-01   1.6315e-01   3.0150e-01   6.6278e-01   4.7291e-01   1.9467e-01   4.3315e-01   3.1355e-01
   7.2348e-01   9.1907e-01   7.6104e-01   6.6578e-01   1.6342e-02   5.1521e-03   8.8429e-01   7.3127e-01   6.3990e-01   8.8807e-01   4.8930e-01   5.4957e-01   6.0792e-01
   9.4427e-01   8.1964e-01   5.8650e-01   8.4690e-01   6.0923e-02   1.0140e-01   1.8822e-01   9.3041e-01   2.7149e-01   9.0872e-01   4.3941e-01   8.4786e-01   6.7746e-01
   9.2840e-01   9.7673e-01   1.1192e-01   7.2588e-01   2.3003e-01   2.7110e-01   8.2282e-01   1.7066e-01   7.8476e-01   7.0695e-01   1.3841e-02   6.6013e-01   8.0849e-01
   8.3594e-01   2.5843e-01   4.2395e-01   4.2253e-01   9.0596e-01   9.5692e-01   3.4203e-01   3.2662e-01   1.2060e-01   6.7841e-01   8.5372e-01   7.1436e-01   6.0893e-01
   9.0130e-01   1.0113e-01   4.7943e-02   9.9403e-01   8.9190e-01   7.3889e-01   9.2553e-01   9.6145e-01   2.4418e-01   1.6400e-01   1.6308e-01   2.1608e-01   1.1346e-02
   5.6236e-01   5.6055e-01   2.5048e-01   6.7167e-01   3.1567e-01   9.9598e-02   5.8927e-01   8.1306e-01   4.9462e-01   7.7722e-01   1.7476e-01   1.6673e-01   7.2384e-01
   9.3499e-01   5.7500e-01   5.6844e-01   1.9913e-01   1.7019e-01   7.3681e-01   5.6495e-01   1.8404e-01   8.6472e-01   9.5069e-01   4.5603e-01   5.5411e-02   4.0438e-01
   6.9462e-01   9.8762e-01   1.9685e-01   4.9441e-01   8.2355e-01   8.7111e-01   4.3823e-01   6.3944e-01   2.0672e-01   5.9668e-01   2.0654e-01   3.5403e-01   3.4954e-01
   8.7188e-01   8.2010e-01   2.1561e-01   7.6408e-01   4.9338e-01   4.6269e-01   7.9902e-01   2.0062e-01   4.3297e-01   7.4139e-01   2.6165e-01   4.0333e-01   7.6155e-01
   3.2098e-01   4.0994e-01   5.9397e-02   5.4780e-01   4.1644e-01   6.6951e-01   1.3356e-01   4.5705e-01   1.3224e-01   8.7640e-01   9.4781e-01   1.4096e-01   4.0377e-01
   7.1077e-01   5.4510e-01   6.6545e-01   8.8079e-01   9.2344e-01   4.6152e-02   9.1823e-01   1.0636e-01   6.6733e-01   1.6267e-01   7.6517e-01   3.7017e-01   6.5674e-03

 Columns 14 through 20:

   6.1928e-01   3.6373e-02   6.9215e-01   8.9487e-01   5.6108e-01   3.3520e-01   6.3328e-01
   3.9111e-01   6.0857e-01   5.1645e-01   9.8823e-01   4.7491e-01   7.6135e-01   6.2899e-01
   1.3725e-01   6.3568e-01   6.9539e-01   7.3964e-02   6.2786e-01   9.3084e-01   5.2929e-01
   3.2611e-01   6.4791e-01   8.1784e-01   2.5611e-01   9.4998e-01   9.5512e-01   7.6627e-01
   4.3192e-01   4.0931e-01   2.8544e-01   6.7109e-01   5.3052e-01   1.9676e-01   4.1307e-01
   5.9849e-01   4.2358e-01   9.0932e-01   8.0501e-01   2.5280e-01   4.4047e-01   5.5880e-01
   4.5920e-01   8.7397e-01   2.3988e-02   7.9472e-01   6.3629e-01   7.3000e-01   6.6380e-01
   5.6014e-01   7.0899e-01   7.5724e-01   9.1818e-02   9.6582e-01   7.1394e-01   3.7224e-01
   5.0049e-01   1.5110e-01   3.7180e-01   9.1877e-01   9.1259e-01   7.0670e-01   8.6298e-01
   3.5055e-01   7.1328e-01   9.7412e-01   2.6466e-01   7.6608e-01   8.9494e-01   7.7842e-01
   5.3152e-01   4.6398e-01   8.6669e-01   1.1339e-02   5.2147e-03   1.9622e-01   9.0151e-01
   5.1174e-02   1.2696e-01   9.5300e-01   8.6481e-02   2.4549e-02   2.4090e-01   1.0384e-01
   3.3591e-01   6.8249e-01   7.9478e-02   2.0572e-01   2.0208e-01   4.4140e-01   7.6499e-01
   2.6415e-02   9.5870e-02   1.6313e-01   4.0761e-01   9.7731e-01   4.1869e-02   1.9355e-01
   2.6066e-01   4.3942e-01   1.4484e-01   7.2690e-01   3.7490e-01   3.4007e-03   1.3356e-01
   7.3929e-01   1.5955e-02   5.3870e-01   7.4020e-01   3.7683e-02   9.0821e-01   8.1356e-01
   7.9981e-01   2.3020e-01   2.6115e-01   7.5684e-01   5.7294e-01   9.9877e-01   3.3303e-01
   2.0917e-01   7.7062e-01   2.4218e-01   1.5451e-02   7.8974e-01   2.3235e-01   1.1717e-01
   6.6561e-01   4.3712e-01   2.5260e-01   9.1264e-01   1.7308e-02   9.8219e-01   4.2663e-01
   7.3600e-01   6.3865e-01   2.5722e-01   2.5100e-01   7.6130e-01   6.6975e-01   9.7114e-01

>> eig(M_6)
ans =

   10.0193 +       0i
   -1.1909 +       0i
   -1.0219 +  0.2779i
   -1.0219 -  0.2779i
   -0.2993 +  0.8565i
   -0.2993 -  0.8565i
   -0.5046 +  0.6001i
   -0.5046 -  0.6001i
    1.0119 +  0.6255i
    1.0119 -  0.6255i
    0.1179 +  0.5828i
    0.1179 -  0.5828i
   -0.0065 +  0.3336i
   -0.0065 -  0.3336i
    0.9413 +  0.3177i
    0.9413 -  0.3177i
    0.9333 +       0i
    0.5997 +       0i
    0.4855 +  0.2325i
    0.4855 -  0.2325i

>> b = sort(eig(M_6))
b =

   -0.0065 -  0.3336i
   -0.0065 +  0.3336i
    0.4855 -  0.2325i
    0.4855 +  0.2325i
    0.1179 -  0.5828i
    0.1179 +  0.5828i
    0.5997 +       0i
   -0.5046 -  0.6001i
   -0.5046 +  0.6001i
   -0.2993 -  0.8565i
   -0.2993 +  0.8565i
    0.9333 +       0i
    0.9413 -  0.3177i
    0.9413 +  0.3177i
   -1.0219 -  0.2779i
   -1.0219 +  0.2779i
    1.0119 -  0.6255i
    1.0119 +  0.6255i
   -1.1909 +       0i
   10.0193 +       0i

>> diag?
error: parse error:

  syntax error

>>> diag?
        ^
>> diag ?
error: Invalid call to diag.  Correct usage is:

 -- M = diag (V)
 -- M = diag (V, K)
 -- M = diag (V, M, N)
 -- V = diag (M)
 -- V = diag (M, K)

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at https://www.octave.org and via the help@octave.org
mailing list.
>> n = 5
n = 5
>> A_8 = diag(n,n)
A_8 =

   0   0   0   0   0   5
   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0

>> A_8 = zeros(n,n)
A_8 =

   0   0   0   0   0
   0   0   0   0   0
   0   0   0   0   0
   0   0   0   0   0
   0   0   0   0   0

>> -2 = diag(A_8)
error: parse error:

  invalid left hand side of assignment

>>> -2 = diag(A_8)
       ^
>> x = -2
x = -2
>> diag(A_8) = x
error: diag(0): subscripts must be either integers 1 to (2^63)-1 or logicals
>> x(1:n) = -2
x =

  -2  -2  -2  -2  -2

>> diag(A_8) = x
error: diag(0): subscripts must be either integers 1 to (2^63)-1 or logicals
>> A_8 = diag(x)
A_8 =

Diagonal Matrix

  -2   0   0   0   0
   0  -2   0   0   0
   0   0  -2   0   0
   0   0   0  -2   0
   0   0   0   0  -2

>> A_8 = diag(x)
A_8 =

Diagonal Matrix

  -2   0   0   0   0
   0  -2   0   0   0
   0   0  -2   0   0
   0   0   0  -2   0
   0   0   0   0  -2

>> y(1:n-1) = 1
y =

   1   1   1   1

>> A_8 = diag(x,y)
A_8 =

   0  -2   0   0   0   0
   0   0  -2   0   0   0
   0   0   0  -2   0   0
   0   0   0   0  -2   0
   0   0   0   0   0  -2
   0   0   0   0   0   0

>> A_8 = diag(x)
A_8 =

Diagonal Matrix

  -2   0   0   0   0
   0  -2   0   0   0
   0   0  -2   0   0
   0   0   0  -2   0
   0   0   0   0  -2

>> ANS = A_8 + diag(y,1)
ANS =

  -2   1   0   0   0
   0  -2   1   0   0
   0   0  -2   1   0
   0   0   0  -2   1
   0   0   0   0  -2

>> ANS = A_8 + diag(y,1) + diag(y,-1) + diag(1,n) + diag(1, -n)
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 6x6)
>> ANS = A_8 + diag(y,1) + diag(y,-1) + diag(y, n)
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 9x9)
>> ANS = A_8 + diag(y,1) + diag(1, -1)
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 2x2)
>> ANS = A_8 + diag(y,1)
ANS =

  -2   1   0   0   0
   0  -2   1   0   0
   0   0  -2   1   0
   0   0   0  -2   1
   0   0   0   0  -2

>> ANS = ANS + diag(y,-1)
ANS =

  -2   1   0   0   0
   1  -2   1   0   0
   0   1  -2   1   0
   0   0   1  -2   1
   0   0   0   1  -2

>> ANS = A_8 + diag(y,1) + diag(y,-1) + diag(1,n-1) + diag(1, -n-1)
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 7x7)
>> C = diag(x) + diag(1,1) + diag(1,-1) + diag(1,n-1) + diag(1, -n-1)
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 2x2)
>> C = diag(x) + diag(y,1) + diag(y,-1) + diag(1,n-1) + diag(1, -n-1)
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 7x7)
>> C = diag(x) + diag(y,1) + diag(y,-1) + diag(1,n-1) + diag(1, -(n-1))
C =

  -2   1   0   0   1
   1  -2   1   0   0
   0   1  -2   1   0
   0   0   1  -2   1
   1   0   0   1  -2

>> n = 10;
>> C = diag(x) + diag(y,1) + diag(y,-1) + diag(1,n-1) + diag(1, -(n-1))
error: operator +: nonconformant arguments (op1 is 5x5, op2 is 10x10)
>> C = diag(-2)
C = -2
>> n = 10; x(1:n) = -2; y(1:n-1) = 1;
>> C = diag(x) + diag(y,1) + diag(y,-1) + diag(1,n-1) + diag(1, -n-1)
error: operator +: nonconformant arguments (op1 is 10x10, op2 is 12x12)
>> C = diag(x) + diag(y,1) + diag(y,-1) + diag(1,n-1) + diag(1, -(n-1))
C =

  -2   1   0   0   0   0   0   0   0   1
   1  -2   1   0   0   0   0   0   0   0
   0   1  -2   1   0   0   0   0   0   0
   0   0   1  -2   1   0   0   0   0   0
   0   0   0   1  -2   1   0   0   0   0
   0   0   0   0   1  -2   1   0   0   0
   0   0   0   0   0   1  -2   1   0   0
   0   0   0   0   0   0   1  -2   1   0
   0   0   0   0   0   0   0   1  -2   1
   1   0   0   0   0   0   0   0   1  -2

>> M_9 = rand(8,8)
M_9 =

   0.415495   0.785884   0.231230   0.706149   0.396002   0.857769   0.397163   0.533991
   0.848088   0.316165   0.692059   0.510201   0.085482   0.633571   0.947494   0.875932
   0.966741   0.625674   0.614719   0.392927   0.382787   0.747877   0.056480   0.816594
   0.066285   0.991419   0.839403   0.463580   0.228764   0.953089   0.022969   0.896041
   0.970558   0.448160   0.163148   0.123666   0.764087   0.522963   0.593427   0.827172
   0.776104   0.061701   0.129379   0.881555   0.748634   0.093644   0.432773   0.012345
   0.906945   0.522778   0.775675   0.691348   0.927765   0.944626   0.151033   0.693989
   0.631133   0.815936   0.172813   0.768394   0.422171   0.844885   0.762324   0.637305

>> row = max(M_9)
row =

   0.9706   0.9914   0.8394   0.8816   0.9278   0.9531   0.9475   0.8960

>> col = max(M_9)
col =

   0.9706   0.9914   0.8394   0.8816   0.9278   0.9531   0.9475   0.8960

>> row = max(M_9')
row =

   0.8578   0.9475   0.9667   0.9914   0.9706   0.8816   0.9446   0.8449

>> res = max(max(M_9))
res = 0.9914


