??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12unknown8??
v
fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namefc_1/kernel
o
fc_1/kernel/Read/ReadVariableOpReadVariableOpfc_1/kernel*"
_output_shapes
:@*
dtype0
j
	fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	fc_1/bias
c
fc_1/bias/Read/ReadVariableOpReadVariableOp	fc_1/bias*
_output_shapes
:@*
dtype0
v
fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_namefc_2/kernel
o
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel*"
_output_shapes
:@@*
dtype0
j
	fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	fc_2/bias
c
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes
:@*
dtype0
v
fc_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_namefc_5/kernel
o
fc_5/kernel/Read/ReadVariableOpReadVariableOpfc_5/kernel*"
_output_shapes
:@ *
dtype0
j
	fc_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	fc_5/bias
c
fc_5/bias/Read/ReadVariableOpReadVariableOp	fc_5/bias*
_output_shapes
: *
dtype0
v
fc_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_namefc_6/kernel
o
fc_6/kernel/Read/ReadVariableOpReadVariableOpfc_6/kernel*"
_output_shapes
:  *
dtype0
j
	fc_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	fc_6/bias
c
fc_6/bias/Read/ReadVariableOpReadVariableOp	fc_6/bias*
_output_shapes
: *
dtype0
v
fc_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namefc_9/kernel
o
fc_9/kernel/Read/ReadVariableOpReadVariableOpfc_9/kernel*"
_output_shapes
: *
dtype0
j
	fc_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_9/bias
c
fc_9/bias/Read/ReadVariableOpReadVariableOp	fc_9/bias*
_output_shapes
:*
dtype0
x
fc_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namefc_10/kernel
q
 fc_10/kernel/Read/ReadVariableOpReadVariableOpfc_10/kernel*"
_output_shapes
:*
dtype0
l

fc_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
fc_10/bias
e
fc_10/bias/Read/ReadVariableOpReadVariableOp
fc_10/bias*
_output_shapes
:*
dtype0
w
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_nameoutput/kernel
p
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes
:	?
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
?5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?5
value?5B?5 B?5
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
R
regularization_losses
trainable_variables
	variables
	keras_api

	keras_api
h

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
h

"kernel
#bias
$regularization_losses
%trainable_variables
&	variables
'	keras_api
R
(regularization_losses
)trainable_variables
*	variables
+	keras_api
R
,regularization_losses
-trainable_variables
.	variables
/	keras_api
h

0kernel
1bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
h

6kernel
7bias
8regularization_losses
9trainable_variables
:	variables
;	keras_api
R
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
h

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
R
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
R
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
R
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
h

\kernel
]bias
^regularization_losses
_trainable_variables
`	variables
a	keras_api
 
f
0
1
"2
#3
04
15
66
77
D8
E9
J10
K11
\12
]13
f
0
1
"2
#3
04
15
66
77
D8
E9
J10
K11
\12
]13
?
bnon_trainable_variables
regularization_losses
clayer_metrics
dmetrics
elayer_regularization_losses
trainable_variables

flayers
	variables
 
 
 
 
?
gnon_trainable_variables
regularization_losses
hlayer_metrics
imetrics
jlayer_regularization_losses
trainable_variables

klayers
	variables
 
WU
VARIABLE_VALUEfc_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
lnon_trainable_variables
regularization_losses
mlayer_metrics
nmetrics
olayer_regularization_losses
trainable_variables

players
 	variables
WU
VARIABLE_VALUEfc_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1

"0
#1
?
qnon_trainable_variables
$regularization_losses
rlayer_metrics
smetrics
tlayer_regularization_losses
%trainable_variables

ulayers
&	variables
 
 
 
?
vnon_trainable_variables
(regularization_losses
wlayer_metrics
xmetrics
ylayer_regularization_losses
)trainable_variables

zlayers
*	variables
 
 
 
?
{non_trainable_variables
,regularization_losses
|layer_metrics
}metrics
~layer_regularization_losses
-trainable_variables

layers
.	variables
WU
VARIABLE_VALUEfc_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
?
?non_trainable_variables
2regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
3trainable_variables
?layers
4	variables
WU
VARIABLE_VALUEfc_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

60
71

60
71
?
?non_trainable_variables
8regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
9trainable_variables
?layers
:	variables
 
 
 
?
?non_trainable_variables
<regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
=trainable_variables
?layers
>	variables
 
 
 
?
?non_trainable_variables
@regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Atrainable_variables
?layers
B	variables
WU
VARIABLE_VALUEfc_9/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_9/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
?
?non_trainable_variables
Fregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Gtrainable_variables
?layers
H	variables
XV
VARIABLE_VALUEfc_10/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
fc_10/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
?
?non_trainable_variables
Lregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Mtrainable_variables
?layers
N	variables
 
 
 
?
?non_trainable_variables
Pregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Qtrainable_variables
?layers
R	variables
 
 
 
?
?non_trainable_variables
Tregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Utrainable_variables
?layers
V	variables
 
 
 
?
?non_trainable_variables
Xregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Ytrainable_variables
?layers
Z	variables
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1

\0
]1
?
?non_trainable_variables
^regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
_trainable_variables
?layers
`	variables
 
 
 
 
~
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
14
15
16
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
 
 
 
 
 
 
 
 
 
?
serving_default_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_5/kernel	fc_5/biasfc_6/kernel	fc_6/biasfc_9/kernel	fc_9/biasfc_10/kernel
fc_10/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2074957
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefc_1/kernel/Read/ReadVariableOpfc_1/bias/Read/ReadVariableOpfc_2/kernel/Read/ReadVariableOpfc_2/bias/Read/ReadVariableOpfc_5/kernel/Read/ReadVariableOpfc_5/bias/Read/ReadVariableOpfc_6/kernel/Read/ReadVariableOpfc_6/bias/Read/ReadVariableOpfc_9/kernel/Read/ReadVariableOpfc_9/bias/Read/ReadVariableOp fc_10/kernel/Read/ReadVariableOpfc_10/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_2075800
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_5/kernel	fc_5/biasfc_6/kernel	fc_6/biasfc_9/kernel	fc_9/biasfc_10/kernel
fc_10/biasoutput/kerneloutput/bias*
Tin
2*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_2075852??
?	
?
'__inference_mnist_layer_call_fn_2075291

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

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_20747372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
A__inference_fc_3_layer_call_and_return_conditional_losses_2075421

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?	
?
C__inference_output_layer_call_and_return_conditional_losses_2075660

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_2075691:
6fc_2_kernel_regularizer_square_readvariableop_resource
identity??-fc_2/kernel/Regularizer/Square/ReadVariableOp?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_2_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
IdentityIdentityfc_2/kernel/Regularizer/mul:z:0.^fc_2/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp
?
]
A__inference_fc_8_layer_call_and_return_conditional_losses_2074124

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_fc_6_layer_call_and_return_conditional_losses_2074332

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_6/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_6/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
A__inference_fc_1_layer_call_and_return_conditional_losses_2075363

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_2075702:
6fc_5_kernel_regularizer_square_readvariableop_resource
identity??-fc_5/kernel/Regularizer/Square/ReadVariableOp?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_5_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
IdentityIdentityfc_5/kernel/Regularizer/mul:z:0.^fc_5/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp
?
`
A__inference_fc_7_layer_call_and_return_conditional_losses_2075522

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_2074155

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?

"__inference__wrapped_model_2074100	
input:
6mnist_fc_1_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_1_biasadd_readvariableop_resource:
6mnist_fc_2_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_2_biasadd_readvariableop_resource:
6mnist_fc_5_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_5_biasadd_readvariableop_resource:
6mnist_fc_6_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_6_biasadd_readvariableop_resource:
6mnist_fc_9_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_9_biasadd_readvariableop_resource;
7mnist_fc_10_conv1d_expanddims_1_readvariableop_resource/
+mnist_fc_10_biasadd_readvariableop_resource/
+mnist_output_matmul_readvariableop_resource0
,mnist_output_biasadd_readvariableop_resource
identity??!mnist/fc_1/BiasAdd/ReadVariableOp?-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp?"mnist/fc_10/BiasAdd/ReadVariableOp?.mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_2/BiasAdd/ReadVariableOp?-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_5/BiasAdd/ReadVariableOp?-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_6/BiasAdd/ReadVariableOp?-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_9/BiasAdd/ReadVariableOp?-mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOp?#mnist/output/BiasAdd/ReadVariableOp?"mnist/output/MatMul/ReadVariableOp{
mnist/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
mnist/flatten/Const?
mnist/flatten/ReshapeReshapeinputmnist/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
mnist/flatten/Reshape?
%mnist/tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%mnist/tf.expand_dims_3/ExpandDims/dim?
!mnist/tf.expand_dims_3/ExpandDims
ExpandDimsmnist/flatten/Reshape:output:0.mnist/tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2#
!mnist/tf.expand_dims_3/ExpandDims?
 mnist/fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_1/conv1d/ExpandDims/dim?
mnist/fc_1/conv1d/ExpandDims
ExpandDims*mnist/tf.expand_dims_3/ExpandDims:output:0)mnist/fc_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
mnist/fc_1/conv1d/ExpandDims?
-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02/
-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp?
"mnist/fc_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"mnist/fc_1/conv1d/ExpandDims_1/dim?
mnist/fc_1/conv1d/ExpandDims_1
ExpandDims5mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp:value:0+mnist/fc_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2 
mnist/fc_1/conv1d/ExpandDims_1?
mnist/fc_1/conv1dConv2D%mnist/fc_1/conv1d/ExpandDims:output:0'mnist/fc_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
mnist/fc_1/conv1d?
mnist/fc_1/conv1d/SqueezeSqueezemnist/fc_1/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
mnist/fc_1/conv1d/Squeeze?
!mnist/fc_1/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!mnist/fc_1/BiasAdd/ReadVariableOp?
mnist/fc_1/BiasAddBiasAdd"mnist/fc_1/conv1d/Squeeze:output:0)mnist/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
mnist/fc_1/BiasAdd~
mnist/fc_1/ReluRelumnist/fc_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
mnist/fc_1/Relu?
 mnist/fc_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_2/conv1d/ExpandDims/dim?
mnist/fc_2/conv1d/ExpandDims
ExpandDimsmnist/fc_1/Relu:activations:0)mnist/fc_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
mnist/fc_2/conv1d/ExpandDims?
-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02/
-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp?
"mnist/fc_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"mnist/fc_2/conv1d/ExpandDims_1/dim?
mnist/fc_2/conv1d/ExpandDims_1
ExpandDims5mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp:value:0+mnist/fc_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2 
mnist/fc_2/conv1d/ExpandDims_1?
mnist/fc_2/conv1dConv2D%mnist/fc_2/conv1d/ExpandDims:output:0'mnist/fc_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
mnist/fc_2/conv1d?
mnist/fc_2/conv1d/SqueezeSqueezemnist/fc_2/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
mnist/fc_2/conv1d/Squeeze?
!mnist/fc_2/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!mnist/fc_2/BiasAdd/ReadVariableOp?
mnist/fc_2/BiasAddBiasAdd"mnist/fc_2/conv1d/Squeeze:output:0)mnist/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
mnist/fc_2/BiasAdd~
mnist/fc_2/ReluRelumnist/fc_2/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
mnist/fc_2/Relu?
mnist/fc_3/IdentityIdentitymnist/fc_2/Relu:activations:0*
T0*,
_output_shapes
:??????????@2
mnist/fc_3/Identityx
mnist/fc_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
mnist/fc_4/ExpandDims/dim?
mnist/fc_4/ExpandDims
ExpandDimsmnist/fc_3/Identity:output:0"mnist/fc_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
mnist/fc_4/ExpandDims?
mnist/fc_4/MaxPoolMaxPoolmnist/fc_4/ExpandDims:output:0*0
_output_shapes
:??????????@*
ksize
*
paddingVALID*
strides
2
mnist/fc_4/MaxPool?
mnist/fc_4/SqueezeSqueezemnist/fc_4/MaxPool:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2
mnist/fc_4/Squeeze?
 mnist/fc_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_5/conv1d/ExpandDims/dim?
mnist/fc_5/conv1d/ExpandDims
ExpandDimsmnist/fc_4/Squeeze:output:0)mnist/fc_5/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
mnist/fc_5/conv1d/ExpandDims?
-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02/
-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp?
"mnist/fc_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"mnist/fc_5/conv1d/ExpandDims_1/dim?
mnist/fc_5/conv1d/ExpandDims_1
ExpandDims5mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp:value:0+mnist/fc_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2 
mnist/fc_5/conv1d/ExpandDims_1?
mnist/fc_5/conv1dConv2D%mnist/fc_5/conv1d/ExpandDims:output:0'mnist/fc_5/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
mnist/fc_5/conv1d?
mnist/fc_5/conv1d/SqueezeSqueezemnist/fc_5/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
mnist/fc_5/conv1d/Squeeze?
!mnist/fc_5/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!mnist/fc_5/BiasAdd/ReadVariableOp?
mnist/fc_5/BiasAddBiasAdd"mnist/fc_5/conv1d/Squeeze:output:0)mnist/fc_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_5/BiasAdd~
mnist/fc_5/ReluRelumnist/fc_5/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_5/Relu?
 mnist/fc_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_6/conv1d/ExpandDims/dim?
mnist/fc_6/conv1d/ExpandDims
ExpandDimsmnist/fc_5/Relu:activations:0)mnist/fc_6/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
mnist/fc_6/conv1d/ExpandDims?
-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp?
"mnist/fc_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"mnist/fc_6/conv1d/ExpandDims_1/dim?
mnist/fc_6/conv1d/ExpandDims_1
ExpandDims5mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp:value:0+mnist/fc_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2 
mnist/fc_6/conv1d/ExpandDims_1?
mnist/fc_6/conv1dConv2D%mnist/fc_6/conv1d/ExpandDims:output:0'mnist/fc_6/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
mnist/fc_6/conv1d?
mnist/fc_6/conv1d/SqueezeSqueezemnist/fc_6/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
mnist/fc_6/conv1d/Squeeze?
!mnist/fc_6/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!mnist/fc_6/BiasAdd/ReadVariableOp?
mnist/fc_6/BiasAddBiasAdd"mnist/fc_6/conv1d/Squeeze:output:0)mnist/fc_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_6/BiasAdd~
mnist/fc_6/ReluRelumnist/fc_6/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_6/Relu?
mnist/fc_7/IdentityIdentitymnist/fc_6/Relu:activations:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_7/Identityx
mnist/fc_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
mnist/fc_8/ExpandDims/dim?
mnist/fc_8/ExpandDims
ExpandDimsmnist/fc_7/Identity:output:0"mnist/fc_8/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
mnist/fc_8/ExpandDims?
mnist/fc_8/MaxPoolMaxPoolmnist/fc_8/ExpandDims:output:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
mnist/fc_8/MaxPool?
mnist/fc_8/SqueezeSqueezemnist/fc_8/MaxPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2
mnist/fc_8/Squeeze?
 mnist/fc_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_9/conv1d/ExpandDims/dim?
mnist/fc_9/conv1d/ExpandDims
ExpandDimsmnist/fc_8/Squeeze:output:0)mnist/fc_9/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
mnist/fc_9/conv1d/ExpandDims?
-mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOp?
"mnist/fc_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"mnist/fc_9/conv1d/ExpandDims_1/dim?
mnist/fc_9/conv1d/ExpandDims_1
ExpandDims5mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOp:value:0+mnist/fc_9/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2 
mnist/fc_9/conv1d/ExpandDims_1?
mnist/fc_9/conv1dConv2D%mnist/fc_9/conv1d/ExpandDims:output:0'mnist/fc_9/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
mnist/fc_9/conv1d?
mnist/fc_9/conv1d/SqueezeSqueezemnist/fc_9/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
mnist/fc_9/conv1d/Squeeze?
!mnist/fc_9/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!mnist/fc_9/BiasAdd/ReadVariableOp?
mnist/fc_9/BiasAddBiasAdd"mnist/fc_9/conv1d/Squeeze:output:0)mnist/fc_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
mnist/fc_9/BiasAdd~
mnist/fc_9/ReluRelumnist/fc_9/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
mnist/fc_9/Relu?
!mnist/fc_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!mnist/fc_10/conv1d/ExpandDims/dim?
mnist/fc_10/conv1d/ExpandDims
ExpandDimsmnist/fc_9/Relu:activations:0*mnist/fc_10/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
mnist/fc_10/conv1d/ExpandDims?
.mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp7mnist_fc_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype020
.mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOp?
#mnist/fc_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#mnist/fc_10/conv1d/ExpandDims_1/dim?
mnist/fc_10/conv1d/ExpandDims_1
ExpandDims6mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOp:value:0,mnist/fc_10/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2!
mnist/fc_10/conv1d/ExpandDims_1?
mnist/fc_10/conv1dConv2D&mnist/fc_10/conv1d/ExpandDims:output:0(mnist/fc_10/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
mnist/fc_10/conv1d?
mnist/fc_10/conv1d/SqueezeSqueezemnist/fc_10/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
mnist/fc_10/conv1d/Squeeze?
"mnist/fc_10/BiasAdd/ReadVariableOpReadVariableOp+mnist_fc_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"mnist/fc_10/BiasAdd/ReadVariableOp?
mnist/fc_10/BiasAddBiasAdd#mnist/fc_10/conv1d/Squeeze:output:0*mnist/fc_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
mnist/fc_10/BiasAdd?
mnist/fc_10/ReluRelumnist/fc_10/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
mnist/fc_10/Relu?
mnist/fc_11/IdentityIdentitymnist/fc_10/Relu:activations:0*
T0*,
_output_shapes
:??????????2
mnist/fc_11/Identityz
mnist/fc_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
mnist/fc_12/ExpandDims/dim?
mnist/fc_12/ExpandDims
ExpandDimsmnist/fc_11/Identity:output:0#mnist/fc_12/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
mnist/fc_12/ExpandDims?
mnist/fc_12/MaxPoolMaxPoolmnist/fc_12/ExpandDims:output:0*/
_output_shapes
:?????????^*
ksize
*
paddingVALID*
strides
2
mnist/fc_12/MaxPool?
mnist/fc_12/SqueezeSqueezemnist/fc_12/MaxPool:output:0*
T0*+
_output_shapes
:?????????^*
squeeze_dims
2
mnist/fc_12/Squeezeu
mnist/fc13/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
mnist/fc13/Const?
mnist/fc13/ReshapeReshapemnist/fc_12/Squeeze:output:0mnist/fc13/Const:output:0*
T0*(
_output_shapes
:??????????2
mnist/fc13/Reshape?
"mnist/output/MatMul/ReadVariableOpReadVariableOp+mnist_output_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02$
"mnist/output/MatMul/ReadVariableOp?
mnist/output/MatMulMatMulmnist/fc13/Reshape:output:0*mnist/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
mnist/output/MatMul?
#mnist/output/BiasAdd/ReadVariableOpReadVariableOp,mnist_output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#mnist/output/BiasAdd/ReadVariableOp?
mnist/output/BiasAddBiasAddmnist/output/MatMul:product:0+mnist/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
mnist/output/BiasAdd?
mnist/output/SoftmaxSoftmaxmnist/output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
mnist/output/Softmax?
IdentityIdentitymnist/output/Softmax:softmax:0"^mnist/fc_1/BiasAdd/ReadVariableOp.^mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp#^mnist/fc_10/BiasAdd/ReadVariableOp/^mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_2/BiasAdd/ReadVariableOp.^mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_5/BiasAdd/ReadVariableOp.^mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_6/BiasAdd/ReadVariableOp.^mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_9/BiasAdd/ReadVariableOp.^mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOp$^mnist/output/BiasAdd/ReadVariableOp#^mnist/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2F
!mnist/fc_1/BiasAdd/ReadVariableOp!mnist/fc_1/BiasAdd/ReadVariableOp2^
-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp2H
"mnist/fc_10/BiasAdd/ReadVariableOp"mnist/fc_10/BiasAdd/ReadVariableOp2`
.mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOp.mnist/fc_10/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_2/BiasAdd/ReadVariableOp!mnist/fc_2/BiasAdd/ReadVariableOp2^
-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_5/BiasAdd/ReadVariableOp!mnist/fc_5/BiasAdd/ReadVariableOp2^
-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_6/BiasAdd/ReadVariableOp!mnist/fc_6/BiasAdd/ReadVariableOp2^
-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_9/BiasAdd/ReadVariableOp!mnist/fc_9/BiasAdd/ReadVariableOp2^
-mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_9/conv1d/ExpandDims_1/ReadVariableOp2J
#mnist/output/BiasAdd/ReadVariableOp#mnist/output/BiasAdd/ReadVariableOp2H
"mnist/output/MatMul/ReadVariableOp"mnist/output/MatMul/ReadVariableOp:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?	
?
'__inference_mnist_layer_call_fn_2074768	
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

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_20747372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
{
&__inference_fc_1_layer_call_fn_2075372

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_20741872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
}
(__inference_output_layer_call_fn_2075669

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_20745112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
B__inference_fc_11_layer_call_and_return_conditional_losses_2074467

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_fc_4_layer_call_and_return_conditional_losses_2074109

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
B
&__inference_fc13_layer_call_fn_2075649

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc13_layer_call_and_return_conditional_losses_20744922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????^:S O
+
_output_shapes
:?????????^
 
_user_specified_nameinputs
?
`
A__inference_fc_3_layer_call_and_return_conditional_losses_2074253

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?y
?
B__inference_mnist_layer_call_and_return_conditional_losses_2074564	
input
fc_1_2074198
fc_1_2074200
fc_2_2074236
fc_2_2074238
fc_5_2074305
fc_5_2074307
fc_6_2074343
fc_6_2074345
fc_9_2074412
fc_9_2074414
fc_10_2074450
fc_10_2074452
output_2074522
output_2074524
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_10/StatefulPartitionedCall?.fc_10/kernel/Regularizer/Square/ReadVariableOp?fc_11/StatefulPartitionedCall?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_3/StatefulPartitionedCall?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_7/StatefulPartitionedCall?fc_9/StatefulPartitionedCall?-fc_9/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_20741552
flatten/PartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0fc_1_2074198fc_1_2074200*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_20741872
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_2074236fc_2_2074238*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_20742252
fc_2/StatefulPartitionedCall?
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_20742532
fc_3/StatefulPartitionedCall?
fc_4/PartitionedCallPartitionedCall%fc_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_20741092
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_2074305fc_5_2074307*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_20742942
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_2074343fc_6_2074345*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_20743322
fc_6/StatefulPartitionedCall?
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0^fc_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_20743602
fc_7/StatefulPartitionedCall?
fc_8/PartitionedCallPartitionedCall%fc_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_20741242
fc_8/PartitionedCall?
fc_9/StatefulPartitionedCallStatefulPartitionedCallfc_8/PartitionedCall:output:0fc_9_2074412fc_9_2074414*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_20744012
fc_9/StatefulPartitionedCall?
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_2074450fc_10_2074452*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_20744392
fc_10/StatefulPartitionedCall?
fc_11/StatefulPartitionedCallStatefulPartitionedCall&fc_10/StatefulPartitionedCall:output:0^fc_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_20744672
fc_11/StatefulPartitionedCall?
fc_12/PartitionedCallPartitionedCall&fc_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_12_layer_call_and_return_conditional_losses_20741392
fc_12/PartitionedCall?
fc13/PartitionedCallPartitionedCallfc_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc13_layer_call_and_return_conditional_losses_20744922
fc13/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc13/PartitionedCall:output:0output_2074522output_2074524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_20745112 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_2074198*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_2074236*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_2074305*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_2074343*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_9_2074412*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_10_2074450*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_10/StatefulPartitionedCall/^fc_10/kernel/Regularizer/Square/ReadVariableOp^fc_11/StatefulPartitionedCall^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_3/StatefulPartitionedCall^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_7/StatefulPartitionedCall^fc_9/StatefulPartitionedCall.^fc_9/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp2>
fc_11/StatefulPartitionedCallfc_11/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
_
&__inference_fc_7_layer_call_fn_2075532

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_20743602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
a
B__inference_fc_11_layer_call_and_return_conditional_losses_2075623

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_fc_10_layer_call_and_return_conditional_losses_2075602

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?.fc_10/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp/^fc_10/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
'__inference_fc_11_layer_call_fn_2075633

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_20744672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
B__inference_fc_11_layer_call_and_return_conditional_losses_2075628

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_2075735;
7fc_10_kernel_regularizer_square_readvariableop_resource
identity??.fc_10/kernel/Regularizer/Square/ReadVariableOp?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7fc_10_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentity fc_10/kernel/Regularizer/mul:z:0/^fc_10/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp
?
C
'__inference_fc_12_layer_call_fn_2074145

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_12_layer_call_and_return_conditional_losses_20741392
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?t
?
B__inference_mnist_layer_call_and_return_conditional_losses_2074855

inputs
fc_1_2074776
fc_1_2074778
fc_2_2074781
fc_2_2074783
fc_5_2074788
fc_5_2074790
fc_6_2074793
fc_6_2074795
fc_9_2074800
fc_9_2074802
fc_10_2074805
fc_10_2074807
output_2074813
output_2074815
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_10/StatefulPartitionedCall?.fc_10/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_9/StatefulPartitionedCall?-fc_9/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_20741552
flatten/PartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0fc_1_2074776fc_1_2074778*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_20741872
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_2074781fc_2_2074783*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_20742252
fc_2/StatefulPartitionedCall?
fc_3/PartitionedCallPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_20742582
fc_3/PartitionedCall?
fc_4/PartitionedCallPartitionedCallfc_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_20741092
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_2074788fc_5_2074790*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_20742942
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_2074793fc_6_2074795*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_20743322
fc_6/StatefulPartitionedCall?
fc_7/PartitionedCallPartitionedCall%fc_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_20743652
fc_7/PartitionedCall?
fc_8/PartitionedCallPartitionedCallfc_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_20741242
fc_8/PartitionedCall?
fc_9/StatefulPartitionedCallStatefulPartitionedCallfc_8/PartitionedCall:output:0fc_9_2074800fc_9_2074802*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_20744012
fc_9/StatefulPartitionedCall?
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_2074805fc_10_2074807*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_20744392
fc_10/StatefulPartitionedCall?
fc_11/PartitionedCallPartitionedCall&fc_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_20744722
fc_11/PartitionedCall?
fc_12/PartitionedCallPartitionedCallfc_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_12_layer_call_and_return_conditional_losses_20741392
fc_12/PartitionedCall?
fc13/PartitionedCallPartitionedCallfc_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc13_layer_call_and_return_conditional_losses_20744922
fc13/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc13/PartitionedCall:output:0output_2074813output_2074815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_20745112 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_2074776*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_2074781*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_2074788*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_2074793*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_9_2074800*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_10_2074805*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_10/StatefulPartitionedCall/^fc_10/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_9/StatefulPartitionedCall.^fc_9/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_fc_9_layer_call_and_return_conditional_losses_2074401

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_9/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_9/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
B__inference_mnist_layer_call_and_return_conditional_losses_2075258

inputs4
0fc_1_conv1d_expanddims_1_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource4
0fc_2_conv1d_expanddims_1_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource4
0fc_5_conv1d_expanddims_1_readvariableop_resource(
$fc_5_biasadd_readvariableop_resource4
0fc_6_conv1d_expanddims_1_readvariableop_resource(
$fc_6_biasadd_readvariableop_resource4
0fc_9_conv1d_expanddims_1_readvariableop_resource(
$fc_9_biasadd_readvariableop_resource5
1fc_10_conv1d_expanddims_1_readvariableop_resource)
%fc_10_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??fc_1/BiasAdd/ReadVariableOp?'fc_1/conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_10/BiasAdd/ReadVariableOp?(fc_10/conv1d/ExpandDims_1/ReadVariableOp?.fc_10/kernel/Regularizer/Square/ReadVariableOp?fc_2/BiasAdd/ReadVariableOp?'fc_2/conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/BiasAdd/ReadVariableOp?'fc_5/conv1d/ExpandDims_1/ReadVariableOp?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/BiasAdd/ReadVariableOp?'fc_6/conv1d/ExpandDims_1/ReadVariableOp?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_9/BiasAdd/ReadVariableOp?'fc_9/conv1d/ExpandDims_1/ReadVariableOp?-fc_9/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDimsflatten/Reshape:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_1/conv1d/ExpandDims/dim?
fc_1/conv1d/ExpandDims
ExpandDims$tf.expand_dims_3/ExpandDims:output:0#fc_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_1/conv1d/ExpandDims?
'fc_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02)
'fc_1/conv1d/ExpandDims_1/ReadVariableOp~
fc_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_1/conv1d/ExpandDims_1/dim?
fc_1/conv1d/ExpandDims_1
ExpandDims/fc_1/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
fc_1/conv1d/ExpandDims_1?
fc_1/conv1dConv2Dfc_1/conv1d/ExpandDims:output:0!fc_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
fc_1/conv1d?
fc_1/conv1d/SqueezeSqueezefc_1/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
fc_1/conv1d/Squeeze?
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_1/BiasAdd/ReadVariableOp?
fc_1/BiasAddBiasAddfc_1/conv1d/Squeeze:output:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
fc_1/BiasAddl
	fc_1/ReluRelufc_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
	fc_1/Relu?
fc_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_2/conv1d/ExpandDims/dim?
fc_2/conv1d/ExpandDims
ExpandDimsfc_1/Relu:activations:0#fc_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
fc_2/conv1d/ExpandDims?
'fc_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02)
'fc_2/conv1d/ExpandDims_1/ReadVariableOp~
fc_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_2/conv1d/ExpandDims_1/dim?
fc_2/conv1d/ExpandDims_1
ExpandDims/fc_2/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
fc_2/conv1d/ExpandDims_1?
fc_2/conv1dConv2Dfc_2/conv1d/ExpandDims:output:0!fc_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
fc_2/conv1d?
fc_2/conv1d/SqueezeSqueezefc_2/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
fc_2/conv1d/Squeeze?
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_2/BiasAdd/ReadVariableOp?
fc_2/BiasAddBiasAddfc_2/conv1d/Squeeze:output:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
fc_2/BiasAddl
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
	fc_2/Reluz
fc_3/IdentityIdentityfc_2/Relu:activations:0*
T0*,
_output_shapes
:??????????@2
fc_3/Identityl
fc_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
fc_4/ExpandDims/dim?
fc_4/ExpandDims
ExpandDimsfc_3/Identity:output:0fc_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
fc_4/ExpandDims?
fc_4/MaxPoolMaxPoolfc_4/ExpandDims:output:0*0
_output_shapes
:??????????@*
ksize
*
paddingVALID*
strides
2
fc_4/MaxPool?
fc_4/SqueezeSqueezefc_4/MaxPool:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2
fc_4/Squeeze?
fc_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_5/conv1d/ExpandDims/dim?
fc_5/conv1d/ExpandDims
ExpandDimsfc_4/Squeeze:output:0#fc_5/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
fc_5/conv1d/ExpandDims?
'fc_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02)
'fc_5/conv1d/ExpandDims_1/ReadVariableOp~
fc_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_5/conv1d/ExpandDims_1/dim?
fc_5/conv1d/ExpandDims_1
ExpandDims/fc_5/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
fc_5/conv1d/ExpandDims_1?
fc_5/conv1dConv2Dfc_5/conv1d/ExpandDims:output:0!fc_5/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_5/conv1d?
fc_5/conv1d/SqueezeSqueezefc_5/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_5/conv1d/Squeeze?
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_5/BiasAdd/ReadVariableOp?
fc_5/BiasAddBiasAddfc_5/conv1d/Squeeze:output:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_5/BiasAddl
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
	fc_5/Relu?
fc_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_6/conv1d/ExpandDims/dim?
fc_6/conv1d/ExpandDims
ExpandDimsfc_5/Relu:activations:0#fc_6/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
fc_6/conv1d/ExpandDims?
'fc_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02)
'fc_6/conv1d/ExpandDims_1/ReadVariableOp~
fc_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_6/conv1d/ExpandDims_1/dim?
fc_6/conv1d/ExpandDims_1
ExpandDims/fc_6/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
fc_6/conv1d/ExpandDims_1?
fc_6/conv1dConv2Dfc_6/conv1d/ExpandDims:output:0!fc_6/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_6/conv1d?
fc_6/conv1d/SqueezeSqueezefc_6/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_6/conv1d/Squeeze?
fc_6/BiasAdd/ReadVariableOpReadVariableOp$fc_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_6/BiasAdd/ReadVariableOp?
fc_6/BiasAddBiasAddfc_6/conv1d/Squeeze:output:0#fc_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_6/BiasAddl
	fc_6/ReluRelufc_6/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
	fc_6/Reluz
fc_7/IdentityIdentityfc_6/Relu:activations:0*
T0*,
_output_shapes
:?????????? 2
fc_7/Identityl
fc_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
fc_8/ExpandDims/dim?
fc_8/ExpandDims
ExpandDimsfc_7/Identity:output:0fc_8/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
fc_8/ExpandDims?
fc_8/MaxPoolMaxPoolfc_8/ExpandDims:output:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
fc_8/MaxPool?
fc_8/SqueezeSqueezefc_8/MaxPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2
fc_8/Squeeze?
fc_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_9/conv1d/ExpandDims/dim?
fc_9/conv1d/ExpandDims
ExpandDimsfc_8/Squeeze:output:0#fc_9/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
fc_9/conv1d/ExpandDims?
'fc_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02)
'fc_9/conv1d/ExpandDims_1/ReadVariableOp~
fc_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_9/conv1d/ExpandDims_1/dim?
fc_9/conv1d/ExpandDims_1
ExpandDims/fc_9/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_9/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
fc_9/conv1d/ExpandDims_1?
fc_9/conv1dConv2Dfc_9/conv1d/ExpandDims:output:0!fc_9/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_9/conv1d?
fc_9/conv1d/SqueezeSqueezefc_9/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_9/conv1d/Squeeze?
fc_9/BiasAdd/ReadVariableOpReadVariableOp$fc_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_9/BiasAdd/ReadVariableOp?
fc_9/BiasAddBiasAddfc_9/conv1d/Squeeze:output:0#fc_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_9/BiasAddl
	fc_9/ReluRelufc_9/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
	fc_9/Relu?
fc_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_10/conv1d/ExpandDims/dim?
fc_10/conv1d/ExpandDims
ExpandDimsfc_9/Relu:activations:0$fc_10/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_10/conv1d/ExpandDims?
(fc_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp1fc_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02*
(fc_10/conv1d/ExpandDims_1/ReadVariableOp?
fc_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_10/conv1d/ExpandDims_1/dim?
fc_10/conv1d/ExpandDims_1
ExpandDims0fc_10/conv1d/ExpandDims_1/ReadVariableOp:value:0&fc_10/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
fc_10/conv1d/ExpandDims_1?
fc_10/conv1dConv2D fc_10/conv1d/ExpandDims:output:0"fc_10/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_10/conv1d?
fc_10/conv1d/SqueezeSqueezefc_10/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_10/conv1d/Squeeze?
fc_10/BiasAdd/ReadVariableOpReadVariableOp%fc_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_10/BiasAdd/ReadVariableOp?
fc_10/BiasAddBiasAddfc_10/conv1d/Squeeze:output:0$fc_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_10/BiasAddo

fc_10/ReluRelufc_10/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2

fc_10/Relu}
fc_11/IdentityIdentityfc_10/Relu:activations:0*
T0*,
_output_shapes
:??????????2
fc_11/Identityn
fc_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
fc_12/ExpandDims/dim?
fc_12/ExpandDims
ExpandDimsfc_11/Identity:output:0fc_12/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_12/ExpandDims?
fc_12/MaxPoolMaxPoolfc_12/ExpandDims:output:0*/
_output_shapes
:?????????^*
ksize
*
paddingVALID*
strides
2
fc_12/MaxPool?
fc_12/SqueezeSqueezefc_12/MaxPool:output:0*
T0*+
_output_shapes
:?????????^*
squeeze_dims
2
fc_12/Squeezei

fc13/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2

fc13/Const?
fc13/ReshapeReshapefc_12/Squeeze:output:0fc13/Const:output:0*
T0*(
_output_shapes
:??????????2
fc13/Reshape?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulfc13/Reshape:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output/BiasAddv
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
output/Softmax?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1fc_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp(^fc_1/conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_10/BiasAdd/ReadVariableOp)^fc_10/conv1d/ExpandDims_1/ReadVariableOp/^fc_10/kernel/Regularizer/Square/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp(^fc_2/conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp(^fc_5/conv1d/ExpandDims_1/ReadVariableOp.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/BiasAdd/ReadVariableOp(^fc_6/conv1d/ExpandDims_1/ReadVariableOp.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_9/BiasAdd/ReadVariableOp(^fc_9/conv1d/ExpandDims_1/ReadVariableOp.^fc_9/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp2R
'fc_1/conv1d/ExpandDims_1/ReadVariableOp'fc_1/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_10/BiasAdd/ReadVariableOpfc_10/BiasAdd/ReadVariableOp2T
(fc_10/conv1d/ExpandDims_1/ReadVariableOp(fc_10/conv1d/ExpandDims_1/ReadVariableOp2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp2R
'fc_2/conv1d/ExpandDims_1/ReadVariableOp'fc_2/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp2R
'fc_5/conv1d/ExpandDims_1/ReadVariableOp'fc_5/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2:
fc_6/BiasAdd/ReadVariableOpfc_6/BiasAdd/ReadVariableOp2R
'fc_6/conv1d/ExpandDims_1/ReadVariableOp'fc_6/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2:
fc_9/BiasAdd/ReadVariableOpfc_9/BiasAdd/ReadVariableOp2R
'fc_9/conv1d/ExpandDims_1/ReadVariableOp'fc_9/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_2075330

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?'
?
 __inference__traced_save_2075800
file_prefix*
&savev2_fc_1_kernel_read_readvariableop(
$savev2_fc_1_bias_read_readvariableop*
&savev2_fc_2_kernel_read_readvariableop(
$savev2_fc_2_bias_read_readvariableop*
&savev2_fc_5_kernel_read_readvariableop(
$savev2_fc_5_bias_read_readvariableop*
&savev2_fc_6_kernel_read_readvariableop(
$savev2_fc_6_bias_read_readvariableop*
&savev2_fc_9_kernel_read_readvariableop(
$savev2_fc_9_bias_read_readvariableop+
'savev2_fc_10_kernel_read_readvariableop)
%savev2_fc_10_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_fc_1_kernel_read_readvariableop$savev2_fc_1_bias_read_readvariableop&savev2_fc_2_kernel_read_readvariableop$savev2_fc_2_bias_read_readvariableop&savev2_fc_5_kernel_read_readvariableop$savev2_fc_5_bias_read_readvariableop&savev2_fc_6_kernel_read_readvariableop$savev2_fc_6_bias_read_readvariableop&savev2_fc_9_kernel_read_readvariableop$savev2_fc_9_bias_read_readvariableop'savev2_fc_10_kernel_read_readvariableop%savev2_fc_10_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:@ : :  : : ::::	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:($
"
_output_shapes
:@ : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :(	$
"
_output_shapes
: : 


_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: 
?
B
&__inference_fc_4_layer_call_fn_2074115

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_20741092
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
{
&__inference_fc_9_layer_call_fn_2075574

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_20744012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
{
&__inference_fc_2_layer_call_fn_2075409

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_20742252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
B
&__inference_fc_8_layer_call_fn_2074130

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_20741242
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
B
&__inference_fc_3_layer_call_fn_2075436

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_20742582
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
{
&__inference_fc_5_layer_call_fn_2075473

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_20742942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
C
'__inference_fc_11_layer_call_fn_2075638

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_20744722
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_fc_5_layer_call_and_return_conditional_losses_2075464

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_5/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_5/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?y
?
B__inference_mnist_layer_call_and_return_conditional_losses_2074737

inputs
fc_1_2074658
fc_1_2074660
fc_2_2074663
fc_2_2074665
fc_5_2074670
fc_5_2074672
fc_6_2074675
fc_6_2074677
fc_9_2074682
fc_9_2074684
fc_10_2074687
fc_10_2074689
output_2074695
output_2074697
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_10/StatefulPartitionedCall?.fc_10/kernel/Regularizer/Square/ReadVariableOp?fc_11/StatefulPartitionedCall?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_3/StatefulPartitionedCall?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_7/StatefulPartitionedCall?fc_9/StatefulPartitionedCall?-fc_9/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_20741552
flatten/PartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0fc_1_2074658fc_1_2074660*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_20741872
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_2074663fc_2_2074665*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_20742252
fc_2/StatefulPartitionedCall?
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_20742532
fc_3/StatefulPartitionedCall?
fc_4/PartitionedCallPartitionedCall%fc_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_20741092
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_2074670fc_5_2074672*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_20742942
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_2074675fc_6_2074677*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_20743322
fc_6/StatefulPartitionedCall?
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0^fc_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_20743602
fc_7/StatefulPartitionedCall?
fc_8/PartitionedCallPartitionedCall%fc_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_20741242
fc_8/PartitionedCall?
fc_9/StatefulPartitionedCallStatefulPartitionedCallfc_8/PartitionedCall:output:0fc_9_2074682fc_9_2074684*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_20744012
fc_9/StatefulPartitionedCall?
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_2074687fc_10_2074689*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_20744392
fc_10/StatefulPartitionedCall?
fc_11/StatefulPartitionedCallStatefulPartitionedCall&fc_10/StatefulPartitionedCall:output:0^fc_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_20744672
fc_11/StatefulPartitionedCall?
fc_12/PartitionedCallPartitionedCall&fc_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_12_layer_call_and_return_conditional_losses_20741392
fc_12/PartitionedCall?
fc13/PartitionedCallPartitionedCallfc_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc13_layer_call_and_return_conditional_losses_20744922
fc13/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc13/PartitionedCall:output:0output_2074695output_2074697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_20745112 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_2074658*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_2074663*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_2074670*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_2074675*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_9_2074682*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_10_2074687*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_10/StatefulPartitionedCall/^fc_10/kernel/Regularizer/Square/ReadVariableOp^fc_11/StatefulPartitionedCall^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_3/StatefulPartitionedCall^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_7/StatefulPartitionedCall^fc_9/StatefulPartitionedCall.^fc_9/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp2>
fc_11/StatefulPartitionedCallfc_11/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
]
A__inference_fc13_layer_call_and_return_conditional_losses_2074492

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????^:S O
+
_output_shapes
:?????????^
 
_user_specified_nameinputs
?	
?
C__inference_output_layer_call_and_return_conditional_losses_2074511

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
B
&__inference_fc_7_layer_call_fn_2075537

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_20743652
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_2075724:
6fc_9_kernel_regularizer_square_readvariableop_resource
identity??-fc_9/kernel/Regularizer/Square/ReadVariableOp?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_9_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
IdentityIdentityfc_9/kernel/Regularizer/mul:z:0.^fc_9/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp
?
^
B__inference_fc_12_layer_call_and_return_conditional_losses_2074139

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
]
A__inference_fc13_layer_call_and_return_conditional_losses_2075644

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????^:S O
+
_output_shapes
:?????????^
 
_user_specified_nameinputs
?
?
A__inference_fc_6_layer_call_and_return_conditional_losses_2075501

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_6/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_6/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
`
B__inference_fc_11_layer_call_and_return_conditional_losses_2074472

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
B__inference_mnist_layer_call_and_return_conditional_losses_2075118

inputs4
0fc_1_conv1d_expanddims_1_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource4
0fc_2_conv1d_expanddims_1_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource4
0fc_5_conv1d_expanddims_1_readvariableop_resource(
$fc_5_biasadd_readvariableop_resource4
0fc_6_conv1d_expanddims_1_readvariableop_resource(
$fc_6_biasadd_readvariableop_resource4
0fc_9_conv1d_expanddims_1_readvariableop_resource(
$fc_9_biasadd_readvariableop_resource5
1fc_10_conv1d_expanddims_1_readvariableop_resource)
%fc_10_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??fc_1/BiasAdd/ReadVariableOp?'fc_1/conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_10/BiasAdd/ReadVariableOp?(fc_10/conv1d/ExpandDims_1/ReadVariableOp?.fc_10/kernel/Regularizer/Square/ReadVariableOp?fc_2/BiasAdd/ReadVariableOp?'fc_2/conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/BiasAdd/ReadVariableOp?'fc_5/conv1d/ExpandDims_1/ReadVariableOp?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/BiasAdd/ReadVariableOp?'fc_6/conv1d/ExpandDims_1/ReadVariableOp?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_9/BiasAdd/ReadVariableOp?'fc_9/conv1d/ExpandDims_1/ReadVariableOp?-fc_9/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDimsflatten/Reshape:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_1/conv1d/ExpandDims/dim?
fc_1/conv1d/ExpandDims
ExpandDims$tf.expand_dims_3/ExpandDims:output:0#fc_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_1/conv1d/ExpandDims?
'fc_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02)
'fc_1/conv1d/ExpandDims_1/ReadVariableOp~
fc_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_1/conv1d/ExpandDims_1/dim?
fc_1/conv1d/ExpandDims_1
ExpandDims/fc_1/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
fc_1/conv1d/ExpandDims_1?
fc_1/conv1dConv2Dfc_1/conv1d/ExpandDims:output:0!fc_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
fc_1/conv1d?
fc_1/conv1d/SqueezeSqueezefc_1/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
fc_1/conv1d/Squeeze?
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_1/BiasAdd/ReadVariableOp?
fc_1/BiasAddBiasAddfc_1/conv1d/Squeeze:output:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
fc_1/BiasAddl
	fc_1/ReluRelufc_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
	fc_1/Relu?
fc_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_2/conv1d/ExpandDims/dim?
fc_2/conv1d/ExpandDims
ExpandDimsfc_1/Relu:activations:0#fc_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
fc_2/conv1d/ExpandDims?
'fc_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02)
'fc_2/conv1d/ExpandDims_1/ReadVariableOp~
fc_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_2/conv1d/ExpandDims_1/dim?
fc_2/conv1d/ExpandDims_1
ExpandDims/fc_2/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
fc_2/conv1d/ExpandDims_1?
fc_2/conv1dConv2Dfc_2/conv1d/ExpandDims:output:0!fc_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
fc_2/conv1d?
fc_2/conv1d/SqueezeSqueezefc_2/conv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
fc_2/conv1d/Squeeze?
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_2/BiasAdd/ReadVariableOp?
fc_2/BiasAddBiasAddfc_2/conv1d/Squeeze:output:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2
fc_2/BiasAddl
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
	fc_2/Relum
fc_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
fc_3/dropout/Const?
fc_3/dropout/MulMulfc_2/Relu:activations:0fc_3/dropout/Const:output:0*
T0*,
_output_shapes
:??????????@2
fc_3/dropout/Mulo
fc_3/dropout/ShapeShapefc_2/Relu:activations:0*
T0*
_output_shapes
:2
fc_3/dropout/Shape?
)fc_3/dropout/random_uniform/RandomUniformRandomUniformfc_3/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype02+
)fc_3/dropout/random_uniform/RandomUniform
fc_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
fc_3/dropout/GreaterEqual/y?
fc_3/dropout/GreaterEqualGreaterEqual2fc_3/dropout/random_uniform/RandomUniform:output:0$fc_3/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@2
fc_3/dropout/GreaterEqual?
fc_3/dropout/CastCastfc_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@2
fc_3/dropout/Cast?
fc_3/dropout/Mul_1Mulfc_3/dropout/Mul:z:0fc_3/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@2
fc_3/dropout/Mul_1l
fc_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
fc_4/ExpandDims/dim?
fc_4/ExpandDims
ExpandDimsfc_3/dropout/Mul_1:z:0fc_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
fc_4/ExpandDims?
fc_4/MaxPoolMaxPoolfc_4/ExpandDims:output:0*0
_output_shapes
:??????????@*
ksize
*
paddingVALID*
strides
2
fc_4/MaxPool?
fc_4/SqueezeSqueezefc_4/MaxPool:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2
fc_4/Squeeze?
fc_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_5/conv1d/ExpandDims/dim?
fc_5/conv1d/ExpandDims
ExpandDimsfc_4/Squeeze:output:0#fc_5/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
fc_5/conv1d/ExpandDims?
'fc_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02)
'fc_5/conv1d/ExpandDims_1/ReadVariableOp~
fc_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_5/conv1d/ExpandDims_1/dim?
fc_5/conv1d/ExpandDims_1
ExpandDims/fc_5/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
fc_5/conv1d/ExpandDims_1?
fc_5/conv1dConv2Dfc_5/conv1d/ExpandDims:output:0!fc_5/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_5/conv1d?
fc_5/conv1d/SqueezeSqueezefc_5/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_5/conv1d/Squeeze?
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_5/BiasAdd/ReadVariableOp?
fc_5/BiasAddBiasAddfc_5/conv1d/Squeeze:output:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_5/BiasAddl
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
	fc_5/Relu?
fc_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_6/conv1d/ExpandDims/dim?
fc_6/conv1d/ExpandDims
ExpandDimsfc_5/Relu:activations:0#fc_6/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
fc_6/conv1d/ExpandDims?
'fc_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02)
'fc_6/conv1d/ExpandDims_1/ReadVariableOp~
fc_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_6/conv1d/ExpandDims_1/dim?
fc_6/conv1d/ExpandDims_1
ExpandDims/fc_6/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
fc_6/conv1d/ExpandDims_1?
fc_6/conv1dConv2Dfc_6/conv1d/ExpandDims:output:0!fc_6/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_6/conv1d?
fc_6/conv1d/SqueezeSqueezefc_6/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_6/conv1d/Squeeze?
fc_6/BiasAdd/ReadVariableOpReadVariableOp$fc_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_6/BiasAdd/ReadVariableOp?
fc_6/BiasAddBiasAddfc_6/conv1d/Squeeze:output:0#fc_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_6/BiasAddl
	fc_6/ReluRelufc_6/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
	fc_6/Relum
fc_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
fc_7/dropout/Const?
fc_7/dropout/MulMulfc_6/Relu:activations:0fc_7/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
fc_7/dropout/Mulo
fc_7/dropout/ShapeShapefc_6/Relu:activations:0*
T0*
_output_shapes
:2
fc_7/dropout/Shape?
)fc_7/dropout/random_uniform/RandomUniformRandomUniformfc_7/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02+
)fc_7/dropout/random_uniform/RandomUniform
fc_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
fc_7/dropout/GreaterEqual/y?
fc_7/dropout/GreaterEqualGreaterEqual2fc_7/dropout/random_uniform/RandomUniform:output:0$fc_7/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2
fc_7/dropout/GreaterEqual?
fc_7/dropout/CastCastfc_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
fc_7/dropout/Cast?
fc_7/dropout/Mul_1Mulfc_7/dropout/Mul:z:0fc_7/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
fc_7/dropout/Mul_1l
fc_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
fc_8/ExpandDims/dim?
fc_8/ExpandDims
ExpandDimsfc_7/dropout/Mul_1:z:0fc_8/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
fc_8/ExpandDims?
fc_8/MaxPoolMaxPoolfc_8/ExpandDims:output:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
fc_8/MaxPool?
fc_8/SqueezeSqueezefc_8/MaxPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2
fc_8/Squeeze?
fc_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_9/conv1d/ExpandDims/dim?
fc_9/conv1d/ExpandDims
ExpandDimsfc_8/Squeeze:output:0#fc_9/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
fc_9/conv1d/ExpandDims?
'fc_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02)
'fc_9/conv1d/ExpandDims_1/ReadVariableOp~
fc_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_9/conv1d/ExpandDims_1/dim?
fc_9/conv1d/ExpandDims_1
ExpandDims/fc_9/conv1d/ExpandDims_1/ReadVariableOp:value:0%fc_9/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
fc_9/conv1d/ExpandDims_1?
fc_9/conv1dConv2Dfc_9/conv1d/ExpandDims:output:0!fc_9/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_9/conv1d?
fc_9/conv1d/SqueezeSqueezefc_9/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_9/conv1d/Squeeze?
fc_9/BiasAdd/ReadVariableOpReadVariableOp$fc_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_9/BiasAdd/ReadVariableOp?
fc_9/BiasAddBiasAddfc_9/conv1d/Squeeze:output:0#fc_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_9/BiasAddl
	fc_9/ReluRelufc_9/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
	fc_9/Relu?
fc_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_10/conv1d/ExpandDims/dim?
fc_10/conv1d/ExpandDims
ExpandDimsfc_9/Relu:activations:0$fc_10/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_10/conv1d/ExpandDims?
(fc_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp1fc_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02*
(fc_10/conv1d/ExpandDims_1/ReadVariableOp?
fc_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
fc_10/conv1d/ExpandDims_1/dim?
fc_10/conv1d/ExpandDims_1
ExpandDims0fc_10/conv1d/ExpandDims_1/ReadVariableOp:value:0&fc_10/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
fc_10/conv1d/ExpandDims_1?
fc_10/conv1dConv2D fc_10/conv1d/ExpandDims:output:0"fc_10/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_10/conv1d?
fc_10/conv1d/SqueezeSqueezefc_10/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_10/conv1d/Squeeze?
fc_10/BiasAdd/ReadVariableOpReadVariableOp%fc_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_10/BiasAdd/ReadVariableOp?
fc_10/BiasAddBiasAddfc_10/conv1d/Squeeze:output:0$fc_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_10/BiasAddo

fc_10/ReluRelufc_10/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2

fc_10/Reluo
fc_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
fc_11/dropout/Const?
fc_11/dropout/MulMulfc_10/Relu:activations:0fc_11/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
fc_11/dropout/Mulr
fc_11/dropout/ShapeShapefc_10/Relu:activations:0*
T0*
_output_shapes
:2
fc_11/dropout/Shape?
*fc_11/dropout/random_uniform/RandomUniformRandomUniformfc_11/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02,
*fc_11/dropout/random_uniform/RandomUniform?
fc_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
fc_11/dropout/GreaterEqual/y?
fc_11/dropout/GreaterEqualGreaterEqual3fc_11/dropout/random_uniform/RandomUniform:output:0%fc_11/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
fc_11/dropout/GreaterEqual?
fc_11/dropout/CastCastfc_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
fc_11/dropout/Cast?
fc_11/dropout/Mul_1Mulfc_11/dropout/Mul:z:0fc_11/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
fc_11/dropout/Mul_1n
fc_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
fc_12/ExpandDims/dim?
fc_12/ExpandDims
ExpandDimsfc_11/dropout/Mul_1:z:0fc_12/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_12/ExpandDims?
fc_12/MaxPoolMaxPoolfc_12/ExpandDims:output:0*/
_output_shapes
:?????????^*
ksize
*
paddingVALID*
strides
2
fc_12/MaxPool?
fc_12/SqueezeSqueezefc_12/MaxPool:output:0*
T0*+
_output_shapes
:?????????^*
squeeze_dims
2
fc_12/Squeezei

fc13/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2

fc13/Const?
fc13/ReshapeReshapefc_12/Squeeze:output:0fc13/Const:output:0*
T0*(
_output_shapes
:??????????2
fc13/Reshape?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulfc13/Reshape:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output/BiasAddv
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
output/Softmax?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0fc_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1fc_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp(^fc_1/conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_10/BiasAdd/ReadVariableOp)^fc_10/conv1d/ExpandDims_1/ReadVariableOp/^fc_10/kernel/Regularizer/Square/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp(^fc_2/conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp(^fc_5/conv1d/ExpandDims_1/ReadVariableOp.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/BiasAdd/ReadVariableOp(^fc_6/conv1d/ExpandDims_1/ReadVariableOp.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_9/BiasAdd/ReadVariableOp(^fc_9/conv1d/ExpandDims_1/ReadVariableOp.^fc_9/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp2R
'fc_1/conv1d/ExpandDims_1/ReadVariableOp'fc_1/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_10/BiasAdd/ReadVariableOpfc_10/BiasAdd/ReadVariableOp2T
(fc_10/conv1d/ExpandDims_1/ReadVariableOp(fc_10/conv1d/ExpandDims_1/ReadVariableOp2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp2R
'fc_2/conv1d/ExpandDims_1/ReadVariableOp'fc_2/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp2R
'fc_5/conv1d/ExpandDims_1/ReadVariableOp'fc_5/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2:
fc_6/BiasAdd/ReadVariableOpfc_6/BiasAdd/ReadVariableOp2R
'fc_6/conv1d/ExpandDims_1/ReadVariableOp'fc_6/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2:
fc_9/BiasAdd/ReadVariableOpfc_9/BiasAdd/ReadVariableOp2R
'fc_9/conv1d/ExpandDims_1/ReadVariableOp'fc_9/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_fc_10_layer_call_and_return_conditional_losses_2074439

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?.fc_10/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp/^fc_10/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
A__inference_fc_7_layer_call_and_return_conditional_losses_2074365

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????? 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
A__inference_fc_2_layer_call_and_return_conditional_losses_2074225

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
A__inference_fc_1_layer_call_and_return_conditional_losses_2074187

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
{
&__inference_fc_6_layer_call_fn_2075510

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_20743322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
`
A__inference_fc_7_layer_call_and_return_conditional_losses_2074360

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?<
?
#__inference__traced_restore_2075852
file_prefix 
assignvariableop_fc_1_kernel 
assignvariableop_1_fc_1_bias"
assignvariableop_2_fc_2_kernel 
assignvariableop_3_fc_2_bias"
assignvariableop_4_fc_5_kernel 
assignvariableop_5_fc_5_bias"
assignvariableop_6_fc_6_kernel 
assignvariableop_7_fc_6_bias"
assignvariableop_8_fc_9_kernel 
assignvariableop_9_fc_9_bias$
 assignvariableop_10_fc_10_kernel"
assignvariableop_11_fc_10_bias%
!assignvariableop_12_output_kernel#
assignvariableop_13_output_bias
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_fc_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_fc_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_fc_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_fc_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_fc_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_fc_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc_6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc_9_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc_9_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_fc_10_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc_10_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14?
Identity_15IdentityIdentity_14:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_15"#
identity_15Identity_15:output:0*M
_input_shapes<
:: ::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
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
?
_
A__inference_fc_7_layer_call_and_return_conditional_losses_2075527

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????? 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_2075713:
6fc_6_kernel_regularizer_square_readvariableop_resource
identity??-fc_6/kernel/Regularizer/Square/ReadVariableOp?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_6_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
IdentityIdentityfc_6/kernel/Regularizer/mul:z:0.^fc_6/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp
?
E
)__inference_flatten_layer_call_fn_2075335

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_20741552
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_fc_5_layer_call_and_return_conditional_losses_2074294

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_5/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_5/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?	
?
'__inference_mnist_layer_call_fn_2075324

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

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_20748552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
&__inference_fc_3_layer_call_fn_2075431

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_20742532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
A__inference_fc_2_layer_call_and_return_conditional_losses_2075400

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????@2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@2
Relu?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
_
A__inference_fc_3_layer_call_and_return_conditional_losses_2074258

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????@2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????@2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
|
'__inference_fc_10_layer_call_fn_2075611

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_20744392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
'__inference_mnist_layer_call_fn_2074886	
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

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_20748552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?	
?
%__inference_signature_wrapper_2074957	
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

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_20741002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
_
A__inference_fc_3_layer_call_and_return_conditional_losses_2075426

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????@2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????@2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?t
?
B__inference_mnist_layer_call_and_return_conditional_losses_2074649	
input
fc_1_2074570
fc_1_2074572
fc_2_2074575
fc_2_2074577
fc_5_2074582
fc_5_2074584
fc_6_2074587
fc_6_2074589
fc_9_2074594
fc_9_2074596
fc_10_2074599
fc_10_2074601
output_2074607
output_2074609
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_10/StatefulPartitionedCall?.fc_10/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_9/StatefulPartitionedCall?-fc_9/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_20741552
flatten/PartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0fc_1_2074570fc_1_2074572*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_20741872
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_2074575fc_2_2074577*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_20742252
fc_2/StatefulPartitionedCall?
fc_3/PartitionedCallPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_3_layer_call_and_return_conditional_losses_20742582
fc_3/PartitionedCall?
fc_4/PartitionedCallPartitionedCallfc_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_4_layer_call_and_return_conditional_losses_20741092
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_2074582fc_5_2074584*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_20742942
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_2074587fc_6_2074589*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_6_layer_call_and_return_conditional_losses_20743322
fc_6/StatefulPartitionedCall?
fc_7/PartitionedCallPartitionedCall%fc_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_7_layer_call_and_return_conditional_losses_20743652
fc_7/PartitionedCall?
fc_8/PartitionedCallPartitionedCallfc_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_8_layer_call_and_return_conditional_losses_20741242
fc_8/PartitionedCall?
fc_9/StatefulPartitionedCallStatefulPartitionedCallfc_8/PartitionedCall:output:0fc_9_2074594fc_9_2074596*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc_9_layer_call_and_return_conditional_losses_20744012
fc_9/StatefulPartitionedCall?
fc_10/StatefulPartitionedCallStatefulPartitionedCall%fc_9/StatefulPartitionedCall:output:0fc_10_2074599fc_10_2074601*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_10_layer_call_and_return_conditional_losses_20744392
fc_10/StatefulPartitionedCall?
fc_11/PartitionedCallPartitionedCall&fc_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_11_layer_call_and_return_conditional_losses_20744722
fc_11/PartitionedCall?
fc_12/PartitionedCallPartitionedCallfc_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????^* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_fc_12_layer_call_and_return_conditional_losses_20741392
fc_12/PartitionedCall?
fc13/PartitionedCallPartitionedCallfc_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_fc13_layer_call_and_return_conditional_losses_20744922
fc13/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc13/PartitionedCall:output:0output_2074607output_2074609*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_20745112 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_2074570*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_2074575*"
_output_shapes
:@@*
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@@2 
fc_2/kernel/Regularizer/Square?
fc_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_2/kernel/Regularizer/Const?
fc_2/kernel/Regularizer/SumSum"fc_2/kernel/Regularizer/Square:y:0&fc_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/Sum?
fc_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_2/kernel/Regularizer/mul/x?
fc_2/kernel/Regularizer/mulMul&fc_2/kernel/Regularizer/mul/x:output:0$fc_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_2/kernel/Regularizer/mul?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_2074582*"
_output_shapes
:@ *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2 
fc_5/kernel/Regularizer/Square?
fc_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_5/kernel/Regularizer/Const?
fc_5/kernel/Regularizer/SumSum"fc_5/kernel/Regularizer/Square:y:0&fc_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/Sum?
fc_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_5/kernel/Regularizer/mul/x?
fc_5/kernel/Regularizer/mulMul&fc_5/kernel/Regularizer/mul/x:output:0$fc_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_5/kernel/Regularizer/mul?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_2074587*"
_output_shapes
:  *
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
fc_6/kernel/Regularizer/Square?
fc_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_6/kernel/Regularizer/Const?
fc_6/kernel/Regularizer/SumSum"fc_6/kernel/Regularizer/Square:y:0&fc_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/Sum?
fc_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_6/kernel/Regularizer/mul/x?
fc_6/kernel/Regularizer/mulMul&fc_6/kernel/Regularizer/mul/x:output:0$fc_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_6/kernel/Regularizer/mul?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_9_2074594*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
.fc_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_10_2074599*"
_output_shapes
:*
dtype020
.fc_10/kernel/Regularizer/Square/ReadVariableOp?
fc_10/kernel/Regularizer/SquareSquare6fc_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2!
fc_10/kernel/Regularizer/Square?
fc_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2 
fc_10/kernel/Regularizer/Const?
fc_10/kernel/Regularizer/SumSum#fc_10/kernel/Regularizer/Square:y:0'fc_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/Sum?
fc_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
fc_10/kernel/Regularizer/mul/x?
fc_10/kernel/Regularizer/mulMul'fc_10/kernel/Regularizer/mul/x:output:0%fc_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_10/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_10/StatefulPartitionedCall/^fc_10/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_9/StatefulPartitionedCall.^fc_9/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????::::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2>
fc_10/StatefulPartitionedCallfc_10/StatefulPartitionedCall2`
.fc_10/kernel/Regularizer/Square/ReadVariableOp.fc_10/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2<
fc_9/StatefulPartitionedCallfc_9/StatefulPartitionedCall2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
?
A__inference_fc_9_layer_call_and_return_conditional_losses_2075565

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?-fc_9/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
-fc_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_9/kernel/Regularizer/Square/ReadVariableOp?
fc_9/kernel/Regularizer/SquareSquare5fc_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
fc_9/kernel/Regularizer/Square?
fc_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_9/kernel/Regularizer/Const?
fc_9/kernel/Regularizer/SumSum"fc_9/kernel/Regularizer/Square:y:0&fc_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/Sum?
fc_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_9/kernel/Regularizer/mul/x?
fc_9/kernel/Regularizer/mulMul&fc_9/kernel/Regularizer/mul/x:output:0$fc_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_9/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp.^fc_9/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_9/kernel/Regularizer/Square/ReadVariableOp-fc_9/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_2075680:
6fc_1_kernel_regularizer_square_readvariableop_resource
identity??-fc_1/kernel/Regularizer/Square/ReadVariableOp?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_1_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:@*
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2 
fc_1/kernel/Regularizer/Square?
fc_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
fc_1/kernel/Regularizer/Const?
fc_1/kernel/Regularizer/SumSum"fc_1/kernel/Regularizer/Square:y:0&fc_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/Sum?
fc_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
fc_1/kernel/Regularizer/mul/x?
fc_1/kernel/Regularizer/mulMul&fc_1/kernel/Regularizer/mul/x:output:0$fc_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc_1/kernel/Regularizer/mul?
IdentityIdentityfc_1/kernel/Regularizer/mul:z:0.^fc_1/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input6
serving_default_input:0?????????:
output0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
??
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?~
_tf_keras_network?~{"class_name": "Functional", "name": "mnist", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_3", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_3", "inbound_nodes": [["flatten", 0, 0, {"axis": 2}]]}, {"class_name": "Conv1D", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["tf.expand_dims_3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_6", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_7", "inbound_nodes": [[["fc_6", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_8", "inbound_nodes": [[["fc_7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_9", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_9", "inbound_nodes": [[["fc_8", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_10", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_10", "inbound_nodes": [[["fc_9", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_11", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_11", "inbound_nodes": [[["fc_10", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_12", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_12", "inbound_nodes": [[["fc_11", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "fc13", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "fc13", "inbound_nodes": [[["fc_12", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc13", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_3", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_3", "inbound_nodes": [["flatten", 0, 0, {"axis": 2}]]}, {"class_name": "Conv1D", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["tf.expand_dims_3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_6", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_7", "inbound_nodes": [[["fc_6", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_8", "inbound_nodes": [[["fc_7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_9", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_9", "inbound_nodes": [[["fc_8", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_10", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_10", "inbound_nodes": [[["fc_9", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_11", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_11", "inbound_nodes": [[["fc_10", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_12", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_12", "inbound_nodes": [[["fc_11", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "fc13", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "fc13", "inbound_nodes": [[["fc_12", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc13", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
?
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_3", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?


kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784, 1]}}
?


"kernel
#bias
$regularization_losses
%trainable_variables
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 782, 64]}}
?
(regularization_losses
)trainable_variables
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "fc_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
,regularization_losses
-trainable_variables
.	variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "fc_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


0kernel
1bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 390, 64]}}
?


6kernel
7bias
8regularization_losses
9trainable_variables
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 388, 32]}}
?
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "fc_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "fc_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_9", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 193, 32]}}
?


Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_10", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 191, 16]}}
?
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "fc_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_11", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
Tregularization_losses
Utrainable_variables
V	variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "fc_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_12", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "fc13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc13", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

\kernel
]bias
^regularization_losses
_trainable_variables
`	variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1504}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1504]}}
P
?0
?1
?2
?3
?4
?5"
trackable_list_wrapper
?
0
1
"2
#3
04
15
66
77
D8
E9
J10
K11
\12
]13"
trackable_list_wrapper
?
0
1
"2
#3
04
15
66
77
D8
E9
J10
K11
\12
]13"
trackable_list_wrapper
?
bnon_trainable_variables
regularization_losses
clayer_metrics
dmetrics
elayer_regularization_losses
trainable_variables

flayers
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables
regularization_losses
hlayer_metrics
imetrics
jlayer_regularization_losses
trainable_variables

klayers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
!:@2fc_1/kernel
:@2	fc_1/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
lnon_trainable_variables
regularization_losses
mlayer_metrics
nmetrics
olayer_regularization_losses
trainable_variables

players
 	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@@2fc_2/kernel
:@2	fc_2/bias
(
?0"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
qnon_trainable_variables
$regularization_losses
rlayer_metrics
smetrics
tlayer_regularization_losses
%trainable_variables

ulayers
&	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables
(regularization_losses
wlayer_metrics
xmetrics
ylayer_regularization_losses
)trainable_variables

zlayers
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables
,regularization_losses
|layer_metrics
}metrics
~layer_regularization_losses
-trainable_variables

layers
.	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@ 2fc_5/kernel
: 2	fc_5/bias
(
?0"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
?non_trainable_variables
2regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
3trainable_variables
?layers
4	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:  2fc_6/kernel
: 2	fc_6/bias
(
?0"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
?non_trainable_variables
8regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
9trainable_variables
?layers
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
<regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
=trainable_variables
?layers
>	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
@regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Atrainable_variables
?layers
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2fc_9/kernel
:2	fc_9/bias
(
?0"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
?non_trainable_variables
Fregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Gtrainable_variables
?layers
H	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2fc_10/kernel
:2
fc_10/bias
(
?0"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?non_trainable_variables
Lregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Mtrainable_variables
?layers
N	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Pregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Qtrainable_variables
?layers
R	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Tregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Utrainable_variables
?layers
V	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Xregularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
Ytrainable_variables
?layers
Z	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?
2output/kernel
:
2output/bias
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
?
?non_trainable_variables
^regularization_losses
?layer_metrics
?metrics
 ?layer_regularization_losses
_trainable_variables
?layers
`	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
14
15
16"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
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
?2?
"__inference__wrapped_model_2074100?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *,?)
'?$
input?????????
?2?
'__inference_mnist_layer_call_fn_2074886
'__inference_mnist_layer_call_fn_2075291
'__inference_mnist_layer_call_fn_2074768
'__inference_mnist_layer_call_fn_2075324?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_mnist_layer_call_and_return_conditional_losses_2074564
B__inference_mnist_layer_call_and_return_conditional_losses_2075118
B__inference_mnist_layer_call_and_return_conditional_losses_2075258
B__inference_mnist_layer_call_and_return_conditional_losses_2074649?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_flatten_layer_call_fn_2075335?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_layer_call_and_return_conditional_losses_2075330?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_fc_1_layer_call_fn_2075372?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_fc_1_layer_call_and_return_conditional_losses_2075363?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_fc_2_layer_call_fn_2075409?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_fc_2_layer_call_and_return_conditional_losses_2075400?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_fc_3_layer_call_fn_2075436
&__inference_fc_3_layer_call_fn_2075431?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_fc_3_layer_call_and_return_conditional_losses_2075426
A__inference_fc_3_layer_call_and_return_conditional_losses_2075421?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_fc_4_layer_call_fn_2074115?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
A__inference_fc_4_layer_call_and_return_conditional_losses_2074109?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
&__inference_fc_5_layer_call_fn_2075473?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_fc_5_layer_call_and_return_conditional_losses_2075464?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_fc_6_layer_call_fn_2075510?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_fc_6_layer_call_and_return_conditional_losses_2075501?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_fc_7_layer_call_fn_2075532
&__inference_fc_7_layer_call_fn_2075537?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_fc_7_layer_call_and_return_conditional_losses_2075527
A__inference_fc_7_layer_call_and_return_conditional_losses_2075522?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_fc_8_layer_call_fn_2074130?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
A__inference_fc_8_layer_call_and_return_conditional_losses_2074124?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
&__inference_fc_9_layer_call_fn_2075574?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_fc_9_layer_call_and_return_conditional_losses_2075565?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_fc_10_layer_call_fn_2075611?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_fc_10_layer_call_and_return_conditional_losses_2075602?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_fc_11_layer_call_fn_2075633
'__inference_fc_11_layer_call_fn_2075638?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_fc_11_layer_call_and_return_conditional_losses_2075623
B__inference_fc_11_layer_call_and_return_conditional_losses_2075628?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_fc_12_layer_call_fn_2074145?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
B__inference_fc_12_layer_call_and_return_conditional_losses_2074139?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
&__inference_fc13_layer_call_fn_2075649?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_fc13_layer_call_and_return_conditional_losses_2075644?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_output_layer_call_fn_2075669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_output_layer_call_and_return_conditional_losses_2075660?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_2075680?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_2075691?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_2075702?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_2075713?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_2075724?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_2075735?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_2074957input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_2074100y"#0167DEJK\]6?3
,?)
'?$
input?????????
? "/?,
*
output ?
output?????????
?
A__inference_fc13_layer_call_and_return_conditional_losses_2075644]3?0
)?&
$?!
inputs?????????^
? "&?#
?
0??????????
? z
&__inference_fc13_layer_call_fn_2075649P3?0
)?&
$?!
inputs?????????^
? "????????????
B__inference_fc_10_layer_call_and_return_conditional_losses_2075602fJK4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
'__inference_fc_10_layer_call_fn_2075611YJK4?1
*?'
%?"
inputs??????????
? "????????????
B__inference_fc_11_layer_call_and_return_conditional_losses_2075623f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
B__inference_fc_11_layer_call_and_return_conditional_losses_2075628f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
'__inference_fc_11_layer_call_fn_2075633Y8?5
.?+
%?"
inputs??????????
p
? "????????????
'__inference_fc_11_layer_call_fn_2075638Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
B__inference_fc_12_layer_call_and_return_conditional_losses_2074139?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
'__inference_fc_12_layer_call_fn_2074145wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
A__inference_fc_1_layer_call_and_return_conditional_losses_2075363f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????@
? ?
&__inference_fc_1_layer_call_fn_2075372Y4?1
*?'
%?"
inputs??????????
? "???????????@?
A__inference_fc_2_layer_call_and_return_conditional_losses_2075400f"#4?1
*?'
%?"
inputs??????????@
? "*?'
 ?
0??????????@
? ?
&__inference_fc_2_layer_call_fn_2075409Y"#4?1
*?'
%?"
inputs??????????@
? "???????????@?
A__inference_fc_3_layer_call_and_return_conditional_losses_2075421f8?5
.?+
%?"
inputs??????????@
p
? "*?'
 ?
0??????????@
? ?
A__inference_fc_3_layer_call_and_return_conditional_losses_2075426f8?5
.?+
%?"
inputs??????????@
p 
? "*?'
 ?
0??????????@
? ?
&__inference_fc_3_layer_call_fn_2075431Y8?5
.?+
%?"
inputs??????????@
p
? "???????????@?
&__inference_fc_3_layer_call_fn_2075436Y8?5
.?+
%?"
inputs??????????@
p 
? "???????????@?
A__inference_fc_4_layer_call_and_return_conditional_losses_2074109?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
&__inference_fc_4_layer_call_fn_2074115wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
A__inference_fc_5_layer_call_and_return_conditional_losses_2075464f014?1
*?'
%?"
inputs??????????@
? "*?'
 ?
0?????????? 
? ?
&__inference_fc_5_layer_call_fn_2075473Y014?1
*?'
%?"
inputs??????????@
? "??????????? ?
A__inference_fc_6_layer_call_and_return_conditional_losses_2075501f674?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
&__inference_fc_6_layer_call_fn_2075510Y674?1
*?'
%?"
inputs?????????? 
? "??????????? ?
A__inference_fc_7_layer_call_and_return_conditional_losses_2075522f8?5
.?+
%?"
inputs?????????? 
p
? "*?'
 ?
0?????????? 
? ?
A__inference_fc_7_layer_call_and_return_conditional_losses_2075527f8?5
.?+
%?"
inputs?????????? 
p 
? "*?'
 ?
0?????????? 
? ?
&__inference_fc_7_layer_call_fn_2075532Y8?5
.?+
%?"
inputs?????????? 
p
? "??????????? ?
&__inference_fc_7_layer_call_fn_2075537Y8?5
.?+
%?"
inputs?????????? 
p 
? "??????????? ?
A__inference_fc_8_layer_call_and_return_conditional_losses_2074124?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
&__inference_fc_8_layer_call_fn_2074130wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
A__inference_fc_9_layer_call_and_return_conditional_losses_2075565fDE4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0??????????
? ?
&__inference_fc_9_layer_call_fn_2075574YDE4?1
*?'
%?"
inputs?????????? 
? "????????????
D__inference_flatten_layer_call_and_return_conditional_losses_2075330a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
)__inference_flatten_layer_call_fn_2075335T7?4
-?*
(?%
inputs?????????
? "???????????<
__inference_loss_fn_0_2075680?

? 
? "? <
__inference_loss_fn_1_2075691"?

? 
? "? <
__inference_loss_fn_2_20757020?

? 
? "? <
__inference_loss_fn_3_20757136?

? 
? "? <
__inference_loss_fn_4_2075724D?

? 
? "? <
__inference_loss_fn_5_2075735J?

? 
? "? ?
B__inference_mnist_layer_call_and_return_conditional_losses_2074564w"#0167DEJK\]>?;
4?1
'?$
input?????????
p

 
? "%?"
?
0?????????

? ?
B__inference_mnist_layer_call_and_return_conditional_losses_2074649w"#0167DEJK\]>?;
4?1
'?$
input?????????
p 

 
? "%?"
?
0?????????

? ?
B__inference_mnist_layer_call_and_return_conditional_losses_2075118x"#0167DEJK\]??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
B__inference_mnist_layer_call_and_return_conditional_losses_2075258x"#0167DEJK\]??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
'__inference_mnist_layer_call_fn_2074768j"#0167DEJK\]>?;
4?1
'?$
input?????????
p

 
? "??????????
?
'__inference_mnist_layer_call_fn_2074886j"#0167DEJK\]>?;
4?1
'?$
input?????????
p 

 
? "??????????
?
'__inference_mnist_layer_call_fn_2075291k"#0167DEJK\]??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
'__inference_mnist_layer_call_fn_2075324k"#0167DEJK\]??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
C__inference_output_layer_call_and_return_conditional_losses_2075660]\]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_output_layer_call_fn_2075669P\]0?-
&?#
!?
inputs??????????
? "??????????
?
%__inference_signature_wrapper_2074957?"#0167DEJK\]??<
? 
5?2
0
input'?$
input?????????"/?,
*
output ?
output?????????
