ò
·
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8 Þ	
t
fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_1/kernel
m
fc_1/kernel/Read/ReadVariableOpReadVariableOpfc_1/kernel* 
_output_shapes
:
*
dtype0
k
	fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_1/bias
d
fc_1/bias/Read/ReadVariableOpReadVariableOp	fc_1/bias*
_output_shapes	
:*
dtype0
t
fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_2/kernel
m
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel* 
_output_shapes
:
*
dtype0
k
	fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_2/bias
d
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes	
:*
dtype0
t
fc_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_3/kernel
m
fc_3/kernel/Read/ReadVariableOpReadVariableOpfc_3/kernel* 
_output_shapes
:
*
dtype0
k
	fc_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_3/bias
d
fc_3/bias/Read/ReadVariableOpReadVariableOp	fc_3/bias*
_output_shapes	
:*
dtype0
t
fc_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_4/kernel
m
fc_4/kernel/Read/ReadVariableOpReadVariableOpfc_4/kernel* 
_output_shapes
:
*
dtype0
k
	fc_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_4/bias
d
fc_4/bias/Read/ReadVariableOpReadVariableOp	fc_4/bias*
_output_shapes	
:*
dtype0
t
fc_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_5/kernel
m
fc_5/kernel/Read/ReadVariableOpReadVariableOpfc_5/kernel* 
_output_shapes
:
*
dtype0
k
	fc_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_5/bias
d
fc_5/bias/Read/ReadVariableOpReadVariableOp	fc_5/bias*
_output_shapes	
:*
dtype0
t
fc_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_6/kernel
m
fc_6/kernel/Read/ReadVariableOpReadVariableOpfc_6/kernel* 
_output_shapes
:
*
dtype0
k
	fc_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_6/bias
d
fc_6/bias/Read/ReadVariableOpReadVariableOp	fc_6/bias*
_output_shapes	
:*
dtype0
t
fc_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_7/kernel
m
fc_7/kernel/Read/ReadVariableOpReadVariableOpfc_7/kernel* 
_output_shapes
:
*
dtype0
k
	fc_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_7/bias
d
fc_7/bias/Read/ReadVariableOpReadVariableOp	fc_7/bias*
_output_shapes	
:*
dtype0
t
fc_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_8/kernel
m
fc_8/kernel/Read/ReadVariableOpReadVariableOpfc_8/kernel* 
_output_shapes
:
*
dtype0
k
	fc_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_8/bias
d
fc_8/bias/Read/ReadVariableOpReadVariableOp	fc_8/bias*
_output_shapes	
:*
dtype0
s
fc_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namefc_9/kernel
l
fc_9/kernel/Read/ReadVariableOpReadVariableOpfc_9/kernel*
_output_shapes
:	@*
dtype0
j
	fc_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	fc_9/bias
c
fc_9/bias/Read/ReadVariableOpReadVariableOp	fc_9/bias*
_output_shapes
:@*
dtype0
t
fc_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namefc_10/kernel
m
 fc_10/kernel/Read/ReadVariableOpReadVariableOpfc_10/kernel*
_output_shapes

:@ *
dtype0
l

fc_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
fc_10/bias
e
fc_10/bias/Read/ReadVariableOpReadVariableOp
fc_10/bias*
_output_shapes
: *
dtype0
t
fc_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namefc_11/kernel
m
 fc_11/kernel/Read/ReadVariableOpReadVariableOpfc_11/kernel*
_output_shapes

: *
dtype0
l

fc_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
fc_11/bias
e
fc_11/bias/Read/ReadVariableOpReadVariableOp
fc_11/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:
*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:
*
dtype0

NoOpNoOp
<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*»;
value±;B®; B§;
Ö
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer_with_weights-10
layer-12
layer_with_weights-11
layer-13
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
h

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
h

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
h

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
h

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
h

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
¶
0
1
2
3
$4
%5
*6
+7
08
19
610
711
<12
=13
B14
C15
H16
I17
N18
O19
T20
U21
Z22
[23
¶
0
1
2
3
$4
%5
*6
+7
08
19
610
711
<12
=13
B14
C15
H16
I17
N18
O19
T20
U21
Z22
[23
 
­
`layer_metrics
	variables
anon_trainable_variables
bmetrics

clayers
dlayer_regularization_losses
trainable_variables
regularization_losses
 
 
 
 
­
elayer_metrics
	variables
fmetrics
gnon_trainable_variables

hlayers
ilayer_regularization_losses
trainable_variables
regularization_losses
WU
VARIABLE_VALUEfc_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
jlayer_metrics
	variables
kmetrics
lnon_trainable_variables

mlayers
nlayer_regularization_losses
trainable_variables
regularization_losses
WU
VARIABLE_VALUEfc_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
olayer_metrics
 	variables
pmetrics
qnon_trainable_variables

rlayers
slayer_regularization_losses
!trainable_variables
"regularization_losses
WU
VARIABLE_VALUEfc_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­
tlayer_metrics
&	variables
umetrics
vnon_trainable_variables

wlayers
xlayer_regularization_losses
'trainable_variables
(regularization_losses
WU
VARIABLE_VALUEfc_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
­
ylayer_metrics
,	variables
zmetrics
{non_trainable_variables

|layers
}layer_regularization_losses
-trainable_variables
.regularization_losses
WU
VARIABLE_VALUEfc_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
°
~layer_metrics
2	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
3trainable_variables
4regularization_losses
WU
VARIABLE_VALUEfc_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71

60
71
 
²
layer_metrics
8	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
9trainable_variables
:regularization_losses
WU
VARIABLE_VALUEfc_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
²
layer_metrics
>	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
?trainable_variables
@regularization_losses
WU
VARIABLE_VALUEfc_8/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_8/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1

B0
C1
 
²
layer_metrics
D	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
Etrainable_variables
Fregularization_losses
WU
VARIABLE_VALUEfc_9/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_9/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

H0
I1
 
²
layer_metrics
J	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
Ktrainable_variables
Lregularization_losses
XV
VARIABLE_VALUEfc_10/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
fc_10/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

N0
O1
 
²
layer_metrics
P	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
Qtrainable_variables
Rregularization_losses
YW
VARIABLE_VALUEfc_11/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
fc_11/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

T0
U1
 
²
layer_metrics
V	variables
metrics
non_trainable_variables
layers
  layer_regularization_losses
Wtrainable_variables
Xregularization_losses
ZX
VARIABLE_VALUEoutput/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEoutput/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
²
¡layer_metrics
\	variables
¢metrics
£non_trainable_variables
¤layers
 ¥layer_regularization_losses
]trainable_variables
^regularization_losses
 
 
 
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_3/kernel	fc_3/biasfc_4/kernel	fc_4/biasfc_5/kernel	fc_5/biasfc_6/kernel	fc_6/biasfc_7/kernel	fc_7/biasfc_8/kernel	fc_8/biasfc_9/kernel	fc_9/biasfc_10/kernel
fc_10/biasfc_11/kernel
fc_11/biasoutput/kerneloutput/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_6777084
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¿
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefc_1/kernel/Read/ReadVariableOpfc_1/bias/Read/ReadVariableOpfc_2/kernel/Read/ReadVariableOpfc_2/bias/Read/ReadVariableOpfc_3/kernel/Read/ReadVariableOpfc_3/bias/Read/ReadVariableOpfc_4/kernel/Read/ReadVariableOpfc_4/bias/Read/ReadVariableOpfc_5/kernel/Read/ReadVariableOpfc_5/bias/Read/ReadVariableOpfc_6/kernel/Read/ReadVariableOpfc_6/bias/Read/ReadVariableOpfc_7/kernel/Read/ReadVariableOpfc_7/bias/Read/ReadVariableOpfc_8/kernel/Read/ReadVariableOpfc_8/bias/Read/ReadVariableOpfc_9/kernel/Read/ReadVariableOpfc_9/bias/Read/ReadVariableOp fc_10/kernel/Read/ReadVariableOpfc_10/bias/Read/ReadVariableOp fc_11/kernel/Read/ReadVariableOpfc_11/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_6777716
Ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_3/kernel	fc_3/biasfc_4/kernel	fc_4/biasfc_5/kernel	fc_5/biasfc_6/kernel	fc_6/biasfc_7/kernel	fc_7/biasfc_8/kernel	fc_8/biasfc_9/kernel	fc_9/biasfc_10/kernel
fc_10/biasfc_11/kernel
fc_11/biasoutput/kerneloutput/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_6777798Ðä
Ä
Ò
'__inference_mnist_layer_call_fn_6777029	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_67769782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
¢
Ð
%__inference_signature_wrapper_6777084	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_67763842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
ô	
Ú
A__inference_fc_8_layer_call_and_return_conditional_losses_6777532

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ=

B__inference_mnist_layer_call_and_return_conditional_losses_6776860

inputs
fc_1_6776799
fc_1_6776801
fc_2_6776804
fc_2_6776806
fc_3_6776809
fc_3_6776811
fc_4_6776814
fc_4_6776816
fc_5_6776819
fc_5_6776821
fc_6_6776824
fc_6_6776826
fc_7_6776829
fc_7_6776831
fc_8_6776834
fc_8_6776836
fc_9_6776839
fc_9_6776841
fc_10_6776844
fc_10_6776846
fc_11_6776849
fc_11_6776851
output_6776854
output_6776856
identity¢fc_1/StatefulPartitionedCall¢fc_10/StatefulPartitionedCall¢fc_11/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢fc_6/StatefulPartitionedCall¢fc_7/StatefulPartitionedCall¢fc_8/StatefulPartitionedCall¢fc_9/StatefulPartitionedCall¢output/StatefulPartitionedCallÖ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_67763942
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_6776799fc_1_6776801*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_67764132
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_6776804fc_2_6776806*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_67764402
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_6776809fc_3_6776811*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_67764672
fc_3/StatefulPartitionedCall¦
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_6776814fc_4_6776816*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_67764942
fc_4/StatefulPartitionedCall¦
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_6776819fc_5_6776821*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_67765212
fc_5/StatefulPartitionedCall¦
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_6776824fc_6_6776826*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_67765482
fc_6/StatefulPartitionedCall¦
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0fc_7_6776829fc_7_6776831*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_67765752
fc_7/StatefulPartitionedCall¦
fc_8/StatefulPartitionedCallStatefulPartitionedCall%fc_7/StatefulPartitionedCall:output:0fc_8_6776834fc_8_6776836*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_67766022
fc_8/StatefulPartitionedCall¥
fc_9/StatefulPartitionedCallStatefulPartitionedCall%fc_8/StatefulPartitionedCall:output:0fc_9_6776839fc_9_6776841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_67766292
fc_9/StatefulPartitionedCallª
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_6776844fc_10_6776846*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_67766562
fc_10/StatefulPartitionedCall«
fc_11/StatefulPartitionedCallStatefulPartitionedCall&fc_10/StatefulPartitionedCall:output:0fc_11_6776849fc_11_6776851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_67766832
fc_11/StatefulPartitionedCall°
output/StatefulPartitionedCallStatefulPartitionedCall&fc_11/StatefulPartitionedCall:output:0output_6776854output_6776856*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_67767102 
output/StatefulPartitionedCalló
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_10/StatefulPartitionedCall^fc_11/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^fc_6/StatefulPartitionedCall^fc_7/StatefulPartitionedCall^fc_8/StatefulPartitionedCall^fc_9/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2>
fc_11/StatefulPartitionedCallfc_11/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2<
fc_8/StatefulPartitionedCallfc_8/StatefulPartitionedCall2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
Ò
'__inference_mnist_layer_call_fn_6776911	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_67768602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
õ	
Ü
C__inference_output_layer_call_and_return_conditional_losses_6777612

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
Ó
'__inference_mnist_layer_call_fn_6777317

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_67768602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ùh

B__inference_mnist_layer_call_and_return_conditional_losses_6777174

inputs'
#fc_1_matmul_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource'
#fc_2_matmul_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource'
#fc_3_matmul_readvariableop_resource(
$fc_3_biasadd_readvariableop_resource'
#fc_4_matmul_readvariableop_resource(
$fc_4_biasadd_readvariableop_resource'
#fc_5_matmul_readvariableop_resource(
$fc_5_biasadd_readvariableop_resource'
#fc_6_matmul_readvariableop_resource(
$fc_6_biasadd_readvariableop_resource'
#fc_7_matmul_readvariableop_resource(
$fc_7_biasadd_readvariableop_resource'
#fc_8_matmul_readvariableop_resource(
$fc_8_biasadd_readvariableop_resource'
#fc_9_matmul_readvariableop_resource(
$fc_9_biasadd_readvariableop_resource(
$fc_10_matmul_readvariableop_resource)
%fc_10_biasadd_readvariableop_resource(
$fc_11_matmul_readvariableop_resource)
%fc_11_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity¢fc_1/BiasAdd/ReadVariableOp¢fc_1/MatMul/ReadVariableOp¢fc_10/BiasAdd/ReadVariableOp¢fc_10/MatMul/ReadVariableOp¢fc_11/BiasAdd/ReadVariableOp¢fc_11/MatMul/ReadVariableOp¢fc_2/BiasAdd/ReadVariableOp¢fc_2/MatMul/ReadVariableOp¢fc_3/BiasAdd/ReadVariableOp¢fc_3/MatMul/ReadVariableOp¢fc_4/BiasAdd/ReadVariableOp¢fc_4/MatMul/ReadVariableOp¢fc_5/BiasAdd/ReadVariableOp¢fc_5/MatMul/ReadVariableOp¢fc_6/BiasAdd/ReadVariableOp¢fc_6/MatMul/ReadVariableOp¢fc_7/BiasAdd/ReadVariableOp¢fc_7/MatMul/ReadVariableOp¢fc_8/BiasAdd/ReadVariableOp¢fc_8/MatMul/ReadVariableOp¢fc_9/BiasAdd/ReadVariableOp¢fc_9/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape
fc_1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_1/MatMul/ReadVariableOp
fc_1/MatMulMatMulflatten/Reshape:output:0"fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_1/MatMul
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_1/BiasAdd/ReadVariableOp
fc_1/BiasAddBiasAddfc_1/MatMul:product:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_1/BiasAddh
	fc_1/ReluRelufc_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_1/Relu
fc_2/MatMul/ReadVariableOpReadVariableOp#fc_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_2/MatMul/ReadVariableOp
fc_2/MatMulMatMulfc_1/Relu:activations:0"fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/MatMul
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_2/BiasAdd/ReadVariableOp
fc_2/BiasAddBiasAddfc_2/MatMul:product:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/BiasAddh
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_2/Relu
fc_3/MatMul/ReadVariableOpReadVariableOp#fc_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_3/MatMul/ReadVariableOp
fc_3/MatMulMatMulfc_2/Relu:activations:0"fc_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/MatMul
fc_3/BiasAdd/ReadVariableOpReadVariableOp$fc_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_3/BiasAdd/ReadVariableOp
fc_3/BiasAddBiasAddfc_3/MatMul:product:0#fc_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/BiasAddh
	fc_3/ReluRelufc_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_3/Relu
fc_4/MatMul/ReadVariableOpReadVariableOp#fc_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_4/MatMul/ReadVariableOp
fc_4/MatMulMatMulfc_3/Relu:activations:0"fc_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_4/MatMul
fc_4/BiasAdd/ReadVariableOpReadVariableOp$fc_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_4/BiasAdd/ReadVariableOp
fc_4/BiasAddBiasAddfc_4/MatMul:product:0#fc_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_4/BiasAddh
	fc_4/ReluRelufc_4/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_4/Relu
fc_5/MatMul/ReadVariableOpReadVariableOp#fc_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_5/MatMul/ReadVariableOp
fc_5/MatMulMatMulfc_4/Relu:activations:0"fc_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_5/MatMul
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_5/BiasAdd/ReadVariableOp
fc_5/BiasAddBiasAddfc_5/MatMul:product:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_5/BiasAddh
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_5/Relu
fc_6/MatMul/ReadVariableOpReadVariableOp#fc_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_6/MatMul/ReadVariableOp
fc_6/MatMulMatMulfc_5/Relu:activations:0"fc_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_6/MatMul
fc_6/BiasAdd/ReadVariableOpReadVariableOp$fc_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_6/BiasAdd/ReadVariableOp
fc_6/BiasAddBiasAddfc_6/MatMul:product:0#fc_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_6/BiasAddh
	fc_6/ReluRelufc_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_6/Relu
fc_7/MatMul/ReadVariableOpReadVariableOp#fc_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_7/MatMul/ReadVariableOp
fc_7/MatMulMatMulfc_6/Relu:activations:0"fc_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_7/MatMul
fc_7/BiasAdd/ReadVariableOpReadVariableOp$fc_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_7/BiasAdd/ReadVariableOp
fc_7/BiasAddBiasAddfc_7/MatMul:product:0#fc_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_7/BiasAddh
	fc_7/ReluRelufc_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_7/Relu
fc_8/MatMul/ReadVariableOpReadVariableOp#fc_8_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_8/MatMul/ReadVariableOp
fc_8/MatMulMatMulfc_7/Relu:activations:0"fc_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_8/MatMul
fc_8/BiasAdd/ReadVariableOpReadVariableOp$fc_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_8/BiasAdd/ReadVariableOp
fc_8/BiasAddBiasAddfc_8/MatMul:product:0#fc_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_8/BiasAddh
	fc_8/ReluRelufc_8/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_8/Relu
fc_9/MatMul/ReadVariableOpReadVariableOp#fc_9_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
fc_9/MatMul/ReadVariableOp
fc_9/MatMulMatMulfc_8/Relu:activations:0"fc_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_9/MatMul
fc_9/BiasAdd/ReadVariableOpReadVariableOp$fc_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_9/BiasAdd/ReadVariableOp
fc_9/BiasAddBiasAddfc_9/MatMul:product:0#fc_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_9/BiasAddg
	fc_9/ReluRelufc_9/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	fc_9/Relu
fc_10/MatMul/ReadVariableOpReadVariableOp$fc_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
fc_10/MatMul/ReadVariableOp
fc_10/MatMulMatMulfc_9/Relu:activations:0#fc_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_10/MatMul
fc_10/BiasAdd/ReadVariableOpReadVariableOp%fc_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_10/BiasAdd/ReadVariableOp
fc_10/BiasAddBiasAddfc_10/MatMul:product:0$fc_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_10/BiasAddj

fc_10/ReluRelufc_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

fc_10/Relu
fc_11/MatMul/ReadVariableOpReadVariableOp$fc_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
fc_11/MatMul/ReadVariableOp
fc_11/MatMulMatMulfc_10/Relu:activations:0#fc_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_11/MatMul
fc_11/BiasAdd/ReadVariableOpReadVariableOp%fc_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_11/BiasAdd/ReadVariableOp
fc_11/BiasAddBiasAddfc_11/MatMul:product:0$fc_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_11/BiasAddj

fc_11/ReluRelufc_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

fc_11/Relu¢
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOp
output/MatMulMatMulfc_11/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
output/MatMul¡
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
output/BiasAdd/ReadVariableOp
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
output/BiasAddv
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
output/Softmax¸
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp^fc_1/MatMul/ReadVariableOp^fc_10/BiasAdd/ReadVariableOp^fc_10/MatMul/ReadVariableOp^fc_11/BiasAdd/ReadVariableOp^fc_11/MatMul/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp^fc_2/MatMul/ReadVariableOp^fc_3/BiasAdd/ReadVariableOp^fc_3/MatMul/ReadVariableOp^fc_4/BiasAdd/ReadVariableOp^fc_4/MatMul/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp^fc_5/MatMul/ReadVariableOp^fc_6/BiasAdd/ReadVariableOp^fc_6/MatMul/ReadVariableOp^fc_7/BiasAdd/ReadVariableOp^fc_7/MatMul/ReadVariableOp^fc_8/BiasAdd/ReadVariableOp^fc_8/MatMul/ReadVariableOp^fc_9/BiasAdd/ReadVariableOp^fc_9/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp28
fc_1/MatMul/ReadVariableOpfc_1/MatMul/ReadVariableOp2<
fc_10/BiasAdd/ReadVariableOpfc_10/BiasAdd/ReadVariableOp2:
fc_10/MatMul/ReadVariableOpfc_10/MatMul/ReadVariableOp2<
fc_11/BiasAdd/ReadVariableOpfc_11/BiasAdd/ReadVariableOp2:
fc_11/MatMul/ReadVariableOpfc_11/MatMul/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp28
fc_2/MatMul/ReadVariableOpfc_2/MatMul/ReadVariableOp2:
fc_3/BiasAdd/ReadVariableOpfc_3/BiasAdd/ReadVariableOp28
fc_3/MatMul/ReadVariableOpfc_3/MatMul/ReadVariableOp2:
fc_4/BiasAdd/ReadVariableOpfc_4/BiasAdd/ReadVariableOp28
fc_4/MatMul/ReadVariableOpfc_4/MatMul/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp28
fc_5/MatMul/ReadVariableOpfc_5/MatMul/ReadVariableOp2:
fc_6/BiasAdd/ReadVariableOpfc_6/BiasAdd/ReadVariableOp28
fc_6/MatMul/ReadVariableOpfc_6/MatMul/ReadVariableOp2:
fc_7/BiasAdd/ReadVariableOpfc_7/BiasAdd/ReadVariableOp28
fc_7/MatMul/ReadVariableOpfc_7/MatMul/ReadVariableOp2:
fc_8/BiasAdd/ReadVariableOpfc_8/BiasAdd/ReadVariableOp28
fc_8/MatMul/ReadVariableOpfc_8/MatMul/ReadVariableOp2:
fc_9/BiasAdd/ReadVariableOpfc_9/BiasAdd/ReadVariableOp28
fc_9/MatMul/ReadVariableOpfc_9/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_7_layer_call_and_return_conditional_losses_6776575

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_1_layer_call_and_return_conditional_losses_6777392

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì	
Û
B__inference_fc_11_layer_call_and_return_conditional_losses_6777592

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ý
{
&__inference_fc_4_layer_call_fn_6777461

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_67764942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ	
Ü
C__inference_output_layer_call_and_return_conditional_losses_6776710

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
{
&__inference_fc_9_layer_call_fn_6777561

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_67766292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ùh

B__inference_mnist_layer_call_and_return_conditional_losses_6777264

inputs'
#fc_1_matmul_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource'
#fc_2_matmul_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource'
#fc_3_matmul_readvariableop_resource(
$fc_3_biasadd_readvariableop_resource'
#fc_4_matmul_readvariableop_resource(
$fc_4_biasadd_readvariableop_resource'
#fc_5_matmul_readvariableop_resource(
$fc_5_biasadd_readvariableop_resource'
#fc_6_matmul_readvariableop_resource(
$fc_6_biasadd_readvariableop_resource'
#fc_7_matmul_readvariableop_resource(
$fc_7_biasadd_readvariableop_resource'
#fc_8_matmul_readvariableop_resource(
$fc_8_biasadd_readvariableop_resource'
#fc_9_matmul_readvariableop_resource(
$fc_9_biasadd_readvariableop_resource(
$fc_10_matmul_readvariableop_resource)
%fc_10_biasadd_readvariableop_resource(
$fc_11_matmul_readvariableop_resource)
%fc_11_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity¢fc_1/BiasAdd/ReadVariableOp¢fc_1/MatMul/ReadVariableOp¢fc_10/BiasAdd/ReadVariableOp¢fc_10/MatMul/ReadVariableOp¢fc_11/BiasAdd/ReadVariableOp¢fc_11/MatMul/ReadVariableOp¢fc_2/BiasAdd/ReadVariableOp¢fc_2/MatMul/ReadVariableOp¢fc_3/BiasAdd/ReadVariableOp¢fc_3/MatMul/ReadVariableOp¢fc_4/BiasAdd/ReadVariableOp¢fc_4/MatMul/ReadVariableOp¢fc_5/BiasAdd/ReadVariableOp¢fc_5/MatMul/ReadVariableOp¢fc_6/BiasAdd/ReadVariableOp¢fc_6/MatMul/ReadVariableOp¢fc_7/BiasAdd/ReadVariableOp¢fc_7/MatMul/ReadVariableOp¢fc_8/BiasAdd/ReadVariableOp¢fc_8/MatMul/ReadVariableOp¢fc_9/BiasAdd/ReadVariableOp¢fc_9/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape
fc_1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_1/MatMul/ReadVariableOp
fc_1/MatMulMatMulflatten/Reshape:output:0"fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_1/MatMul
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_1/BiasAdd/ReadVariableOp
fc_1/BiasAddBiasAddfc_1/MatMul:product:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_1/BiasAddh
	fc_1/ReluRelufc_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_1/Relu
fc_2/MatMul/ReadVariableOpReadVariableOp#fc_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_2/MatMul/ReadVariableOp
fc_2/MatMulMatMulfc_1/Relu:activations:0"fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/MatMul
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_2/BiasAdd/ReadVariableOp
fc_2/BiasAddBiasAddfc_2/MatMul:product:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/BiasAddh
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_2/Relu
fc_3/MatMul/ReadVariableOpReadVariableOp#fc_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_3/MatMul/ReadVariableOp
fc_3/MatMulMatMulfc_2/Relu:activations:0"fc_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/MatMul
fc_3/BiasAdd/ReadVariableOpReadVariableOp$fc_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_3/BiasAdd/ReadVariableOp
fc_3/BiasAddBiasAddfc_3/MatMul:product:0#fc_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/BiasAddh
	fc_3/ReluRelufc_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_3/Relu
fc_4/MatMul/ReadVariableOpReadVariableOp#fc_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_4/MatMul/ReadVariableOp
fc_4/MatMulMatMulfc_3/Relu:activations:0"fc_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_4/MatMul
fc_4/BiasAdd/ReadVariableOpReadVariableOp$fc_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_4/BiasAdd/ReadVariableOp
fc_4/BiasAddBiasAddfc_4/MatMul:product:0#fc_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_4/BiasAddh
	fc_4/ReluRelufc_4/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_4/Relu
fc_5/MatMul/ReadVariableOpReadVariableOp#fc_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_5/MatMul/ReadVariableOp
fc_5/MatMulMatMulfc_4/Relu:activations:0"fc_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_5/MatMul
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_5/BiasAdd/ReadVariableOp
fc_5/BiasAddBiasAddfc_5/MatMul:product:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_5/BiasAddh
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_5/Relu
fc_6/MatMul/ReadVariableOpReadVariableOp#fc_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_6/MatMul/ReadVariableOp
fc_6/MatMulMatMulfc_5/Relu:activations:0"fc_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_6/MatMul
fc_6/BiasAdd/ReadVariableOpReadVariableOp$fc_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_6/BiasAdd/ReadVariableOp
fc_6/BiasAddBiasAddfc_6/MatMul:product:0#fc_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_6/BiasAddh
	fc_6/ReluRelufc_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_6/Relu
fc_7/MatMul/ReadVariableOpReadVariableOp#fc_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_7/MatMul/ReadVariableOp
fc_7/MatMulMatMulfc_6/Relu:activations:0"fc_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_7/MatMul
fc_7/BiasAdd/ReadVariableOpReadVariableOp$fc_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_7/BiasAdd/ReadVariableOp
fc_7/BiasAddBiasAddfc_7/MatMul:product:0#fc_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_7/BiasAddh
	fc_7/ReluRelufc_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_7/Relu
fc_8/MatMul/ReadVariableOpReadVariableOp#fc_8_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_8/MatMul/ReadVariableOp
fc_8/MatMulMatMulfc_7/Relu:activations:0"fc_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_8/MatMul
fc_8/BiasAdd/ReadVariableOpReadVariableOp$fc_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_8/BiasAdd/ReadVariableOp
fc_8/BiasAddBiasAddfc_8/MatMul:product:0#fc_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_8/BiasAddh
	fc_8/ReluRelufc_8/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_8/Relu
fc_9/MatMul/ReadVariableOpReadVariableOp#fc_9_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
fc_9/MatMul/ReadVariableOp
fc_9/MatMulMatMulfc_8/Relu:activations:0"fc_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_9/MatMul
fc_9/BiasAdd/ReadVariableOpReadVariableOp$fc_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_9/BiasAdd/ReadVariableOp
fc_9/BiasAddBiasAddfc_9/MatMul:product:0#fc_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_9/BiasAddg
	fc_9/ReluRelufc_9/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	fc_9/Relu
fc_10/MatMul/ReadVariableOpReadVariableOp$fc_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
fc_10/MatMul/ReadVariableOp
fc_10/MatMulMatMulfc_9/Relu:activations:0#fc_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_10/MatMul
fc_10/BiasAdd/ReadVariableOpReadVariableOp%fc_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_10/BiasAdd/ReadVariableOp
fc_10/BiasAddBiasAddfc_10/MatMul:product:0$fc_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_10/BiasAddj

fc_10/ReluRelufc_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

fc_10/Relu
fc_11/MatMul/ReadVariableOpReadVariableOp$fc_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
fc_11/MatMul/ReadVariableOp
fc_11/MatMulMatMulfc_10/Relu:activations:0#fc_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_11/MatMul
fc_11/BiasAdd/ReadVariableOpReadVariableOp%fc_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_11/BiasAdd/ReadVariableOp
fc_11/BiasAddBiasAddfc_11/MatMul:product:0$fc_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_11/BiasAddj

fc_11/ReluRelufc_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

fc_11/Relu¢
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOp
output/MatMulMatMulfc_11/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
output/MatMul¡
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
output/BiasAdd/ReadVariableOp
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
output/BiasAddv
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
output/Softmax¸
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp^fc_1/MatMul/ReadVariableOp^fc_10/BiasAdd/ReadVariableOp^fc_10/MatMul/ReadVariableOp^fc_11/BiasAdd/ReadVariableOp^fc_11/MatMul/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp^fc_2/MatMul/ReadVariableOp^fc_3/BiasAdd/ReadVariableOp^fc_3/MatMul/ReadVariableOp^fc_4/BiasAdd/ReadVariableOp^fc_4/MatMul/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp^fc_5/MatMul/ReadVariableOp^fc_6/BiasAdd/ReadVariableOp^fc_6/MatMul/ReadVariableOp^fc_7/BiasAdd/ReadVariableOp^fc_7/MatMul/ReadVariableOp^fc_8/BiasAdd/ReadVariableOp^fc_8/MatMul/ReadVariableOp^fc_9/BiasAdd/ReadVariableOp^fc_9/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp28
fc_1/MatMul/ReadVariableOpfc_1/MatMul/ReadVariableOp2<
fc_10/BiasAdd/ReadVariableOpfc_10/BiasAdd/ReadVariableOp2:
fc_10/MatMul/ReadVariableOpfc_10/MatMul/ReadVariableOp2<
fc_11/BiasAdd/ReadVariableOpfc_11/BiasAdd/ReadVariableOp2:
fc_11/MatMul/ReadVariableOpfc_11/MatMul/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp28
fc_2/MatMul/ReadVariableOpfc_2/MatMul/ReadVariableOp2:
fc_3/BiasAdd/ReadVariableOpfc_3/BiasAdd/ReadVariableOp28
fc_3/MatMul/ReadVariableOpfc_3/MatMul/ReadVariableOp2:
fc_4/BiasAdd/ReadVariableOpfc_4/BiasAdd/ReadVariableOp28
fc_4/MatMul/ReadVariableOpfc_4/MatMul/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp28
fc_5/MatMul/ReadVariableOpfc_5/MatMul/ReadVariableOp2:
fc_6/BiasAdd/ReadVariableOpfc_6/BiasAdd/ReadVariableOp28
fc_6/MatMul/ReadVariableOpfc_6/MatMul/ReadVariableOp2:
fc_7/BiasAdd/ReadVariableOpfc_7/BiasAdd/ReadVariableOp28
fc_7/MatMul/ReadVariableOpfc_7/MatMul/ReadVariableOp2:
fc_8/BiasAdd/ReadVariableOpfc_8/BiasAdd/ReadVariableOp28
fc_8/MatMul/ReadVariableOpfc_8/MatMul/ReadVariableOp2:
fc_9/BiasAdd/ReadVariableOpfc_9/BiasAdd/ReadVariableOp28
fc_9/MatMul/ReadVariableOpfc_9/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
}
(__inference_output_layer_call_fn_6777621

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_67767102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_6_layer_call_fn_6777501

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_67765482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_3_layer_call_and_return_conditional_losses_6777432

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_3_layer_call_and_return_conditional_losses_6776467

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_2_layer_call_fn_6777421

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_67764402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_3_layer_call_fn_6777441

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_67764672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
Ó
'__inference_mnist_layer_call_fn_6777370

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_67769782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_2_layer_call_and_return_conditional_losses_6776440

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
E
)__inference_flatten_layer_call_fn_6777381

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_67763942
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò=

B__inference_mnist_layer_call_and_return_conditional_losses_6776792	
input
fc_1_6776731
fc_1_6776733
fc_2_6776736
fc_2_6776738
fc_3_6776741
fc_3_6776743
fc_4_6776746
fc_4_6776748
fc_5_6776751
fc_5_6776753
fc_6_6776756
fc_6_6776758
fc_7_6776761
fc_7_6776763
fc_8_6776766
fc_8_6776768
fc_9_6776771
fc_9_6776773
fc_10_6776776
fc_10_6776778
fc_11_6776781
fc_11_6776783
output_6776786
output_6776788
identity¢fc_1/StatefulPartitionedCall¢fc_10/StatefulPartitionedCall¢fc_11/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢fc_6/StatefulPartitionedCall¢fc_7/StatefulPartitionedCall¢fc_8/StatefulPartitionedCall¢fc_9/StatefulPartitionedCall¢output/StatefulPartitionedCallÕ
flatten/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_67763942
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_6776731fc_1_6776733*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_67764132
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_6776736fc_2_6776738*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_67764402
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_6776741fc_3_6776743*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_67764672
fc_3/StatefulPartitionedCall¦
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_6776746fc_4_6776748*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_67764942
fc_4/StatefulPartitionedCall¦
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_6776751fc_5_6776753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_67765212
fc_5/StatefulPartitionedCall¦
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_6776756fc_6_6776758*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_67765482
fc_6/StatefulPartitionedCall¦
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0fc_7_6776761fc_7_6776763*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_67765752
fc_7/StatefulPartitionedCall¦
fc_8/StatefulPartitionedCallStatefulPartitionedCall%fc_7/StatefulPartitionedCall:output:0fc_8_6776766fc_8_6776768*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_67766022
fc_8/StatefulPartitionedCall¥
fc_9/StatefulPartitionedCallStatefulPartitionedCall%fc_8/StatefulPartitionedCall:output:0fc_9_6776771fc_9_6776773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_67766292
fc_9/StatefulPartitionedCallª
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_6776776fc_10_6776778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_67766562
fc_10/StatefulPartitionedCall«
fc_11/StatefulPartitionedCallStatefulPartitionedCall&fc_10/StatefulPartitionedCall:output:0fc_11_6776781fc_11_6776783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_67766832
fc_11/StatefulPartitionedCall°
output/StatefulPartitionedCallStatefulPartitionedCall&fc_11/StatefulPartitionedCall:output:0output_6776786output_6776788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_67767102 
output/StatefulPartitionedCalló
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_10/StatefulPartitionedCall^fc_11/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^fc_6/StatefulPartitionedCall^fc_7/StatefulPartitionedCall^fc_8/StatefulPartitionedCall^fc_9/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2>
fc_11/StatefulPartitionedCallfc_11/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2<
fc_8/StatefulPartitionedCallfc_8/StatefulPartitionedCall2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
ã5
ý
 __inference__traced_save_6777716
file_prefix*
&savev2_fc_1_kernel_read_readvariableop(
$savev2_fc_1_bias_read_readvariableop*
&savev2_fc_2_kernel_read_readvariableop(
$savev2_fc_2_bias_read_readvariableop*
&savev2_fc_3_kernel_read_readvariableop(
$savev2_fc_3_bias_read_readvariableop*
&savev2_fc_4_kernel_read_readvariableop(
$savev2_fc_4_bias_read_readvariableop*
&savev2_fc_5_kernel_read_readvariableop(
$savev2_fc_5_bias_read_readvariableop*
&savev2_fc_6_kernel_read_readvariableop(
$savev2_fc_6_bias_read_readvariableop*
&savev2_fc_7_kernel_read_readvariableop(
$savev2_fc_7_bias_read_readvariableop*
&savev2_fc_8_kernel_read_readvariableop(
$savev2_fc_8_bias_read_readvariableop*
&savev2_fc_9_kernel_read_readvariableop(
$savev2_fc_9_bias_read_readvariableop+
'savev2_fc_10_kernel_read_readvariableop)
%savev2_fc_10_bias_read_readvariableop+
'savev2_fc_11_kernel_read_readvariableop)
%savev2_fc_11_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÍ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ß

valueÕ
BÒ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesº
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_fc_1_kernel_read_readvariableop$savev2_fc_1_bias_read_readvariableop&savev2_fc_2_kernel_read_readvariableop$savev2_fc_2_bias_read_readvariableop&savev2_fc_3_kernel_read_readvariableop$savev2_fc_3_bias_read_readvariableop&savev2_fc_4_kernel_read_readvariableop$savev2_fc_4_bias_read_readvariableop&savev2_fc_5_kernel_read_readvariableop$savev2_fc_5_bias_read_readvariableop&savev2_fc_6_kernel_read_readvariableop$savev2_fc_6_bias_read_readvariableop&savev2_fc_7_kernel_read_readvariableop$savev2_fc_7_bias_read_readvariableop&savev2_fc_8_kernel_read_readvariableop$savev2_fc_8_bias_read_readvariableop&savev2_fc_9_kernel_read_readvariableop$savev2_fc_9_bias_read_readvariableop'savev2_fc_10_kernel_read_readvariableop%savev2_fc_10_bias_read_readvariableop'savev2_fc_11_kernel_read_readvariableop%savev2_fc_11_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ò
_input_shapesà
Ý: :
::
::
::
::
::
::
::
::	@:@:@ : : ::
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:

_output_shapes
: 
ô	
Ú
A__inference_fc_5_layer_call_and_return_conditional_losses_6776521

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
|
'__inference_fc_10_layer_call_fn_6777581

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_67766562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_8_layer_call_and_return_conditional_losses_6776602

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
øb
ª
#__inference__traced_restore_6777798
file_prefix 
assignvariableop_fc_1_kernel 
assignvariableop_1_fc_1_bias"
assignvariableop_2_fc_2_kernel 
assignvariableop_3_fc_2_bias"
assignvariableop_4_fc_3_kernel 
assignvariableop_5_fc_3_bias"
assignvariableop_6_fc_4_kernel 
assignvariableop_7_fc_4_bias"
assignvariableop_8_fc_5_kernel 
assignvariableop_9_fc_5_bias#
assignvariableop_10_fc_6_kernel!
assignvariableop_11_fc_6_bias#
assignvariableop_12_fc_7_kernel!
assignvariableop_13_fc_7_bias#
assignvariableop_14_fc_8_kernel!
assignvariableop_15_fc_8_bias#
assignvariableop_16_fc_9_kernel!
assignvariableop_17_fc_9_bias$
 assignvariableop_18_fc_10_kernel"
assignvariableop_19_fc_10_bias$
 assignvariableop_20_fc_11_kernel"
assignvariableop_21_fc_11_bias%
!assignvariableop_22_output_kernel#
assignvariableop_23_output_bias
identity_25¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ß

valueÕ
BÒ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÀ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_fc_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¡
AssignVariableOp_1AssignVariableOpassignvariableop_1_fc_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_fc_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_fc_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_fc_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¡
AssignVariableOp_5AssignVariableOpassignvariableop_5_fc_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¡
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¡
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_fc_6_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¥
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_fc_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¥
AssignVariableOp_13AssignVariableOpassignvariableop_13_fc_7_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14§
AssignVariableOp_14AssignVariableOpassignvariableop_14_fc_8_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¥
AssignVariableOp_15AssignVariableOpassignvariableop_15_fc_8_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16§
AssignVariableOp_16AssignVariableOpassignvariableop_16_fc_9_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¥
AssignVariableOp_17AssignVariableOpassignvariableop_17_fc_9_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¨
AssignVariableOp_18AssignVariableOp assignvariableop_18_fc_10_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¦
AssignVariableOp_19AssignVariableOpassignvariableop_19_fc_10_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¨
AssignVariableOp_20AssignVariableOp assignvariableop_20_fc_11_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¦
AssignVariableOp_21AssignVariableOpassignvariableop_21_fc_11_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22©
AssignVariableOp_22AssignVariableOp!assignvariableop_22_output_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23§
AssignVariableOp_23AssignVariableOpassignvariableop_23_output_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpî
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24á
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*u
_input_shapesd
b: ::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ì	
Û
B__inference_fc_10_layer_call_and_return_conditional_losses_6777572

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ów

"__inference__wrapped_model_6776384	
input-
)mnist_fc_1_matmul_readvariableop_resource.
*mnist_fc_1_biasadd_readvariableop_resource-
)mnist_fc_2_matmul_readvariableop_resource.
*mnist_fc_2_biasadd_readvariableop_resource-
)mnist_fc_3_matmul_readvariableop_resource.
*mnist_fc_3_biasadd_readvariableop_resource-
)mnist_fc_4_matmul_readvariableop_resource.
*mnist_fc_4_biasadd_readvariableop_resource-
)mnist_fc_5_matmul_readvariableop_resource.
*mnist_fc_5_biasadd_readvariableop_resource-
)mnist_fc_6_matmul_readvariableop_resource.
*mnist_fc_6_biasadd_readvariableop_resource-
)mnist_fc_7_matmul_readvariableop_resource.
*mnist_fc_7_biasadd_readvariableop_resource-
)mnist_fc_8_matmul_readvariableop_resource.
*mnist_fc_8_biasadd_readvariableop_resource-
)mnist_fc_9_matmul_readvariableop_resource.
*mnist_fc_9_biasadd_readvariableop_resource.
*mnist_fc_10_matmul_readvariableop_resource/
+mnist_fc_10_biasadd_readvariableop_resource.
*mnist_fc_11_matmul_readvariableop_resource/
+mnist_fc_11_biasadd_readvariableop_resource/
+mnist_output_matmul_readvariableop_resource0
,mnist_output_biasadd_readvariableop_resource
identity¢!mnist/fc_1/BiasAdd/ReadVariableOp¢ mnist/fc_1/MatMul/ReadVariableOp¢"mnist/fc_10/BiasAdd/ReadVariableOp¢!mnist/fc_10/MatMul/ReadVariableOp¢"mnist/fc_11/BiasAdd/ReadVariableOp¢!mnist/fc_11/MatMul/ReadVariableOp¢!mnist/fc_2/BiasAdd/ReadVariableOp¢ mnist/fc_2/MatMul/ReadVariableOp¢!mnist/fc_3/BiasAdd/ReadVariableOp¢ mnist/fc_3/MatMul/ReadVariableOp¢!mnist/fc_4/BiasAdd/ReadVariableOp¢ mnist/fc_4/MatMul/ReadVariableOp¢!mnist/fc_5/BiasAdd/ReadVariableOp¢ mnist/fc_5/MatMul/ReadVariableOp¢!mnist/fc_6/BiasAdd/ReadVariableOp¢ mnist/fc_6/MatMul/ReadVariableOp¢!mnist/fc_7/BiasAdd/ReadVariableOp¢ mnist/fc_7/MatMul/ReadVariableOp¢!mnist/fc_8/BiasAdd/ReadVariableOp¢ mnist/fc_8/MatMul/ReadVariableOp¢!mnist/fc_9/BiasAdd/ReadVariableOp¢ mnist/fc_9/MatMul/ReadVariableOp¢#mnist/output/BiasAdd/ReadVariableOp¢"mnist/output/MatMul/ReadVariableOp{
mnist/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
mnist/flatten/Const
mnist/flatten/ReshapeReshapeinputmnist/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/flatten/Reshape°
 mnist/fc_1/MatMul/ReadVariableOpReadVariableOp)mnist_fc_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_1/MatMul/ReadVariableOp­
mnist/fc_1/MatMulMatMulmnist/flatten/Reshape:output:0(mnist/fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_1/MatMul®
!mnist/fc_1/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_1/BiasAdd/ReadVariableOp®
mnist/fc_1/BiasAddBiasAddmnist/fc_1/MatMul:product:0)mnist/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_1/BiasAddz
mnist/fc_1/ReluRelumnist/fc_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_1/Relu°
 mnist/fc_2/MatMul/ReadVariableOpReadVariableOp)mnist_fc_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_2/MatMul/ReadVariableOp¬
mnist/fc_2/MatMulMatMulmnist/fc_1/Relu:activations:0(mnist/fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_2/MatMul®
!mnist/fc_2/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_2/BiasAdd/ReadVariableOp®
mnist/fc_2/BiasAddBiasAddmnist/fc_2/MatMul:product:0)mnist/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_2/BiasAddz
mnist/fc_2/ReluRelumnist/fc_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_2/Relu°
 mnist/fc_3/MatMul/ReadVariableOpReadVariableOp)mnist_fc_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_3/MatMul/ReadVariableOp¬
mnist/fc_3/MatMulMatMulmnist/fc_2/Relu:activations:0(mnist/fc_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_3/MatMul®
!mnist/fc_3/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_3/BiasAdd/ReadVariableOp®
mnist/fc_3/BiasAddBiasAddmnist/fc_3/MatMul:product:0)mnist/fc_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_3/BiasAddz
mnist/fc_3/ReluRelumnist/fc_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_3/Relu°
 mnist/fc_4/MatMul/ReadVariableOpReadVariableOp)mnist_fc_4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_4/MatMul/ReadVariableOp¬
mnist/fc_4/MatMulMatMulmnist/fc_3/Relu:activations:0(mnist/fc_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_4/MatMul®
!mnist/fc_4/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_4/BiasAdd/ReadVariableOp®
mnist/fc_4/BiasAddBiasAddmnist/fc_4/MatMul:product:0)mnist/fc_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_4/BiasAddz
mnist/fc_4/ReluRelumnist/fc_4/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_4/Relu°
 mnist/fc_5/MatMul/ReadVariableOpReadVariableOp)mnist_fc_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_5/MatMul/ReadVariableOp¬
mnist/fc_5/MatMulMatMulmnist/fc_4/Relu:activations:0(mnist/fc_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_5/MatMul®
!mnist/fc_5/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_5/BiasAdd/ReadVariableOp®
mnist/fc_5/BiasAddBiasAddmnist/fc_5/MatMul:product:0)mnist/fc_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_5/BiasAddz
mnist/fc_5/ReluRelumnist/fc_5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_5/Relu°
 mnist/fc_6/MatMul/ReadVariableOpReadVariableOp)mnist_fc_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_6/MatMul/ReadVariableOp¬
mnist/fc_6/MatMulMatMulmnist/fc_5/Relu:activations:0(mnist/fc_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_6/MatMul®
!mnist/fc_6/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_6/BiasAdd/ReadVariableOp®
mnist/fc_6/BiasAddBiasAddmnist/fc_6/MatMul:product:0)mnist/fc_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_6/BiasAddz
mnist/fc_6/ReluRelumnist/fc_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_6/Relu°
 mnist/fc_7/MatMul/ReadVariableOpReadVariableOp)mnist_fc_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_7/MatMul/ReadVariableOp¬
mnist/fc_7/MatMulMatMulmnist/fc_6/Relu:activations:0(mnist/fc_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_7/MatMul®
!mnist/fc_7/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_7/BiasAdd/ReadVariableOp®
mnist/fc_7/BiasAddBiasAddmnist/fc_7/MatMul:product:0)mnist/fc_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_7/BiasAddz
mnist/fc_7/ReluRelumnist/fc_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_7/Relu°
 mnist/fc_8/MatMul/ReadVariableOpReadVariableOp)mnist_fc_8_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_8/MatMul/ReadVariableOp¬
mnist/fc_8/MatMulMatMulmnist/fc_7/Relu:activations:0(mnist/fc_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_8/MatMul®
!mnist/fc_8/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_8/BiasAdd/ReadVariableOp®
mnist/fc_8/BiasAddBiasAddmnist/fc_8/MatMul:product:0)mnist/fc_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_8/BiasAddz
mnist/fc_8/ReluRelumnist/fc_8/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_8/Relu¯
 mnist/fc_9/MatMul/ReadVariableOpReadVariableOp)mnist_fc_9_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02"
 mnist/fc_9/MatMul/ReadVariableOp«
mnist/fc_9/MatMulMatMulmnist/fc_8/Relu:activations:0(mnist/fc_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mnist/fc_9/MatMul­
!mnist/fc_9/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!mnist/fc_9/BiasAdd/ReadVariableOp­
mnist/fc_9/BiasAddBiasAddmnist/fc_9/MatMul:product:0)mnist/fc_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mnist/fc_9/BiasAddy
mnist/fc_9/ReluRelumnist/fc_9/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mnist/fc_9/Relu±
!mnist/fc_10/MatMul/ReadVariableOpReadVariableOp*mnist_fc_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!mnist/fc_10/MatMul/ReadVariableOp®
mnist/fc_10/MatMulMatMulmnist/fc_9/Relu:activations:0)mnist/fc_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mnist/fc_10/MatMul°
"mnist/fc_10/BiasAdd/ReadVariableOpReadVariableOp+mnist_fc_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"mnist/fc_10/BiasAdd/ReadVariableOp±
mnist/fc_10/BiasAddBiasAddmnist/fc_10/MatMul:product:0*mnist/fc_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mnist/fc_10/BiasAdd|
mnist/fc_10/ReluRelumnist/fc_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mnist/fc_10/Relu±
!mnist/fc_11/MatMul/ReadVariableOpReadVariableOp*mnist_fc_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02#
!mnist/fc_11/MatMul/ReadVariableOp¯
mnist/fc_11/MatMulMatMulmnist/fc_10/Relu:activations:0)mnist/fc_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_11/MatMul°
"mnist/fc_11/BiasAdd/ReadVariableOpReadVariableOp+mnist_fc_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"mnist/fc_11/BiasAdd/ReadVariableOp±
mnist/fc_11/BiasAddBiasAddmnist/fc_11/MatMul:product:0*mnist/fc_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_11/BiasAdd|
mnist/fc_11/ReluRelumnist/fc_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_11/Relu´
"mnist/output/MatMul/ReadVariableOpReadVariableOp+mnist_output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"mnist/output/MatMul/ReadVariableOp²
mnist/output/MatMulMatMulmnist/fc_11/Relu:activations:0*mnist/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mnist/output/MatMul³
#mnist/output/BiasAdd/ReadVariableOpReadVariableOp,mnist_output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#mnist/output/BiasAdd/ReadVariableOpµ
mnist/output/BiasAddBiasAddmnist/output/MatMul:product:0+mnist/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mnist/output/BiasAdd
mnist/output/SoftmaxSoftmaxmnist/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
mnist/output/SoftmaxÎ
IdentityIdentitymnist/output/Softmax:softmax:0"^mnist/fc_1/BiasAdd/ReadVariableOp!^mnist/fc_1/MatMul/ReadVariableOp#^mnist/fc_10/BiasAdd/ReadVariableOp"^mnist/fc_10/MatMul/ReadVariableOp#^mnist/fc_11/BiasAdd/ReadVariableOp"^mnist/fc_11/MatMul/ReadVariableOp"^mnist/fc_2/BiasAdd/ReadVariableOp!^mnist/fc_2/MatMul/ReadVariableOp"^mnist/fc_3/BiasAdd/ReadVariableOp!^mnist/fc_3/MatMul/ReadVariableOp"^mnist/fc_4/BiasAdd/ReadVariableOp!^mnist/fc_4/MatMul/ReadVariableOp"^mnist/fc_5/BiasAdd/ReadVariableOp!^mnist/fc_5/MatMul/ReadVariableOp"^mnist/fc_6/BiasAdd/ReadVariableOp!^mnist/fc_6/MatMul/ReadVariableOp"^mnist/fc_7/BiasAdd/ReadVariableOp!^mnist/fc_7/MatMul/ReadVariableOp"^mnist/fc_8/BiasAdd/ReadVariableOp!^mnist/fc_8/MatMul/ReadVariableOp"^mnist/fc_9/BiasAdd/ReadVariableOp!^mnist/fc_9/MatMul/ReadVariableOp$^mnist/output/BiasAdd/ReadVariableOp#^mnist/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2F
!mnist/fc_1/BiasAdd/ReadVariableOp!mnist/fc_1/BiasAdd/ReadVariableOp2D
 mnist/fc_1/MatMul/ReadVariableOp mnist/fc_1/MatMul/ReadVariableOp2H
"mnist/fc_10/BiasAdd/ReadVariableOp"mnist/fc_10/BiasAdd/ReadVariableOp2F
!mnist/fc_10/MatMul/ReadVariableOp!mnist/fc_10/MatMul/ReadVariableOp2H
"mnist/fc_11/BiasAdd/ReadVariableOp"mnist/fc_11/BiasAdd/ReadVariableOp2F
!mnist/fc_11/MatMul/ReadVariableOp!mnist/fc_11/MatMul/ReadVariableOp2F
!mnist/fc_2/BiasAdd/ReadVariableOp!mnist/fc_2/BiasAdd/ReadVariableOp2D
 mnist/fc_2/MatMul/ReadVariableOp mnist/fc_2/MatMul/ReadVariableOp2F
!mnist/fc_3/BiasAdd/ReadVariableOp!mnist/fc_3/BiasAdd/ReadVariableOp2D
 mnist/fc_3/MatMul/ReadVariableOp mnist/fc_3/MatMul/ReadVariableOp2F
!mnist/fc_4/BiasAdd/ReadVariableOp!mnist/fc_4/BiasAdd/ReadVariableOp2D
 mnist/fc_4/MatMul/ReadVariableOp mnist/fc_4/MatMul/ReadVariableOp2F
!mnist/fc_5/BiasAdd/ReadVariableOp!mnist/fc_5/BiasAdd/ReadVariableOp2D
 mnist/fc_5/MatMul/ReadVariableOp mnist/fc_5/MatMul/ReadVariableOp2F
!mnist/fc_6/BiasAdd/ReadVariableOp!mnist/fc_6/BiasAdd/ReadVariableOp2D
 mnist/fc_6/MatMul/ReadVariableOp mnist/fc_6/MatMul/ReadVariableOp2F
!mnist/fc_7/BiasAdd/ReadVariableOp!mnist/fc_7/BiasAdd/ReadVariableOp2D
 mnist/fc_7/MatMul/ReadVariableOp mnist/fc_7/MatMul/ReadVariableOp2F
!mnist/fc_8/BiasAdd/ReadVariableOp!mnist/fc_8/BiasAdd/ReadVariableOp2D
 mnist/fc_8/MatMul/ReadVariableOp mnist/fc_8/MatMul/ReadVariableOp2F
!mnist/fc_9/BiasAdd/ReadVariableOp!mnist/fc_9/BiasAdd/ReadVariableOp2D
 mnist/fc_9/MatMul/ReadVariableOp mnist/fc_9/MatMul/ReadVariableOp2J
#mnist/output/BiasAdd/ReadVariableOp#mnist/output/BiasAdd/ReadVariableOp2H
"mnist/output/MatMul/ReadVariableOp"mnist/output/MatMul/ReadVariableOp:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
î	
Ú
A__inference_fc_9_layer_call_and_return_conditional_losses_6777552

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_6_layer_call_and_return_conditional_losses_6776548

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_7_layer_call_and_return_conditional_losses_6777512

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_7_layer_call_fn_6777521

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_67765752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_5_layer_call_fn_6777481

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_67765212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì	
Û
B__inference_fc_10_layer_call_and_return_conditional_losses_6776656

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_6776394

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_8_layer_call_fn_6777541

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_67766022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_5_layer_call_and_return_conditional_losses_6777472

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_4_layer_call_and_return_conditional_losses_6776494

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î	
Ú
A__inference_fc_9_layer_call_and_return_conditional_losses_6776629

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_1_layer_call_and_return_conditional_losses_6776413

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì	
Û
B__inference_fc_11_layer_call_and_return_conditional_losses_6776683

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò=

B__inference_mnist_layer_call_and_return_conditional_losses_6776727	
input
fc_1_6776424
fc_1_6776426
fc_2_6776451
fc_2_6776453
fc_3_6776478
fc_3_6776480
fc_4_6776505
fc_4_6776507
fc_5_6776532
fc_5_6776534
fc_6_6776559
fc_6_6776561
fc_7_6776586
fc_7_6776588
fc_8_6776613
fc_8_6776615
fc_9_6776640
fc_9_6776642
fc_10_6776667
fc_10_6776669
fc_11_6776694
fc_11_6776696
output_6776721
output_6776723
identity¢fc_1/StatefulPartitionedCall¢fc_10/StatefulPartitionedCall¢fc_11/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢fc_6/StatefulPartitionedCall¢fc_7/StatefulPartitionedCall¢fc_8/StatefulPartitionedCall¢fc_9/StatefulPartitionedCall¢output/StatefulPartitionedCallÕ
flatten/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_67763942
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_6776424fc_1_6776426*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_67764132
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_6776451fc_2_6776453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_67764402
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_6776478fc_3_6776480*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_67764672
fc_3/StatefulPartitionedCall¦
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_6776505fc_4_6776507*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_67764942
fc_4/StatefulPartitionedCall¦
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_6776532fc_5_6776534*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_67765212
fc_5/StatefulPartitionedCall¦
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_6776559fc_6_6776561*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_67765482
fc_6/StatefulPartitionedCall¦
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0fc_7_6776586fc_7_6776588*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_67765752
fc_7/StatefulPartitionedCall¦
fc_8/StatefulPartitionedCallStatefulPartitionedCall%fc_7/StatefulPartitionedCall:output:0fc_8_6776613fc_8_6776615*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_67766022
fc_8/StatefulPartitionedCall¥
fc_9/StatefulPartitionedCallStatefulPartitionedCall%fc_8/StatefulPartitionedCall:output:0fc_9_6776640fc_9_6776642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_67766292
fc_9/StatefulPartitionedCallª
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_6776667fc_10_6776669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_67766562
fc_10/StatefulPartitionedCall«
fc_11/StatefulPartitionedCallStatefulPartitionedCall&fc_10/StatefulPartitionedCall:output:0fc_11_6776694fc_11_6776696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_67766832
fc_11/StatefulPartitionedCall°
output/StatefulPartitionedCallStatefulPartitionedCall&fc_11/StatefulPartitionedCall:output:0output_6776721output_6776723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_67767102 
output/StatefulPartitionedCalló
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_10/StatefulPartitionedCall^fc_11/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^fc_6/StatefulPartitionedCall^fc_7/StatefulPartitionedCall^fc_8/StatefulPartitionedCall^fc_9/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2>
fc_11/StatefulPartitionedCallfc_11/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2<
fc_8/StatefulPartitionedCallfc_8/StatefulPartitionedCall2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
ô	
Ú
A__inference_fc_2_layer_call_and_return_conditional_losses_6777412

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_6777376

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_4_layer_call_and_return_conditional_losses_6777452

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ=

B__inference_mnist_layer_call_and_return_conditional_losses_6776978

inputs
fc_1_6776917
fc_1_6776919
fc_2_6776922
fc_2_6776924
fc_3_6776927
fc_3_6776929
fc_4_6776932
fc_4_6776934
fc_5_6776937
fc_5_6776939
fc_6_6776942
fc_6_6776944
fc_7_6776947
fc_7_6776949
fc_8_6776952
fc_8_6776954
fc_9_6776957
fc_9_6776959
fc_10_6776962
fc_10_6776964
fc_11_6776967
fc_11_6776969
output_6776972
output_6776974
identity¢fc_1/StatefulPartitionedCall¢fc_10/StatefulPartitionedCall¢fc_11/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢fc_6/StatefulPartitionedCall¢fc_7/StatefulPartitionedCall¢fc_8/StatefulPartitionedCall¢fc_9/StatefulPartitionedCall¢output/StatefulPartitionedCallÖ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_67763942
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_6776917fc_1_6776919*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_67764132
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_6776922fc_2_6776924*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_67764402
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_6776927fc_3_6776929*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_67764672
fc_3/StatefulPartitionedCall¦
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_6776932fc_4_6776934*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_67764942
fc_4/StatefulPartitionedCall¦
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_6776937fc_5_6776939*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_67765212
fc_5/StatefulPartitionedCall¦
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_6776942fc_6_6776944*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_67765482
fc_6/StatefulPartitionedCall¦
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0fc_7_6776947fc_7_6776949*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_67765752
fc_7/StatefulPartitionedCall¦
fc_8/StatefulPartitionedCallStatefulPartitionedCall%fc_7/StatefulPartitionedCall:output:0fc_8_6776952fc_8_6776954*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_67766022
fc_8/StatefulPartitionedCall¥
fc_9/StatefulPartitionedCallStatefulPartitionedCall%fc_8/StatefulPartitionedCall:output:0fc_9_6776957fc_9_6776959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_67766292
fc_9/StatefulPartitionedCallª
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_6776962fc_10_6776964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_67766562
fc_10/StatefulPartitionedCall«
fc_11/StatefulPartitionedCallStatefulPartitionedCall&fc_10/StatefulPartitionedCall:output:0fc_11_6776967fc_11_6776969*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_67766832
fc_11/StatefulPartitionedCall°
output/StatefulPartitionedCallStatefulPartitionedCall&fc_11/StatefulPartitionedCall:output:0output_6776972output_6776974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_67767102 
output/StatefulPartitionedCalló
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_10/StatefulPartitionedCall^fc_11/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^fc_6/StatefulPartitionedCall^fc_7/StatefulPartitionedCall^fc_8/StatefulPartitionedCall^fc_9/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*
_input_shapes}
{:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2>
fc_11/StatefulPartitionedCallfc_11/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2<
fc_8/StatefulPartitionedCallfc_8/StatefulPartitionedCall2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
{
&__inference_fc_1_layer_call_fn_6777401

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_67764132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_6_layer_call_and_return_conditional_losses_6777492

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
|
'__inference_fc_11_layer_call_fn_6777601

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_67766832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*­
serving_default
?
input6
serving_default_input:0ÿÿÿÿÿÿÿÿÿ:
output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:Â
»l
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer_with_weights-10
layer-12
layer_with_weights-11
layer-13
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+¦&call_and_return_all_conditional_losses
§_default_save_signature
¨__call__"g
_tf_keras_networkìf{"class_name": "Functional", "name": "mnist", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_6", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_7", "inbound_nodes": [[["fc_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_8", "inbound_nodes": [[["fc_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_9", "inbound_nodes": [[["fc_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_10", "inbound_nodes": [[["fc_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_11", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_11", "inbound_nodes": [[["fc_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc_11", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_6", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_7", "inbound_nodes": [[["fc_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_8", "inbound_nodes": [[["fc_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_9", "inbound_nodes": [[["fc_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_10", "inbound_nodes": [[["fc_9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_11", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_11", "inbound_nodes": [[["fc_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc_11", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}}}
õ"ò
_tf_keras_input_layerÒ{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
ä
	variables
trainable_variables
regularization_losses
	keras_api
+©&call_and_return_all_conditional_losses
ª__call__"Ó
_tf_keras_layer¹{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ð

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+«&call_and_return_all_conditional_losses
¬__call__"É
_tf_keras_layer¯{"class_name": "Dense", "name": "fc_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
ò

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
+­&call_and_return_all_conditional_losses
®__call__"Ë
_tf_keras_layer±{"class_name": "Dense", "name": "fc_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
ñ

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+¯&call_and_return_all_conditional_losses
°__call__"Ê
_tf_keras_layer°{"class_name": "Dense", "name": "fc_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
ï

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
+±&call_and_return_all_conditional_losses
²__call__"È
_tf_keras_layer®{"class_name": "Dense", "name": "fc_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ï

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
+³&call_and_return_all_conditional_losses
´__call__"È
_tf_keras_layer®{"class_name": "Dense", "name": "fc_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ï

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
+µ&call_and_return_all_conditional_losses
¶__call__"È
_tf_keras_layer®{"class_name": "Dense", "name": "fc_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
ï

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
+·&call_and_return_all_conditional_losses
¸__call__"È
_tf_keras_layer®{"class_name": "Dense", "name": "fc_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
ï

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
+¹&call_and_return_all_conditional_losses
º__call__"È
_tf_keras_layer®{"class_name": "Dense", "name": "fc_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
î

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
+»&call_and_return_all_conditional_losses
¼__call__"Ç
_tf_keras_layer­{"class_name": "Dense", "name": "fc_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
î

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
+½&call_and_return_all_conditional_losses
¾__call__"Ç
_tf_keras_layer­{"class_name": "Dense", "name": "fc_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
î

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
+¿&call_and_return_all_conditional_losses
À__call__"Ç
_tf_keras_layer­{"class_name": "Dense", "name": "fc_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_11", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
ó

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
+Á&call_and_return_all_conditional_losses
Â__call__"Ì
_tf_keras_layer²{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
Ö
0
1
2
3
$4
%5
*6
+7
08
19
610
711
<12
=13
B14
C15
H16
I17
N18
O19
T20
U21
Z22
[23"
trackable_list_wrapper
Ö
0
1
2
3
$4
%5
*6
+7
08
19
610
711
<12
=13
B14
C15
H16
I17
N18
O19
T20
U21
Z22
[23"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
`layer_metrics
	variables
anon_trainable_variables
bmetrics

clayers
dlayer_regularization_losses
trainable_variables
regularization_losses
¨__call__
§_default_save_signature
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses"
_generic_user_object
-
Ãserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
elayer_metrics
	variables
fmetrics
gnon_trainable_variables

hlayers
ilayer_regularization_losses
trainable_variables
regularization_losses
ª__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
:
2fc_1/kernel
:2	fc_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
jlayer_metrics
	variables
kmetrics
lnon_trainable_variables

mlayers
nlayer_regularization_losses
trainable_variables
regularization_losses
¬__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
:
2fc_2/kernel
:2	fc_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
olayer_metrics
 	variables
pmetrics
qnon_trainable_variables

rlayers
slayer_regularization_losses
!trainable_variables
"regularization_losses
®__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
:
2fc_3/kernel
:2	fc_3/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
tlayer_metrics
&	variables
umetrics
vnon_trainable_variables

wlayers
xlayer_regularization_losses
'trainable_variables
(regularization_losses
°__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
_generic_user_object
:
2fc_4/kernel
:2	fc_4/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
ylayer_metrics
,	variables
zmetrics
{non_trainable_variables

|layers
}layer_regularization_losses
-trainable_variables
.regularization_losses
²__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
:
2fc_5/kernel
:2	fc_5/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
³
~layer_metrics
2	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
3trainable_variables
4regularization_losses
´__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
:
2fc_6/kernel
:2	fc_6/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
8	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
9trainable_variables
:regularization_losses
¶__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
:
2fc_7/kernel
:2	fc_7/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
>	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
?trainable_variables
@regularization_losses
¸__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
:
2fc_8/kernel
:2	fc_8/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
D	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
Etrainable_variables
Fregularization_losses
º__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
:	@2fc_9/kernel
:@2	fc_9/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
J	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
Ktrainable_variables
Lregularization_losses
¼__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
:@ 2fc_10/kernel
: 2
fc_10/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
P	variables
metrics
non_trainable_variables
layers
 layer_regularization_losses
Qtrainable_variables
Rregularization_losses
¾__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
: 2fc_11/kernel
:2
fc_11/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
V	variables
metrics
non_trainable_variables
layers
  layer_regularization_losses
Wtrainable_variables
Xregularization_losses
À__call__
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
_generic_user_object
:
2output/kernel
:
2output/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¡layer_metrics
\	variables
¢metrics
£non_trainable_variables
¤layers
 ¥layer_regularization_losses
]trainable_variables
^regularization_losses
Â__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ö2Ó
B__inference_mnist_layer_call_and_return_conditional_losses_6777264
B__inference_mnist_layer_call_and_return_conditional_losses_6777174
B__inference_mnist_layer_call_and_return_conditional_losses_6776792
B__inference_mnist_layer_call_and_return_conditional_losses_6776727À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
"__inference__wrapped_model_6776384¼
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *,¢)
'$
inputÿÿÿÿÿÿÿÿÿ
ê2ç
'__inference_mnist_layer_call_fn_6776911
'__inference_mnist_layer_call_fn_6777370
'__inference_mnist_layer_call_fn_6777317
'__inference_mnist_layer_call_fn_6777029À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_flatten_layer_call_and_return_conditional_losses_6777376¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_layer_call_fn_6777381¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_1_layer_call_and_return_conditional_losses_6777392¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_1_layer_call_fn_6777401¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_2_layer_call_and_return_conditional_losses_6777412¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_2_layer_call_fn_6777421¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_3_layer_call_and_return_conditional_losses_6777432¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_3_layer_call_fn_6777441¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_4_layer_call_and_return_conditional_losses_6777452¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_4_layer_call_fn_6777461¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_5_layer_call_and_return_conditional_losses_6777472¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_5_layer_call_fn_6777481¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_6_layer_call_and_return_conditional_losses_6777492¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_6_layer_call_fn_6777501¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_7_layer_call_and_return_conditional_losses_6777512¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_7_layer_call_fn_6777521¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_8_layer_call_and_return_conditional_losses_6777532¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_8_layer_call_fn_6777541¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_fc_9_layer_call_and_return_conditional_losses_6777552¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_fc_9_layer_call_fn_6777561¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_fc_10_layer_call_and_return_conditional_losses_6777572¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_fc_10_layer_call_fn_6777581¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_fc_11_layer_call_and_return_conditional_losses_6777592¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_fc_11_layer_call_fn_6777601¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_output_layer_call_and_return_conditional_losses_6777612¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_output_layer_call_fn_6777621¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÊBÇ
%__inference_signature_wrapper_6777084input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ª
"__inference__wrapped_model_6776384$%*+0167<=BCHINOTUZ[6¢3
,¢)
'$
inputÿÿÿÿÿÿÿÿÿ
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ
¢
B__inference_fc_10_layer_call_and_return_conditional_losses_6777572\NO/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 z
'__inference_fc_10_layer_call_fn_6777581ONO/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¢
B__inference_fc_11_layer_call_and_return_conditional_losses_6777592\TU/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_fc_11_layer_call_fn_6777601OTU/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_1_layer_call_and_return_conditional_losses_6777392^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_1_layer_call_fn_6777401Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_2_layer_call_and_return_conditional_losses_6777412^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_2_layer_call_fn_6777421Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_3_layer_call_and_return_conditional_losses_6777432^$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_3_layer_call_fn_6777441Q$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_4_layer_call_and_return_conditional_losses_6777452^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_4_layer_call_fn_6777461Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_5_layer_call_and_return_conditional_losses_6777472^010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_5_layer_call_fn_6777481Q010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_6_layer_call_and_return_conditional_losses_6777492^670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_6_layer_call_fn_6777501Q670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_7_layer_call_and_return_conditional_losses_6777512^<=0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_7_layer_call_fn_6777521Q<=0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_8_layer_call_and_return_conditional_losses_6777532^BC0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_8_layer_call_fn_6777541QBC0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
A__inference_fc_9_layer_call_and_return_conditional_losses_6777552]HI0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 z
&__inference_fc_9_layer_call_fn_6777561PHI0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@©
D__inference_flatten_layer_call_and_return_conditional_losses_6777376a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_flatten_layer_call_fn_6777381T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÈ
B__inference_mnist_layer_call_and_return_conditional_losses_6776727$%*+0167<=BCHINOTUZ[>¢;
4¢1
'$
inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 È
B__inference_mnist_layer_call_and_return_conditional_losses_6776792$%*+0167<=BCHINOTUZ[>¢;
4¢1
'$
inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 É
B__inference_mnist_layer_call_and_return_conditional_losses_6777174$%*+0167<=BCHINOTUZ[?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 É
B__inference_mnist_layer_call_and_return_conditional_losses_6777264$%*+0167<=BCHINOTUZ[?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
'__inference_mnist_layer_call_fn_6776911t$%*+0167<=BCHINOTUZ[>¢;
4¢1
'$
inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_mnist_layer_call_fn_6777029t$%*+0167<=BCHINOTUZ[>¢;
4¢1
'$
inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
 
'__inference_mnist_layer_call_fn_6777317u$%*+0167<=BCHINOTUZ[?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
 
'__inference_mnist_layer_call_fn_6777370u$%*+0167<=BCHINOTUZ[?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
£
C__inference_output_layer_call_and_return_conditional_losses_6777612\Z[/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 {
(__inference_output_layer_call_fn_6777621OZ[/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
¶
%__inference_signature_wrapper_6777084$%*+0167<=BCHINOTUZ[?¢<
¢ 
5ª2
0
input'$
inputÿÿÿÿÿÿÿÿÿ"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ
