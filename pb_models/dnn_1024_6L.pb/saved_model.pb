Ï
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
 "serve*2.4.12unknown8Ä«
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
*
shared_namefc_2/kernel
m
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel* 
_output_shapes
:
*
dtype0
k
	fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_2/bias
d
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes	
:*
dtype0
t
fc_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namefc_3/kernel
m
fc_3/kernel/Read/ReadVariableOpReadVariableOpfc_3/kernel* 
_output_shapes
:
*
dtype0
k
	fc_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_3/bias
d
fc_3/bias/Read/ReadVariableOpReadVariableOp	fc_3/bias*
_output_shapes	
:*
dtype0
s
fc_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namefc_4/kernel
l
fc_4/kernel/Read/ReadVariableOpReadVariableOpfc_4/kernel*
_output_shapes
:	@*
dtype0
j
	fc_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	fc_4/bias
c
fc_4/bias/Read/ReadVariableOpReadVariableOp	fc_4/bias*
_output_shapes
:@*
dtype0
r
fc_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namefc_5/kernel
k
fc_5/kernel/Read/ReadVariableOpReadVariableOpfc_5/kernel*
_output_shapes

:@ *
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
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: 
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
º 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*õ
valueëBè Bá
æ
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
		variables

trainable_variables
regularization_losses
	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
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
V
0
1
2
3
4
5
$6
%7
*8
+9
010
111
V
0
1
2
3
4
5
$6
%7
*8
+9
010
111
 
­
6layer_metrics
		variables
7non_trainable_variables
8metrics

9layers
:layer_regularization_losses

trainable_variables
regularization_losses
 
 
 
 
­
;layer_metrics
	variables
<metrics
=non_trainable_variables

>layers
?layer_regularization_losses
trainable_variables
regularization_losses
WU
VARIABLE_VALUEfc_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
@layer_metrics
	variables
Ametrics
Bnon_trainable_variables

Clayers
Dlayer_regularization_losses
trainable_variables
regularization_losses
WU
VARIABLE_VALUEfc_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Elayer_metrics
	variables
Fmetrics
Gnon_trainable_variables

Hlayers
Ilayer_regularization_losses
trainable_variables
regularization_losses
WU
VARIABLE_VALUEfc_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Jlayer_metrics
 	variables
Kmetrics
Lnon_trainable_variables

Mlayers
Nlayer_regularization_losses
!trainable_variables
"regularization_losses
WU
VARIABLE_VALUEfc_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­
Olayer_metrics
&	variables
Pmetrics
Qnon_trainable_variables

Rlayers
Slayer_regularization_losses
'trainable_variables
(regularization_losses
WU
VARIABLE_VALUEfc_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
­
Tlayer_metrics
,	variables
Umetrics
Vnon_trainable_variables

Wlayers
Xlayer_regularization_losses
-trainable_variables
.regularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
­
Ylayer_metrics
2	variables
Zmetrics
[non_trainable_variables

\layers
]layer_regularization_losses
3trainable_variables
4regularization_losses
 
 
 
8
0
1
2
3
4
5
6
7
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
à
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_3/kernel	fc_3/biasfc_4/kernel	fc_4/biasfc_5/kernel	fc_5/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_5360337
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¯
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefc_1/kernel/Read/ReadVariableOpfc_1/bias/Read/ReadVariableOpfc_2/kernel/Read/ReadVariableOpfc_2/bias/Read/ReadVariableOpfc_3/kernel/Read/ReadVariableOpfc_3/bias/Read/ReadVariableOpfc_4/kernel/Read/ReadVariableOpfc_4/bias/Read/ReadVariableOpfc_5/kernel/Read/ReadVariableOpfc_5/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin
2*
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
 __inference__traced_save_5360681
º
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_3/kernel	fc_3/biasfc_4/kernel	fc_4/biasfc_5/kernel	fc_5/biasoutput/kerneloutput/bias*
Tin
2*
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
#__inference__traced_restore_5360727ðç
ë	
Ú
A__inference_fc_5_layer_call_and_return_conditional_losses_5360098

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
°>
¬
"__inference__wrapped_model_5359961	
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
*mnist_fc_5_biasadd_readvariableop_resource/
+mnist_output_matmul_readvariableop_resource0
,mnist_output_biasadd_readvariableop_resource
identity¢!mnist/fc_1/BiasAdd/ReadVariableOp¢ mnist/fc_1/MatMul/ReadVariableOp¢!mnist/fc_2/BiasAdd/ReadVariableOp¢ mnist/fc_2/MatMul/ReadVariableOp¢!mnist/fc_3/BiasAdd/ReadVariableOp¢ mnist/fc_3/MatMul/ReadVariableOp¢!mnist/fc_4/BiasAdd/ReadVariableOp¢ mnist/fc_4/MatMul/ReadVariableOp¢!mnist/fc_5/BiasAdd/ReadVariableOp¢ mnist/fc_5/MatMul/ReadVariableOp¢#mnist/output/BiasAdd/ReadVariableOp¢"mnist/output/MatMul/ReadVariableOp{
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
*
dtype02"
 mnist/fc_2/MatMul/ReadVariableOp¬
mnist/fc_2/MatMulMatMulmnist/fc_1/Relu:activations:0(mnist/fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_2/MatMul®
!mnist/fc_2/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_2/BiasAdd/ReadVariableOp®
mnist/fc_2/BiasAddBiasAddmnist/fc_2/MatMul:product:0)mnist/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_2/BiasAddz
mnist/fc_2/ReluRelumnist/fc_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_2/Relu°
 mnist/fc_3/MatMul/ReadVariableOpReadVariableOp)mnist_fc_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 mnist/fc_3/MatMul/ReadVariableOp¬
mnist/fc_3/MatMulMatMulmnist/fc_2/Relu:activations:0(mnist/fc_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_3/MatMul®
!mnist/fc_3/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!mnist/fc_3/BiasAdd/ReadVariableOp®
mnist/fc_3/BiasAddBiasAddmnist/fc_3/MatMul:product:0)mnist/fc_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_3/BiasAddz
mnist/fc_3/ReluRelumnist/fc_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mnist/fc_3/Relu¯
 mnist/fc_4/MatMul/ReadVariableOpReadVariableOp)mnist_fc_4_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02"
 mnist/fc_4/MatMul/ReadVariableOp«
mnist/fc_4/MatMulMatMulmnist/fc_3/Relu:activations:0(mnist/fc_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mnist/fc_4/MatMul­
!mnist/fc_4/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!mnist/fc_4/BiasAdd/ReadVariableOp­
mnist/fc_4/BiasAddBiasAddmnist/fc_4/MatMul:product:0)mnist/fc_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mnist/fc_4/BiasAddy
mnist/fc_4/ReluRelumnist/fc_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mnist/fc_4/Relu®
 mnist/fc_5/MatMul/ReadVariableOpReadVariableOp)mnist_fc_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02"
 mnist/fc_5/MatMul/ReadVariableOp«
mnist/fc_5/MatMulMatMulmnist/fc_4/Relu:activations:0(mnist/fc_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mnist/fc_5/MatMul­
!mnist/fc_5/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!mnist/fc_5/BiasAdd/ReadVariableOp­
mnist/fc_5/BiasAddBiasAddmnist/fc_5/MatMul:product:0)mnist/fc_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mnist/fc_5/BiasAddy
mnist/fc_5/ReluRelumnist/fc_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mnist/fc_5/Relu´
"mnist/output/MatMul/ReadVariableOpReadVariableOp+mnist_output_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02$
"mnist/output/MatMul/ReadVariableOp±
mnist/output/MatMulMatMulmnist/fc_5/Relu:activations:0*mnist/output/MatMul/ReadVariableOp:value:0*
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
mnist/output/Softmax 
IdentityIdentitymnist/output/Softmax:softmax:0"^mnist/fc_1/BiasAdd/ReadVariableOp!^mnist/fc_1/MatMul/ReadVariableOp"^mnist/fc_2/BiasAdd/ReadVariableOp!^mnist/fc_2/MatMul/ReadVariableOp"^mnist/fc_3/BiasAdd/ReadVariableOp!^mnist/fc_3/MatMul/ReadVariableOp"^mnist/fc_4/BiasAdd/ReadVariableOp!^mnist/fc_4/MatMul/ReadVariableOp"^mnist/fc_5/BiasAdd/ReadVariableOp!^mnist/fc_5/MatMul/ReadVariableOp$^mnist/output/BiasAdd/ReadVariableOp#^mnist/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2F
!mnist/fc_1/BiasAdd/ReadVariableOp!mnist/fc_1/BiasAdd/ReadVariableOp2D
 mnist/fc_1/MatMul/ReadVariableOp mnist/fc_1/MatMul/ReadVariableOp2F
!mnist/fc_2/BiasAdd/ReadVariableOp!mnist/fc_2/BiasAdd/ReadVariableOp2D
 mnist/fc_2/MatMul/ReadVariableOp mnist/fc_2/MatMul/ReadVariableOp2F
!mnist/fc_3/BiasAdd/ReadVariableOp!mnist/fc_3/BiasAdd/ReadVariableOp2D
 mnist/fc_3/MatMul/ReadVariableOp mnist/fc_3/MatMul/ReadVariableOp2F
!mnist/fc_4/BiasAdd/ReadVariableOp!mnist/fc_4/BiasAdd/ReadVariableOp2D
 mnist/fc_4/MatMul/ReadVariableOp mnist/fc_4/MatMul/ReadVariableOp2F
!mnist/fc_5/BiasAdd/ReadVariableOp!mnist/fc_5/BiasAdd/ReadVariableOp2D
 mnist/fc_5/MatMul/ReadVariableOp mnist/fc_5/MatMul/ReadVariableOp2J
#mnist/output/BiasAdd/ReadVariableOp#mnist/output/BiasAdd/ReadVariableOp2H
"mnist/output/MatMul/ReadVariableOp"mnist/output/MatMul/ReadVariableOp:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
â6
½
B__inference_mnist_layer_call_and_return_conditional_losses_5360433

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
$fc_5_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity¢fc_1/BiasAdd/ReadVariableOp¢fc_1/MatMul/ReadVariableOp¢fc_2/BiasAdd/ReadVariableOp¢fc_2/MatMul/ReadVariableOp¢fc_3/BiasAdd/ReadVariableOp¢fc_3/MatMul/ReadVariableOp¢fc_4/BiasAdd/ReadVariableOp¢fc_4/MatMul/ReadVariableOp¢fc_5/BiasAdd/ReadVariableOp¢fc_5/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpo
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
*
dtype02
fc_2/MatMul/ReadVariableOp
fc_2/MatMulMatMulfc_1/Relu:activations:0"fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/MatMul
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_2/BiasAdd/ReadVariableOp
fc_2/BiasAddBiasAddfc_2/MatMul:product:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/BiasAddh
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_2/Relu
fc_3/MatMul/ReadVariableOpReadVariableOp#fc_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_3/MatMul/ReadVariableOp
fc_3/MatMulMatMulfc_2/Relu:activations:0"fc_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/MatMul
fc_3/BiasAdd/ReadVariableOpReadVariableOp$fc_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_3/BiasAdd/ReadVariableOp
fc_3/BiasAddBiasAddfc_3/MatMul:product:0#fc_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/BiasAddh
	fc_3/ReluRelufc_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_3/Relu
fc_4/MatMul/ReadVariableOpReadVariableOp#fc_4_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
fc_4/MatMul/ReadVariableOp
fc_4/MatMulMatMulfc_3/Relu:activations:0"fc_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_4/MatMul
fc_4/BiasAdd/ReadVariableOpReadVariableOp$fc_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_4/BiasAdd/ReadVariableOp
fc_4/BiasAddBiasAddfc_4/MatMul:product:0#fc_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_4/BiasAddg
	fc_4/ReluRelufc_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	fc_4/Relu
fc_5/MatMul/ReadVariableOpReadVariableOp#fc_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
fc_5/MatMul/ReadVariableOp
fc_5/MatMulMatMulfc_4/Relu:activations:0"fc_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_5/MatMul
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_5/BiasAdd/ReadVariableOp
fc_5/BiasAddBiasAddfc_5/MatMul:product:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_5/BiasAddg
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	fc_5/Relu¢
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
output/MatMul/ReadVariableOp
output/MatMulMatMulfc_5/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
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
output/SoftmaxÒ
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp^fc_1/MatMul/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp^fc_2/MatMul/ReadVariableOp^fc_3/BiasAdd/ReadVariableOp^fc_3/MatMul/ReadVariableOp^fc_4/BiasAdd/ReadVariableOp^fc_4/MatMul/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp^fc_5/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp28
fc_1/MatMul/ReadVariableOpfc_1/MatMul/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp28
fc_2/MatMul/ReadVariableOpfc_2/MatMul/ReadVariableOp2:
fc_3/BiasAdd/ReadVariableOpfc_3/BiasAdd/ReadVariableOp28
fc_3/MatMul/ReadVariableOpfc_3/MatMul/ReadVariableOp2:
fc_4/BiasAdd/ReadVariableOpfc_4/BiasAdd/ReadVariableOp28
fc_4/MatMul/ReadVariableOpfc_4/MatMul/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp28
fc_5/MatMul/ReadVariableOpfc_5/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î	
Ú
A__inference_fc_4_layer_call_and_return_conditional_losses_5360573

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
Ô!
ø
B__inference_mnist_layer_call_and_return_conditional_losses_5360142	
input
fc_1_5360001
fc_1_5360003
fc_2_5360028
fc_2_5360030
fc_3_5360055
fc_3_5360057
fc_4_5360082
fc_4_5360084
fc_5_5360109
fc_5_5360111
output_5360136
output_5360138
identity¢fc_1/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢output/StatefulPartitionedCallÕ
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
D__inference_flatten_layer_call_and_return_conditional_losses_53599712
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_5360001fc_1_5360003*
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
A__inference_fc_1_layer_call_and_return_conditional_losses_53599902
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_5360028fc_2_5360030*
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
A__inference_fc_2_layer_call_and_return_conditional_losses_53600172
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_5360055fc_3_5360057*
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
A__inference_fc_3_layer_call_and_return_conditional_losses_53600442
fc_3/StatefulPartitionedCall¥
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_5360082fc_4_5360084*
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
A__inference_fc_4_layer_call_and_return_conditional_losses_53600712
fc_4/StatefulPartitionedCall¥
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_5360109fc_5_5360111*
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
GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_53600982
fc_5/StatefulPartitionedCall¯
output/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0output_5360136output_5360138*
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
C__inference_output_layer_call_and_return_conditional_losses_53601252 
output/StatefulPartitionedCall·
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
Û
{
&__inference_fc_4_layer_call_fn_5360582

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
A__inference_fc_4_layer_call_and_return_conditional_losses_53600712
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
ô	
Ú
A__inference_fc_1_layer_call_and_return_conditional_losses_5359990

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
®	

'__inference_mnist_layer_call_fn_5360491

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

unknown_10
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_53602792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_1_layer_call_and_return_conditional_losses_5360513

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
Ý
{
&__inference_fc_1_layer_call_fn_5360522

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
A__inference_fc_1_layer_call_and_return_conditional_losses_53599902
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
×!
ù
B__inference_mnist_layer_call_and_return_conditional_losses_5360279

inputs
fc_1_5360248
fc_1_5360250
fc_2_5360253
fc_2_5360255
fc_3_5360258
fc_3_5360260
fc_4_5360263
fc_4_5360265
fc_5_5360268
fc_5_5360270
output_5360273
output_5360275
identity¢fc_1/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢output/StatefulPartitionedCallÖ
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
D__inference_flatten_layer_call_and_return_conditional_losses_53599712
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_5360248fc_1_5360250*
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
A__inference_fc_1_layer_call_and_return_conditional_losses_53599902
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_5360253fc_2_5360255*
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
A__inference_fc_2_layer_call_and_return_conditional_losses_53600172
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_5360258fc_3_5360260*
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
A__inference_fc_3_layer_call_and_return_conditional_losses_53600442
fc_3/StatefulPartitionedCall¥
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_5360263fc_4_5360265*
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
A__inference_fc_4_layer_call_and_return_conditional_losses_53600712
fc_4/StatefulPartitionedCall¥
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_5360268fc_5_5360270*
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
GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_53600982
fc_5/StatefulPartitionedCall¯
output/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0output_5360273output_5360275*
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
C__inference_output_layer_call_and_return_conditional_losses_53601252 
output/StatefulPartitionedCall·
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_5359971

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
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_5360497

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
	

%__inference_signature_wrapper_5360337	
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

unknown_10
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_53599612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
×!
ù
B__inference_mnist_layer_call_and_return_conditional_losses_5360215

inputs
fc_1_5360184
fc_1_5360186
fc_2_5360189
fc_2_5360191
fc_3_5360194
fc_3_5360196
fc_4_5360199
fc_4_5360201
fc_5_5360204
fc_5_5360206
output_5360209
output_5360211
identity¢fc_1/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢output/StatefulPartitionedCallÖ
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
D__inference_flatten_layer_call_and_return_conditional_losses_53599712
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_5360184fc_1_5360186*
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
A__inference_fc_1_layer_call_and_return_conditional_losses_53599902
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_5360189fc_2_5360191*
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
A__inference_fc_2_layer_call_and_return_conditional_losses_53600172
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_5360194fc_3_5360196*
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
A__inference_fc_3_layer_call_and_return_conditional_losses_53600442
fc_3/StatefulPartitionedCall¥
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_5360199fc_4_5360201*
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
A__inference_fc_4_layer_call_and_return_conditional_losses_53600712
fc_4/StatefulPartitionedCall¥
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_5360204fc_5_5360206*
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
GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_53600982
fc_5/StatefulPartitionedCall¯
output/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0output_5360209output_5360211*
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
C__inference_output_layer_call_and_return_conditional_losses_53601252 
output/StatefulPartitionedCall·
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_3_layer_call_and_return_conditional_losses_5360553

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
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
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
}
(__inference_output_layer_call_fn_5360622

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
C__inference_output_layer_call_and_return_conditional_losses_53601252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ô	
Ú
A__inference_fc_2_layer_call_and_return_conditional_losses_5360017

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
®	

'__inference_mnist_layer_call_fn_5360462

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

unknown_10
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_53602152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ	
Ü
C__inference_output_layer_call_and_return_conditional_losses_5360613

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
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
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ë	
Ú
A__inference_fc_5_layer_call_and_return_conditional_losses_5360593

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
Ý
{
&__inference_fc_2_layer_call_fn_5360542

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
A__inference_fc_2_layer_call_and_return_conditional_losses_53600172
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
Ù
{
&__inference_fc_5_layer_call_fn_5360602

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
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_53600982
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
õ	
Ü
C__inference_output_layer_call_and_return_conditional_losses_5360125

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
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
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
«	

'__inference_mnist_layer_call_fn_5360242	
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

unknown_10
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_53602152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
ô	
Ú
A__inference_fc_3_layer_call_and_return_conditional_losses_5360044

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
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
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
$
õ
 __inference__traced_save_5360681
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
$savev2_fc_5_bias_read_readvariableop,
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
ShardedFilenameµ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ç
value½BºB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¢
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_fc_1_kernel_read_readvariableop$savev2_fc_1_bias_read_readvariableop&savev2_fc_2_kernel_read_readvariableop$savev2_fc_2_bias_read_readvariableop&savev2_fc_3_kernel_read_readvariableop$savev2_fc_3_bias_read_readvariableop&savev2_fc_4_kernel_read_readvariableop$savev2_fc_4_bias_read_readvariableop&savev2_fc_5_kernel_read_readvariableop$savev2_fc_5_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*
_input_shapesp
n: :
::
::
::	@:@:@ : : 
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
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$	 

_output_shapes

:@ : 


_output_shapes
: :$ 

_output_shapes

: 
: 

_output_shapes
:
:

_output_shapes
: 
â6
½
B__inference_mnist_layer_call_and_return_conditional_losses_5360385

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
$fc_5_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity¢fc_1/BiasAdd/ReadVariableOp¢fc_1/MatMul/ReadVariableOp¢fc_2/BiasAdd/ReadVariableOp¢fc_2/MatMul/ReadVariableOp¢fc_3/BiasAdd/ReadVariableOp¢fc_3/MatMul/ReadVariableOp¢fc_4/BiasAdd/ReadVariableOp¢fc_4/MatMul/ReadVariableOp¢fc_5/BiasAdd/ReadVariableOp¢fc_5/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpo
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
*
dtype02
fc_2/MatMul/ReadVariableOp
fc_2/MatMulMatMulfc_1/Relu:activations:0"fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/MatMul
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_2/BiasAdd/ReadVariableOp
fc_2/BiasAddBiasAddfc_2/MatMul:product:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_2/BiasAddh
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_2/Relu
fc_3/MatMul/ReadVariableOpReadVariableOp#fc_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
fc_3/MatMul/ReadVariableOp
fc_3/MatMulMatMulfc_2/Relu:activations:0"fc_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/MatMul
fc_3/BiasAdd/ReadVariableOpReadVariableOp$fc_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc_3/BiasAdd/ReadVariableOp
fc_3/BiasAddBiasAddfc_3/MatMul:product:0#fc_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc_3/BiasAddh
	fc_3/ReluRelufc_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	fc_3/Relu
fc_4/MatMul/ReadVariableOpReadVariableOp#fc_4_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
fc_4/MatMul/ReadVariableOp
fc_4/MatMulMatMulfc_3/Relu:activations:0"fc_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_4/MatMul
fc_4/BiasAdd/ReadVariableOpReadVariableOp$fc_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
fc_4/BiasAdd/ReadVariableOp
fc_4/BiasAddBiasAddfc_4/MatMul:product:0#fc_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
fc_4/BiasAddg
	fc_4/ReluRelufc_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	fc_4/Relu
fc_5/MatMul/ReadVariableOpReadVariableOp#fc_5_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
fc_5/MatMul/ReadVariableOp
fc_5/MatMulMatMulfc_4/Relu:activations:0"fc_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_5/MatMul
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_5/BiasAdd/ReadVariableOp
fc_5/BiasAddBiasAddfc_5/MatMul:product:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
fc_5/BiasAddg
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	fc_5/Relu¢
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
output/MatMul/ReadVariableOp
output/MatMulMatMulfc_5/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
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
output/SoftmaxÒ
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp^fc_1/MatMul/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp^fc_2/MatMul/ReadVariableOp^fc_3/BiasAdd/ReadVariableOp^fc_3/MatMul/ReadVariableOp^fc_4/BiasAdd/ReadVariableOp^fc_4/MatMul/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp^fc_5/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp28
fc_1/MatMul/ReadVariableOpfc_1/MatMul/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp28
fc_2/MatMul/ReadVariableOpfc_2/MatMul/ReadVariableOp2:
fc_3/BiasAdd/ReadVariableOpfc_3/BiasAdd/ReadVariableOp28
fc_3/MatMul/ReadVariableOpfc_3/MatMul/ReadVariableOp2:
fc_4/BiasAdd/ReadVariableOpfc_4/BiasAdd/ReadVariableOp28
fc_4/MatMul/ReadVariableOpfc_4/MatMul/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp28
fc_5/MatMul/ReadVariableOpfc_5/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
E
)__inference_flatten_layer_call_fn_5360502

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
D__inference_flatten_layer_call_and_return_conditional_losses_53599712
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
Ô!
ø
B__inference_mnist_layer_call_and_return_conditional_losses_5360177	
input
fc_1_5360146
fc_1_5360148
fc_2_5360151
fc_2_5360153
fc_3_5360156
fc_3_5360158
fc_4_5360161
fc_4_5360163
fc_5_5360166
fc_5_5360168
output_5360171
output_5360173
identity¢fc_1/StatefulPartitionedCall¢fc_2/StatefulPartitionedCall¢fc_3/StatefulPartitionedCall¢fc_4/StatefulPartitionedCall¢fc_5/StatefulPartitionedCall¢output/StatefulPartitionedCallÕ
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
D__inference_flatten_layer_call_and_return_conditional_losses_53599712
flatten/PartitionedCall¡
fc_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_1_5360146fc_1_5360148*
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
A__inference_fc_1_layer_call_and_return_conditional_losses_53599902
fc_1/StatefulPartitionedCall¦
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_5360151fc_2_5360153*
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
A__inference_fc_2_layer_call_and_return_conditional_losses_53600172
fc_2/StatefulPartitionedCall¦
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0fc_3_5360156fc_3_5360158*
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
A__inference_fc_3_layer_call_and_return_conditional_losses_53600442
fc_3/StatefulPartitionedCall¥
fc_4/StatefulPartitionedCallStatefulPartitionedCall%fc_3/StatefulPartitionedCall:output:0fc_4_5360161fc_4_5360163*
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
A__inference_fc_4_layer_call_and_return_conditional_losses_53600712
fc_4/StatefulPartitionedCall¥
fc_5/StatefulPartitionedCallStatefulPartitionedCall%fc_4/StatefulPartitionedCall:output:0fc_5_5360166fc_5_5360168*
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
GPU2*0J 8 *J
fERC
A__inference_fc_5_layer_call_and_return_conditional_losses_53600982
fc_5/StatefulPartitionedCall¯
output/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0output_5360171output_5360173*
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
C__inference_output_layer_call_and_return_conditional_losses_53601252 
output/StatefulPartitionedCall·
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^fc_3/StatefulPartitionedCall^fc_4/StatefulPartitionedCall^fc_5/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_4/StatefulPartitionedCallfc_4/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
Ð4
î
#__inference__traced_restore_5360727
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
assignvariableop_9_fc_5_bias%
!assignvariableop_10_output_kernel#
assignvariableop_11_output_bias
identity_13¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9»
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ç
value½BºB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesì
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
22
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
Identity_10©
AssignVariableOp_10AssignVariableOp!assignvariableop_10_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpæ
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12Ù
Identity_13IdentityIdentity_12:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_13"#
identity_13Identity_13:output:0*E
_input_shapes4
2: ::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
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
ô	
Ú
A__inference_fc_2_layer_call_and_return_conditional_losses_5360533

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
«	

'__inference_mnist_layer_call_fn_5360306	
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

unknown_10
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_mnist_layer_call_and_return_conditional_losses_53602792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
î	
Ú
A__inference_fc_4_layer_call_and_return_conditional_losses_5360071

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
Ý
{
&__inference_fc_3_layer_call_fn_5360562

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
A__inference_fc_3_layer_call_and_return_conditional_losses_53600442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
tensorflow/serving/predict:êÞ
È=
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
		variables

trainable_variables
regularization_losses
	keras_api

signatures
*^&call_and_return_all_conditional_losses
__default_save_signature
`__call__":
_tf_keras_networkì9{"class_name": "Functional", "name": "mnist", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}}}
õ"ò
_tf_keras_input_layerÒ{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
â
	variables
trainable_variables
regularization_losses
	keras_api
*a&call_and_return_all_conditional_losses
b__call__"Ó
_tf_keras_layer¹{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
î

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"É
_tf_keras_layer¯{"class_name": "Dense", "name": "fc_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
ï

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"Ê
_tf_keras_layer°{"class_name": "Dense", "name": "fc_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
í

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
*g&call_and_return_all_conditional_losses
h__call__"È
_tf_keras_layer®{"class_name": "Dense", "name": "fc_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ì

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*i&call_and_return_all_conditional_losses
j__call__"Ç
_tf_keras_layer­{"class_name": "Dense", "name": "fc_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ê

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
*k&call_and_return_all_conditional_losses
l__call__"Å
_tf_keras_layer«{"class_name": "Dense", "name": "fc_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ñ

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
*m&call_and_return_all_conditional_losses
n__call__"Ì
_tf_keras_layer²{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
v
0
1
2
3
4
5
$6
%7
*8
+9
010
111"
trackable_list_wrapper
v
0
1
2
3
4
5
$6
%7
*8
+9
010
111"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
6layer_metrics
		variables
7non_trainable_variables
8metrics

9layers
:layer_regularization_losses

trainable_variables
regularization_losses
`__call__
__default_save_signature
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
,
oserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
;layer_metrics
	variables
<metrics
=non_trainable_variables

>layers
?layer_regularization_losses
trainable_variables
regularization_losses
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
:
2fc_1/kernel
:2	fc_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
@layer_metrics
	variables
Ametrics
Bnon_trainable_variables

Clayers
Dlayer_regularization_losses
trainable_variables
regularization_losses
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
:
2fc_2/kernel
:2	fc_2/bias
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
­
Elayer_metrics
	variables
Fmetrics
Gnon_trainable_variables

Hlayers
Ilayer_regularization_losses
trainable_variables
regularization_losses
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
:
2fc_3/kernel
:2	fc_3/bias
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
­
Jlayer_metrics
 	variables
Kmetrics
Lnon_trainable_variables

Mlayers
Nlayer_regularization_losses
!trainable_variables
"regularization_losses
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
:	@2fc_4/kernel
:@2	fc_4/bias
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
­
Olayer_metrics
&	variables
Pmetrics
Qnon_trainable_variables

Rlayers
Slayer_regularization_losses
'trainable_variables
(regularization_losses
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
:@ 2fc_5/kernel
: 2	fc_5/bias
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
­
Tlayer_metrics
,	variables
Umetrics
Vnon_trainable_variables

Wlayers
Xlayer_regularization_losses
-trainable_variables
.regularization_losses
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
: 
2output/kernel
:
2output/bias
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
­
Ylayer_metrics
2	variables
Zmetrics
[non_trainable_variables

\layers
]layer_regularization_losses
3trainable_variables
4regularization_losses
n__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
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
B__inference_mnist_layer_call_and_return_conditional_losses_5360433
B__inference_mnist_layer_call_and_return_conditional_losses_5360385
B__inference_mnist_layer_call_and_return_conditional_losses_5360177
B__inference_mnist_layer_call_and_return_conditional_losses_5360142À
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
"__inference__wrapped_model_5359961¼
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
'__inference_mnist_layer_call_fn_5360491
'__inference_mnist_layer_call_fn_5360306
'__inference_mnist_layer_call_fn_5360242
'__inference_mnist_layer_call_fn_5360462À
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
D__inference_flatten_layer_call_and_return_conditional_losses_5360497¢
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
)__inference_flatten_layer_call_fn_5360502¢
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
A__inference_fc_1_layer_call_and_return_conditional_losses_5360513¢
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
&__inference_fc_1_layer_call_fn_5360522¢
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
A__inference_fc_2_layer_call_and_return_conditional_losses_5360533¢
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
&__inference_fc_2_layer_call_fn_5360542¢
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
A__inference_fc_3_layer_call_and_return_conditional_losses_5360553¢
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
&__inference_fc_3_layer_call_fn_5360562¢
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
A__inference_fc_4_layer_call_and_return_conditional_losses_5360573¢
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
&__inference_fc_4_layer_call_fn_5360582¢
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
A__inference_fc_5_layer_call_and_return_conditional_losses_5360593¢
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
&__inference_fc_5_layer_call_fn_5360602¢
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
C__inference_output_layer_call_and_return_conditional_losses_5360613¢
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
(__inference_output_layer_call_fn_5360622¢
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
%__inference_signature_wrapper_5360337input"
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
 
"__inference__wrapped_model_5359961w$%*+016¢3
,¢)
'$
inputÿÿÿÿÿÿÿÿÿ
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ
£
A__inference_fc_1_layer_call_and_return_conditional_losses_5360513^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_1_layer_call_fn_5360522Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_2_layer_call_and_return_conditional_losses_5360533^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_2_layer_call_fn_5360542Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_fc_3_layer_call_and_return_conditional_losses_5360553^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc_3_layer_call_fn_5360562Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
A__inference_fc_4_layer_call_and_return_conditional_losses_5360573]$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 z
&__inference_fc_4_layer_call_fn_5360582P$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¡
A__inference_fc_5_layer_call_and_return_conditional_losses_5360593\*+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 y
&__inference_fc_5_layer_call_fn_5360602O*+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ©
D__inference_flatten_layer_call_and_return_conditional_losses_5360497a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_flatten_layer_call_fn_5360502T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ»
B__inference_mnist_layer_call_and_return_conditional_losses_5360142u$%*+01>¢;
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
 »
B__inference_mnist_layer_call_and_return_conditional_losses_5360177u$%*+01>¢;
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
 ¼
B__inference_mnist_layer_call_and_return_conditional_losses_5360385v$%*+01?¢<
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
 ¼
B__inference_mnist_layer_call_and_return_conditional_losses_5360433v$%*+01?¢<
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
 
'__inference_mnist_layer_call_fn_5360242h$%*+01>¢;
4¢1
'$
inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_mnist_layer_call_fn_5360306h$%*+01>¢;
4¢1
'$
inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_mnist_layer_call_fn_5360462i$%*+01?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_mnist_layer_call_fn_5360491i$%*+01?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
£
C__inference_output_layer_call_and_return_conditional_losses_5360613\01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 {
(__inference_output_layer_call_fn_5360622O01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ
ª
%__inference_signature_wrapper_5360337$%*+01?¢<
¢ 
5ª2
0
input'$
inputÿÿÿÿÿÿÿÿÿ"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ
