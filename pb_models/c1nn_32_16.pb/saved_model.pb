??
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
 ?"serve*2.4.12unknown8??

v
fc_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namefc_1/kernel
o
fc_1/kernel/Read/ReadVariableOpReadVariableOpfc_1/kernel*"
_output_shapes
: *
dtype0
j
	fc_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	fc_1/bias
c
fc_1/bias/Read/ReadVariableOpReadVariableOp	fc_1/bias*
_output_shapes
: *
dtype0
v
fc_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_namefc_2/kernel
o
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel*"
_output_shapes
:  *
dtype0
j
	fc_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	fc_2/bias
c
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes
: *
dtype0
v
fc_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namefc_5/kernel
o
fc_5/kernel/Read/ReadVariableOpReadVariableOpfc_5/kernel*"
_output_shapes
: *
dtype0
j
	fc_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_5/bias
c
fc_5/bias/Read/ReadVariableOpReadVariableOp	fc_5/bias*
_output_shapes
:*
dtype0
v
fc_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namefc_6/kernel
o
fc_6/kernel/Read/ReadVariableOpReadVariableOpfc_6/kernel*"
_output_shapes
:*
dtype0
j
	fc_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc_6/bias
c
fc_6/bias/Read/ReadVariableOpReadVariableOp	fc_6/bias*
_output_shapes
:*
dtype0
w
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_nameoutput/kernel
p
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes
:	?
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
?'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?'
value?'B?' B?'
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
layer-11
layer_with_weights-4
layer-12
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
R
regularization_losses
trainable_variables
	variables
	keras_api

	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
R
$regularization_losses
%trainable_variables
&	variables
'	keras_api
R
(regularization_losses
)trainable_variables
*	variables
+	keras_api
h

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
R
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
 
F
0
1
2
3
,4
-5
26
37
D8
E9
F
0
1
2
3
,4
-5
26
37
D8
E9
?
Jnon_trainable_variables
regularization_losses
Klayer_metrics
Lmetrics
Mlayer_regularization_losses
trainable_variables

Nlayers
	variables
 
 
 
 
?
Onon_trainable_variables
regularization_losses
Player_metrics
Qmetrics
Rlayer_regularization_losses
trainable_variables

Slayers
	variables
 
WU
VARIABLE_VALUEfc_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Tnon_trainable_variables
regularization_losses
Ulayer_metrics
Vmetrics
Wlayer_regularization_losses
trainable_variables

Xlayers
	variables
WU
VARIABLE_VALUEfc_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Ynon_trainable_variables
 regularization_losses
Zlayer_metrics
[metrics
\layer_regularization_losses
!trainable_variables

]layers
"	variables
 
 
 
?
^non_trainable_variables
$regularization_losses
_layer_metrics
`metrics
alayer_regularization_losses
%trainable_variables

blayers
&	variables
 
 
 
?
cnon_trainable_variables
(regularization_losses
dlayer_metrics
emetrics
flayer_regularization_losses
)trainable_variables

glayers
*	variables
WU
VARIABLE_VALUEfc_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

,0
-1

,0
-1
?
hnon_trainable_variables
.regularization_losses
ilayer_metrics
jmetrics
klayer_regularization_losses
/trainable_variables

llayers
0	variables
WU
VARIABLE_VALUEfc_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
?
mnon_trainable_variables
4regularization_losses
nlayer_metrics
ometrics
player_regularization_losses
5trainable_variables

qlayers
6	variables
 
 
 
?
rnon_trainable_variables
8regularization_losses
slayer_metrics
tmetrics
ulayer_regularization_losses
9trainable_variables

vlayers
:	variables
 
 
 
?
wnon_trainable_variables
<regularization_losses
xlayer_metrics
ymetrics
zlayer_regularization_losses
=trainable_variables

{layers
>	variables
 
 
 
?
|non_trainable_variables
@regularization_losses
}layer_metrics
~metrics
layer_regularization_losses
Atrainable_variables
?layers
B	variables
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 
 
 
 
^
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_5/kernel	fc_5/biasfc_6/kernel	fc_6/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_562253
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefc_1/kernel/Read/ReadVariableOpfc_1/bias/Read/ReadVariableOpfc_2/kernel/Read/ReadVariableOpfc_2/bias/Read/ReadVariableOpfc_5/kernel/Read/ReadVariableOpfc_5/bias/Read/ReadVariableOpfc_6/kernel/Read/ReadVariableOpfc_6/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_562856
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasfc_5/kernel	fc_5/biasfc_6/kernel	fc_6/biasoutput/kerneloutput/bias*
Tin
2*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_562896??

?
|
'__inference_output_layer_call_fn_562759

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
GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_5619272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?R
?
A__inference_mnist_layer_call_and_return_conditional_losses_562179

inputs
fc_1_562124
fc_1_562126
fc_2_562129
fc_2_562131
fc_5_562136
fc_5_562138
fc_6_562141
fc_6_562143
output_562149
output_562151
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5616782
flatten/PartitionedCall?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDims flatten/PartitionedCall:output:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0fc_1_562124fc_1_562126*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_5617102
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_562129fc_2_562131*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_5617482
fc_2/StatefulPartitionedCall?
fc_3/PartitionedCallPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_5617812
fc_3/PartitionedCall?
fc_4/PartitionedCallPartitionedCallfc_3/PartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_5616472
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_562136fc_5_562138*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_5_layer_call_and_return_conditional_losses_5618172
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_562141fc_6_562143*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_6_layer_call_and_return_conditional_losses_5618552
fc_6/StatefulPartitionedCall?
fc_7/PartitionedCallPartitionedCall%fc_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_7_layer_call_and_return_conditional_losses_5618882
fc_7/PartitionedCall?
fc_8/PartitionedCallPartitionedCallfc_7/PartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_8_layer_call_and_return_conditional_losses_5616622
fc_8/PartitionedCall?
fc9/PartitionedCallPartitionedCallfc_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc9_layer_call_and_return_conditional_losses_5619082
fc9/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc9/PartitionedCall:output:0output_562149output_562151*
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
GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_5619272 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_562124*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_562129*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_562136*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_562141*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
fc_6/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
z
%__inference_fc_1_layer_call_fn_562563

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
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_5617102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
@__inference_fc_3_layer_call_and_return_conditional_losses_562612

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
:?????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_562781:
6fc_2_kernel_regularizer_square_readvariableop_resource
identity??-fc_2/kernel/Regularizer/Square/ReadVariableOp?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_2_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
?
A
%__inference_fc_8_layer_call_fn_561668

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
GPU2*0J 8? *I
fDRB
@__inference_fc_8_layer_call_and_return_conditional_losses_5616622
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
?
?
__inference_loss_fn_2_562792:
6fc_5_kernel_regularizer_square_readvariableop_resource
identity??-fc_5/kernel/Regularizer/Square/ReadVariableOp?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_5_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
?
A
%__inference_fc_7_layer_call_fn_562728

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_7_layer_call_and_return_conditional_losses_5618882
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_fc_6_layer_call_and_return_conditional_losses_561855

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
:??????????2
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
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_output_layer_call_and_return_conditional_losses_561927

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
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
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
@__inference_fc_7_layer_call_and_return_conditional_losses_561888

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_output_layer_call_and_return_conditional_losses_562750

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
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
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?R
?
A__inference_mnist_layer_call_and_return_conditional_losses_562029	
input
fc_1_561974
fc_1_561976
fc_2_561979
fc_2_561981
fc_5_561986
fc_5_561988
fc_6_561991
fc_6_561993
output_561999
output_562001
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5616782
flatten/PartitionedCall?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDims flatten/PartitionedCall:output:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0fc_1_561974fc_1_561976*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_5617102
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_561979fc_2_561981*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_5617482
fc_2/StatefulPartitionedCall?
fc_3/PartitionedCallPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_5617812
fc_3/PartitionedCall?
fc_4/PartitionedCallPartitionedCallfc_3/PartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_5616472
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_561986fc_5_561988*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_5_layer_call_and_return_conditional_losses_5618172
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_561991fc_6_561993*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_6_layer_call_and_return_conditional_losses_5618552
fc_6/StatefulPartitionedCall?
fc_7/PartitionedCallPartitionedCall%fc_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_7_layer_call_and_return_conditional_losses_5618882
fc_7/PartitionedCall?
fc_8/PartitionedCallPartitionedCallfc_7/PartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_8_layer_call_and_return_conditional_losses_5616622
fc_8/PartitionedCall?
fc9/PartitionedCallPartitionedCallfc_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc9_layer_call_and_return_conditional_losses_5619082
fc9/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc9/PartitionedCall:output:0output_561999output_562001*
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
GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_5619272 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_561974*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_561979*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_561986*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_561991*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
fc_6/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
[
?__inference_fc9_layer_call_and_return_conditional_losses_562734

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
Ƀ
?
A__inference_mnist_layer_call_and_return_conditional_losses_562465

inputs4
0fc_1_conv1d_expanddims_1_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource4
0fc_2_conv1d_expanddims_1_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource4
0fc_5_conv1d_expanddims_1_readvariableop_resource(
$fc_5_biasadd_readvariableop_resource4
0fc_6_conv1d_expanddims_1_readvariableop_resource(
$fc_6_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??fc_1/BiasAdd/ReadVariableOp?'fc_1/conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/BiasAdd/ReadVariableOp?'fc_2/conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/BiasAdd/ReadVariableOp?'fc_5/conv1d/ExpandDims_1/ReadVariableOp?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/BiasAdd/ReadVariableOp?'fc_6/conv1d/ExpandDims_1/ReadVariableOp?-fc_6/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpo
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
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsflatten/Reshape:output:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_1/conv1d/ExpandDims/dim?
fc_1/conv1d/ExpandDims
ExpandDims"tf.expand_dims/ExpandDims:output:0#fc_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_1/conv1d/ExpandDims?
'fc_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
fc_1/conv1d/ExpandDims_1?
fc_1/conv1dConv2Dfc_1/conv1d/ExpandDims:output:0!fc_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_1/conv1d?
fc_1/conv1d/SqueezeSqueezefc_1/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_1/conv1d/Squeeze?
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_1/BiasAdd/ReadVariableOp?
fc_1/BiasAddBiasAddfc_1/conv1d/Squeeze:output:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_1/BiasAddl
	fc_1/ReluRelufc_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
fc_2/conv1d/ExpandDims?
'fc_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
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
:  2
fc_2/conv1d/ExpandDims_1?
fc_2/conv1dConv2Dfc_2/conv1d/ExpandDims:output:0!fc_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_2/conv1d?
fc_2/conv1d/SqueezeSqueezefc_2/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_2/conv1d/Squeeze?
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_2/BiasAdd/ReadVariableOp?
fc_2/BiasAddBiasAddfc_2/conv1d/Squeeze:output:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_2/BiasAddl
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
	fc_2/Reluz
fc_3/IdentityIdentityfc_2/Relu:activations:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
fc_4/ExpandDims?
fc_4/MaxPoolMaxPoolfc_4/ExpandDims:output:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
fc_4/MaxPool?
fc_4/SqueezeSqueezefc_4/MaxPool:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2
fc_5/conv1d/ExpandDims?
'fc_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
fc_5/conv1d/ExpandDims_1?
fc_5/conv1dConv2Dfc_5/conv1d/ExpandDims:output:0!fc_5/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_5/conv1d?
fc_5/conv1d/SqueezeSqueezefc_5/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_5/conv1d/Squeeze?
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_5/BiasAdd/ReadVariableOp?
fc_5/BiasAddBiasAddfc_5/conv1d/Squeeze:output:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_5/BiasAddl
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
fc_6/conv1d/ExpandDims?
'fc_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:2
fc_6/conv1d/ExpandDims_1?
fc_6/conv1dConv2Dfc_6/conv1d/ExpandDims:output:0!fc_6/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_6/conv1d?
fc_6/conv1d/SqueezeSqueezefc_6/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_6/conv1d/Squeeze?
fc_6/BiasAdd/ReadVariableOpReadVariableOp$fc_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_6/BiasAdd/ReadVariableOp?
fc_6/BiasAddBiasAddfc_6/conv1d/Squeeze:output:0#fc_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_6/BiasAddl
	fc_6/ReluRelufc_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
	fc_6/Reluz
fc_7/IdentityIdentityfc_6/Relu:activations:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
fc_8/ExpandDims?
fc_8/MaxPoolMaxPoolfc_8/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
fc_8/MaxPool?
fc_8/SqueezeSqueezefc_8/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
fc_8/Squeezeg
	fc9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
	fc9/Const?
fc9/ReshapeReshapefc_8/Squeeze:output:0fc9/Const:output:0*
T0*(
_output_shapes
:??????????2
fc9/Reshape?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulfc9/Reshape:output:0$output/MatMul/ReadVariableOp:value:0*
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
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
fc_6/kernel/Regularizer/mul?
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp(^fc_1/conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp(^fc_2/conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp(^fc_5/conv1d/ExpandDims_1/ReadVariableOp.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/BiasAdd/ReadVariableOp(^fc_6/conv1d/ExpandDims_1/ReadVariableOp.^fc_6/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp2R
'fc_1/conv1d/ExpandDims_1/ReadVariableOp'fc_1/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp2R
'fc_2/conv1d/ExpandDims_1/ReadVariableOp'fc_2/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp2R
'fc_5/conv1d/ExpandDims_1/ReadVariableOp'fc_5/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2:
fc_6/BiasAdd/ReadVariableOpfc_6/BiasAdd/ReadVariableOp2R
'fc_6/conv1d/ExpandDims_1/ReadVariableOp'fc_6/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
@__inference_fc_7_layer_call_and_return_conditional_losses_562713

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
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
%__inference_fc_3_layer_call_fn_562622

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
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_5617762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?U
?
A__inference_mnist_layer_call_and_return_conditional_losses_561968	
input
fc_1_561721
fc_1_561723
fc_2_561759
fc_2_561761
fc_5_561828
fc_5_561830
fc_6_561866
fc_6_561868
output_561938
output_561940
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_3/StatefulPartitionedCall?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_7/StatefulPartitionedCall?output/StatefulPartitionedCall?
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5616782
flatten/PartitionedCall?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDims flatten/PartitionedCall:output:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0fc_1_561721fc_1_561723*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_5617102
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_561759fc_2_561761*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_5617482
fc_2/StatefulPartitionedCall?
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_5617762
fc_3/StatefulPartitionedCall?
fc_4/PartitionedCallPartitionedCall%fc_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_5616472
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_561828fc_5_561830*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_5_layer_call_and_return_conditional_losses_5618172
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_561866fc_6_561868*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_6_layer_call_and_return_conditional_losses_5618552
fc_6/StatefulPartitionedCall?
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0^fc_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_7_layer_call_and_return_conditional_losses_5618832
fc_7/StatefulPartitionedCall?
fc_8/PartitionedCallPartitionedCall%fc_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_8_layer_call_and_return_conditional_losses_5616622
fc_8/PartitionedCall?
fc9/PartitionedCallPartitionedCallfc_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc9_layer_call_and_return_conditional_losses_5619082
fc9/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc9/PartitionedCall:output:0output_561938output_561940*
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
GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_5619272 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_561721*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_561759*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_561828*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_561866*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
fc_6/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_3/StatefulPartitionedCall^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_7/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
??
?
A__inference_mnist_layer_call_and_return_conditional_losses_562366

inputs4
0fc_1_conv1d_expanddims_1_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource4
0fc_2_conv1d_expanddims_1_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource4
0fc_5_conv1d_expanddims_1_readvariableop_resource(
$fc_5_biasadd_readvariableop_resource4
0fc_6_conv1d_expanddims_1_readvariableop_resource(
$fc_6_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??fc_1/BiasAdd/ReadVariableOp?'fc_1/conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/BiasAdd/ReadVariableOp?'fc_2/conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_5/BiasAdd/ReadVariableOp?'fc_5/conv1d/ExpandDims_1/ReadVariableOp?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/BiasAdd/ReadVariableOp?'fc_6/conv1d/ExpandDims_1/ReadVariableOp?-fc_6/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpo
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
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsflatten/Reshape:output:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_1/conv1d/ExpandDims/dim?
fc_1/conv1d/ExpandDims
ExpandDims"tf.expand_dims/ExpandDims:output:0#fc_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
fc_1/conv1d/ExpandDims?
'fc_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
fc_1/conv1d/ExpandDims_1?
fc_1/conv1dConv2Dfc_1/conv1d/ExpandDims:output:0!fc_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_1/conv1d?
fc_1/conv1d/SqueezeSqueezefc_1/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_1/conv1d/Squeeze?
fc_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_1/BiasAdd/ReadVariableOp?
fc_1/BiasAddBiasAddfc_1/conv1d/Squeeze:output:0#fc_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_1/BiasAddl
	fc_1/ReluRelufc_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
fc_2/conv1d/ExpandDims?
'fc_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
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
:  2
fc_2/conv1d/ExpandDims_1?
fc_2/conv1dConv2Dfc_2/conv1d/ExpandDims:output:0!fc_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
fc_2/conv1d?
fc_2/conv1d/SqueezeSqueezefc_2/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
fc_2/conv1d/Squeeze?
fc_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
fc_2/BiasAdd/ReadVariableOp?
fc_2/BiasAddBiasAddfc_2/conv1d/Squeeze:output:0#fc_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
fc_2/BiasAddl
	fc_2/ReluRelufc_2/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
fc_3/dropout/Mulo
fc_3/dropout/ShapeShapefc_2/Relu:activations:0*
T0*
_output_shapes
:2
fc_3/dropout/Shape?
)fc_3/dropout/random_uniform/RandomUniformRandomUniformfc_3/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2
fc_3/dropout/GreaterEqual?
fc_3/dropout/CastCastfc_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
fc_3/dropout/Cast?
fc_3/dropout/Mul_1Mulfc_3/dropout/Mul:z:0fc_3/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
fc_4/ExpandDims?
fc_4/MaxPoolMaxPoolfc_4/ExpandDims:output:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
fc_4/MaxPool?
fc_4/SqueezeSqueezefc_4/MaxPool:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2
fc_5/conv1d/ExpandDims?
'fc_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
fc_5/conv1d/ExpandDims_1?
fc_5/conv1dConv2Dfc_5/conv1d/ExpandDims:output:0!fc_5/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_5/conv1d?
fc_5/conv1d/SqueezeSqueezefc_5/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_5/conv1d/Squeeze?
fc_5/BiasAdd/ReadVariableOpReadVariableOp$fc_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_5/BiasAdd/ReadVariableOp?
fc_5/BiasAddBiasAddfc_5/conv1d/Squeeze:output:0#fc_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_5/BiasAddl
	fc_5/ReluRelufc_5/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
fc_6/conv1d/ExpandDims?
'fc_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:2
fc_6/conv1d/ExpandDims_1?
fc_6/conv1dConv2Dfc_6/conv1d/ExpandDims:output:0!fc_6/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
fc_6/conv1d?
fc_6/conv1d/SqueezeSqueezefc_6/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
fc_6/conv1d/Squeeze?
fc_6/BiasAdd/ReadVariableOpReadVariableOp$fc_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc_6/BiasAdd/ReadVariableOp?
fc_6/BiasAddBiasAddfc_6/conv1d/Squeeze:output:0#fc_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
fc_6/BiasAddl
	fc_6/ReluRelufc_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
fc_7/dropout/Mulo
fc_7/dropout/ShapeShapefc_6/Relu:activations:0*
T0*
_output_shapes
:2
fc_7/dropout/Shape?
)fc_7/dropout/random_uniform/RandomUniformRandomUniformfc_7/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2
fc_7/dropout/GreaterEqual?
fc_7/dropout/CastCastfc_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
fc_7/dropout/Cast?
fc_7/dropout/Mul_1Mulfc_7/dropout/Mul:z:0fc_7/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
fc_8/ExpandDims?
fc_8/MaxPoolMaxPoolfc_8/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
fc_8/MaxPool?
fc_8/SqueezeSqueezefc_8/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
fc_8/Squeezeg
	fc9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
	fc9/Const?
fc9/ReshapeReshapefc_8/Squeeze:output:0fc9/Const:output:0*
T0*(
_output_shapes
:??????????2
fc9/Reshape?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulfc9/Reshape:output:0$output/MatMul/ReadVariableOp:value:0*
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
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
fc_6/kernel/Regularizer/mul?
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp(^fc_1/conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp(^fc_2/conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_5/BiasAdd/ReadVariableOp(^fc_5/conv1d/ExpandDims_1/ReadVariableOp.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/BiasAdd/ReadVariableOp(^fc_6/conv1d/ExpandDims_1/ReadVariableOp.^fc_6/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp2R
'fc_1/conv1d/ExpandDims_1/ReadVariableOp'fc_1/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp2R
'fc_2/conv1d/ExpandDims_1/ReadVariableOp'fc_2/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2:
fc_5/BiasAdd/ReadVariableOpfc_5/BiasAdd/ReadVariableOp2R
'fc_5/conv1d/ExpandDims_1/ReadVariableOp'fc_5/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2:
fc_6/BiasAdd/ReadVariableOpfc_6/BiasAdd/ReadVariableOp2R
'fc_6/conv1d/ExpandDims_1/ReadVariableOp'fc_6/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_fc_5_layer_call_and_return_conditional_losses_562655

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
:?????????? 2
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
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
[
?__inference_fc9_layer_call_and_return_conditional_losses_561908

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
%__inference_fc_7_layer_call_fn_562723

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_7_layer_call_and_return_conditional_losses_5618832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
@__inference_fc_3_layer_call_and_return_conditional_losses_562617

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????? 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
@__inference_fc_2_layer_call_and_return_conditional_losses_562591

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
:?????????? 2
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
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?U
?
A__inference_mnist_layer_call_and_return_conditional_losses_562093

inputs
fc_1_562038
fc_1_562040
fc_2_562043
fc_2_562045
fc_5_562050
fc_5_562052
fc_6_562055
fc_6_562057
output_562063
output_562065
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_3/StatefulPartitionedCall?fc_5/StatefulPartitionedCall?-fc_5/kernel/Regularizer/Square/ReadVariableOp?fc_6/StatefulPartitionedCall?-fc_6/kernel/Regularizer/Square/ReadVariableOp?fc_7/StatefulPartitionedCall?output/StatefulPartitionedCall?
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5616782
flatten/PartitionedCall?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDims flatten/PartitionedCall:output:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0fc_1_562038fc_1_562040*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_5617102
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_562043fc_2_562045*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_5617482
fc_2/StatefulPartitionedCall?
fc_3/StatefulPartitionedCallStatefulPartitionedCall%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_5617762
fc_3/StatefulPartitionedCall?
fc_4/PartitionedCallPartitionedCall%fc_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_5616472
fc_4/PartitionedCall?
fc_5/StatefulPartitionedCallStatefulPartitionedCallfc_4/PartitionedCall:output:0fc_5_562050fc_5_562052*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_5_layer_call_and_return_conditional_losses_5618172
fc_5/StatefulPartitionedCall?
fc_6/StatefulPartitionedCallStatefulPartitionedCall%fc_5/StatefulPartitionedCall:output:0fc_6_562055fc_6_562057*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_6_layer_call_and_return_conditional_losses_5618552
fc_6/StatefulPartitionedCall?
fc_7/StatefulPartitionedCallStatefulPartitionedCall%fc_6/StatefulPartitionedCall:output:0^fc_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_7_layer_call_and_return_conditional_losses_5618832
fc_7/StatefulPartitionedCall?
fc_8/PartitionedCallPartitionedCall%fc_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_8_layer_call_and_return_conditional_losses_5616622
fc_8/PartitionedCall?
fc9/PartitionedCallPartitionedCallfc_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc9_layer_call_and_return_conditional_losses_5619082
fc9/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc9/PartitionedCall:output:0output_562063output_562065*
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
GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_5619272 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_562038*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_562043*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_5_562050*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_6_562055*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
fc_6/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_3/StatefulPartitionedCall^fc_5/StatefulPartitionedCall.^fc_5/kernel/Regularizer/Square/ReadVariableOp^fc_6/StatefulPartitionedCall.^fc_6/kernel/Regularizer/Square/ReadVariableOp^fc_7/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2<
fc_5/StatefulPartitionedCallfc_5/StatefulPartitionedCall2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp2<
fc_6/StatefulPartitionedCallfc_6/StatefulPartitionedCall2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp2<
fc_7/StatefulPartitionedCallfc_7/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_flatten_layer_call_fn_562526

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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5616782
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
?
_
@__inference_fc_7_layer_call_and_return_conditional_losses_561883

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
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_mnist_layer_call_fn_562202	
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
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_5621792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
?
@__inference_fc_1_layer_call_and_return_conditional_losses_562554

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
: *
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
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:?????????? 2

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
z
%__inference_fc_6_layer_call_fn_562701

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_6_layer_call_and_return_conditional_losses_5618552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
@__inference_fc_8_layer_call_and_return_conditional_losses_561662

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
@
$__inference_fc9_layer_call_fn_562739

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc9_layer_call_and_return_conditional_losses_5619082
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
A
%__inference_fc_3_layer_call_fn_562627

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
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_5617812
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
z
%__inference_fc_5_layer_call_fn_562664

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_5_layer_call_and_return_conditional_losses_5618172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

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
?
__inference_loss_fn_3_562803:
6fc_6_kernel_regularizer_square_readvariableop_resource
identity??-fc_6/kernel/Regularizer/Square/ReadVariableOp?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_6_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
?
^
@__inference_fc_7_layer_call_and_return_conditional_losses_562718

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
z
%__inference_fc_2_layer_call_fn_562600

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
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_5617482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_562253	
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
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_5616382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
?
__inference_loss_fn_0_562770:
6fc_1_kernel_regularizer_square_readvariableop_resource
identity??-fc_1/kernel/Regularizer/Square/ReadVariableOp?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc_1_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp
?
?
@__inference_fc_5_layer_call_and_return_conditional_losses_561817

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
:?????????? 2
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
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
-fc_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_5/kernel/Regularizer/Square/ReadVariableOp?
fc_5/kernel/Regularizer/SquareSquare5fc_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_5/kernel/Regularizer/Square/ReadVariableOp-fc_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?h
?
!__inference__wrapped_model_561638	
input:
6mnist_fc_1_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_1_biasadd_readvariableop_resource:
6mnist_fc_2_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_2_biasadd_readvariableop_resource:
6mnist_fc_5_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_5_biasadd_readvariableop_resource:
6mnist_fc_6_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_6_biasadd_readvariableop_resource/
+mnist_output_matmul_readvariableop_resource0
,mnist_output_biasadd_readvariableop_resource
identity??!mnist/fc_1/BiasAdd/ReadVariableOp?-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_2/BiasAdd/ReadVariableOp?-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_5/BiasAdd/ReadVariableOp?-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_6/BiasAdd/ReadVariableOp?-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp?#mnist/output/BiasAdd/ReadVariableOp?"mnist/output/MatMul/ReadVariableOp{
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
#mnist/tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#mnist/tf.expand_dims/ExpandDims/dim?
mnist/tf.expand_dims/ExpandDims
ExpandDimsmnist/flatten/Reshape:output:0,mnist/tf.expand_dims/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2!
mnist/tf.expand_dims/ExpandDims?
 mnist/fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_1/conv1d/ExpandDims/dim?
mnist/fc_1/conv1d/ExpandDims
ExpandDims(mnist/tf.expand_dims/ExpandDims:output:0)mnist/fc_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
mnist/fc_1/conv1d/ExpandDims?
-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2 
mnist/fc_1/conv1d/ExpandDims_1?
mnist/fc_1/conv1dConv2D%mnist/fc_1/conv1d/ExpandDims:output:0'mnist/fc_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
mnist/fc_1/conv1d?
mnist/fc_1/conv1d/SqueezeSqueezemnist/fc_1/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
mnist/fc_1/conv1d/Squeeze?
!mnist/fc_1/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!mnist/fc_1/BiasAdd/ReadVariableOp?
mnist/fc_1/BiasAddBiasAdd"mnist/fc_1/conv1d/Squeeze:output:0)mnist/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_1/BiasAdd~
mnist/fc_1/ReluRelumnist/fc_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
mnist/fc_2/conv1d/ExpandDims?
-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
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
:  2 
mnist/fc_2/conv1d/ExpandDims_1?
mnist/fc_2/conv1dConv2D%mnist/fc_2/conv1d/ExpandDims:output:0'mnist/fc_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
mnist/fc_2/conv1d?
mnist/fc_2/conv1d/SqueezeSqueezemnist/fc_2/conv1d:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????2
mnist/fc_2/conv1d/Squeeze?
!mnist/fc_2/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!mnist/fc_2/BiasAdd/ReadVariableOp?
mnist/fc_2/BiasAddBiasAdd"mnist/fc_2/conv1d/Squeeze:output:0)mnist/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_2/BiasAdd~
mnist/fc_2/ReluRelumnist/fc_2/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
mnist/fc_2/Relu?
mnist/fc_3/IdentityIdentitymnist/fc_2/Relu:activations:0*
T0*,
_output_shapes
:?????????? 2
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
:?????????? 2
mnist/fc_4/ExpandDims?
mnist/fc_4/MaxPoolMaxPoolmnist/fc_4/ExpandDims:output:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
mnist/fc_4/MaxPool?
mnist/fc_4/SqueezeSqueezemnist/fc_4/MaxPool:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2
mnist/fc_5/conv1d/ExpandDims?
-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2 
mnist/fc_5/conv1d/ExpandDims_1?
mnist/fc_5/conv1dConv2D%mnist/fc_5/conv1d/ExpandDims:output:0'mnist/fc_5/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
mnist/fc_5/conv1d?
mnist/fc_5/conv1d/SqueezeSqueezemnist/fc_5/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
mnist/fc_5/conv1d/Squeeze?
!mnist/fc_5/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!mnist/fc_5/BiasAdd/ReadVariableOp?
mnist/fc_5/BiasAddBiasAdd"mnist/fc_5/conv1d/Squeeze:output:0)mnist/fc_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
mnist/fc_5/BiasAdd~
mnist/fc_5/ReluRelumnist/fc_5/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
mnist/fc_6/conv1d/ExpandDims?
-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6mnist_fc_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:2 
mnist/fc_6/conv1d/ExpandDims_1?
mnist/fc_6/conv1dConv2D%mnist/fc_6/conv1d/ExpandDims:output:0'mnist/fc_6/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
mnist/fc_6/conv1d?
mnist/fc_6/conv1d/SqueezeSqueezemnist/fc_6/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
mnist/fc_6/conv1d/Squeeze?
!mnist/fc_6/BiasAdd/ReadVariableOpReadVariableOp*mnist_fc_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!mnist/fc_6/BiasAdd/ReadVariableOp?
mnist/fc_6/BiasAddBiasAdd"mnist/fc_6/conv1d/Squeeze:output:0)mnist/fc_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
mnist/fc_6/BiasAdd~
mnist/fc_6/ReluRelumnist/fc_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
mnist/fc_6/Relu?
mnist/fc_7/IdentityIdentitymnist/fc_6/Relu:activations:0*
T0*,
_output_shapes
:??????????2
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
:??????????2
mnist/fc_8/ExpandDims?
mnist/fc_8/MaxPoolMaxPoolmnist/fc_8/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
mnist/fc_8/MaxPool?
mnist/fc_8/SqueezeSqueezemnist/fc_8/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
mnist/fc_8/Squeezes
mnist/fc9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
mnist/fc9/Const?
mnist/fc9/ReshapeReshapemnist/fc_8/Squeeze:output:0mnist/fc9/Const:output:0*
T0*(
_output_shapes
:??????????2
mnist/fc9/Reshape?
"mnist/output/MatMul/ReadVariableOpReadVariableOp+mnist_output_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02$
"mnist/output/MatMul/ReadVariableOp?
mnist/output/MatMulMatMulmnist/fc9/Reshape:output:0*mnist/output/MatMul/ReadVariableOp:value:0*
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
mnist/output/Softmax?
IdentityIdentitymnist/output/Softmax:softmax:0"^mnist/fc_1/BiasAdd/ReadVariableOp.^mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_2/BiasAdd/ReadVariableOp.^mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_5/BiasAdd/ReadVariableOp.^mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_6/BiasAdd/ReadVariableOp.^mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp$^mnist/output/BiasAdd/ReadVariableOp#^mnist/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2F
!mnist/fc_1/BiasAdd/ReadVariableOp!mnist/fc_1/BiasAdd/ReadVariableOp2^
-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_2/BiasAdd/ReadVariableOp!mnist/fc_2/BiasAdd/ReadVariableOp2^
-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_5/BiasAdd/ReadVariableOp!mnist/fc_5/BiasAdd/ReadVariableOp2^
-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_5/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_6/BiasAdd/ReadVariableOp!mnist/fc_6/BiasAdd/ReadVariableOp2^
-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_6/conv1d/ExpandDims_1/ReadVariableOp2J
#mnist/output/BiasAdd/ReadVariableOp#mnist/output/BiasAdd/ReadVariableOp2H
"mnist/output/MatMul/ReadVariableOp"mnist/output/MatMul/ReadVariableOp:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
\
@__inference_fc_4_layer_call_and_return_conditional_losses_561647

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
?
^
@__inference_fc_3_layer_call_and_return_conditional_losses_561781

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????? 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_562521

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
?
?
@__inference_fc_1_layer_call_and_return_conditional_losses_561710

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
: *
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
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02/
-fc_1/kernel/Regularizer/Square/ReadVariableOp?
fc_1/kernel/Regularizer/SquareSquare5fc_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2 
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
:?????????? 2

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
?
?
@__inference_fc_2_layer_call_and_return_conditional_losses_561748

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
:?????????? 2
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
:?????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02/
-fc_2/kernel/Regularizer/Square/ReadVariableOp?
fc_2/kernel/Regularizer/SquareSquare5fc_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:  2 
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
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
A
%__inference_fc_4_layer_call_fn_561653

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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_5616472
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
?
?
@__inference_fc_6_layer_call_and_return_conditional_losses_562692

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
:??????????2
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
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
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
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
-fc_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-fc_6/kernel/Regularizer/Square/ReadVariableOp?
fc_6/kernel/Regularizer/SquareSquare5fc_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:2 
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
:??????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2^
-fc_6/kernel/Regularizer/Square/ReadVariableOp-fc_6/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_mnist_layer_call_fn_562515

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
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_5621792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
"__inference__traced_restore_562896
file_prefix 
assignvariableop_fc_1_kernel 
assignvariableop_1_fc_1_bias"
assignvariableop_2_fc_2_kernel 
assignvariableop_3_fc_2_bias"
assignvariableop_4_fc_5_kernel 
assignvariableop_5_fc_5_bias"
assignvariableop_6_fc_6_kernel 
assignvariableop_7_fc_6_bias$
 assignvariableop_8_output_kernel"
assignvariableop_9_output_bias
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
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
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*=
_input_shapes,
*: ::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
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
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_561678

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
?
?
&__inference_mnist_layer_call_fn_562490

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
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_5620932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_mnist_layer_call_fn_562116	
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
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_5620932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?!
?
__inference__traced_save_562856
file_prefix*
&savev2_fc_1_kernel_read_readvariableop(
$savev2_fc_1_bias_read_readvariableop*
&savev2_fc_2_kernel_read_readvariableop(
$savev2_fc_2_bias_read_readvariableop*
&savev2_fc_5_kernel_read_readvariableop(
$savev2_fc_5_bias_read_readvariableop*
&savev2_fc_6_kernel_read_readvariableop(
$savev2_fc_6_bias_read_readvariableop,
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_fc_1_kernel_read_readvariableop$savev2_fc_1_bias_read_readvariableop&savev2_fc_2_kernel_read_readvariableop$savev2_fc_2_bias_read_readvariableop&savev2_fc_5_kernel_read_readvariableop$savev2_fc_5_bias_read_readvariableop&savev2_fc_6_kernel_read_readvariableop$savev2_fc_6_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*x
_input_shapesg
e: : : :  : : ::::	?
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
: : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::%	!

_output_shapes
:	?
: 


_output_shapes
:
:

_output_shapes
: 
?
_
@__inference_fc_3_layer_call_and_return_conditional_losses_561776

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
:?????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
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
:?????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs"?L
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
tensorflow/serving/predict:??
?a
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
layer-11
layer_with_weights-4
layer-12
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?]
_tf_keras_network?\{"class_name": "Functional", "name": "mnist", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims", "inbound_nodes": [["flatten", 0, 0, {"axis": 2}]]}, {"class_name": "Conv1D", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["tf.expand_dims", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_6", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_7", "inbound_nodes": [[["fc_6", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_8", "inbound_nodes": [[["fc_7", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "fc9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "fc9", "inbound_nodes": [[["fc_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc9", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims", "inbound_nodes": [["flatten", 0, 0, {"axis": 2}]]}, {"class_name": "Conv1D", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["tf.expand_dims", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_6", "inbound_nodes": [[["fc_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_7", "inbound_nodes": [[["fc_6", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_8", "inbound_nodes": [[["fc_7", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "fc9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "fc9", "inbound_nodes": [[["fc_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc9", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
?
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784, 1]}}
?


kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 782, 32]}}
?
$regularization_losses
%trainable_variables
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "fc_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
(regularization_losses
)trainable_variables
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "fc_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_5", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 390, 32]}}
?


2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_6", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 388, 16]}}
?
8regularization_losses
9trainable_variables
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "fc_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "fc_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "fc9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc9", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3088}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3088]}}
@
?0
?1
?2
?3"
trackable_list_wrapper
f
0
1
2
3
,4
-5
26
37
D8
E9"
trackable_list_wrapper
f
0
1
2
3
,4
-5
26
37
D8
E9"
trackable_list_wrapper
?
Jnon_trainable_variables
regularization_losses
Klayer_metrics
Lmetrics
Mlayer_regularization_losses
trainable_variables

Nlayers
	variables
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
Onon_trainable_variables
regularization_losses
Player_metrics
Qmetrics
Rlayer_regularization_losses
trainable_variables

Slayers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
!: 2fc_1/kernel
: 2	fc_1/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Tnon_trainable_variables
regularization_losses
Ulayer_metrics
Vmetrics
Wlayer_regularization_losses
trainable_variables

Xlayers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:  2fc_2/kernel
: 2	fc_2/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Ynon_trainable_variables
 regularization_losses
Zlayer_metrics
[metrics
\layer_regularization_losses
!trainable_variables

]layers
"	variables
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
^non_trainable_variables
$regularization_losses
_layer_metrics
`metrics
alayer_regularization_losses
%trainable_variables

blayers
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
cnon_trainable_variables
(regularization_losses
dlayer_metrics
emetrics
flayer_regularization_losses
)trainable_variables

glayers
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2fc_5/kernel
:2	fc_5/bias
(
?0"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
hnon_trainable_variables
.regularization_losses
ilayer_metrics
jmetrics
klayer_regularization_losses
/trainable_variables

llayers
0	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2fc_6/kernel
:2	fc_6/bias
(
?0"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
mnon_trainable_variables
4regularization_losses
nlayer_metrics
ometrics
player_regularization_losses
5trainable_variables

qlayers
6	variables
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
rnon_trainable_variables
8regularization_losses
slayer_metrics
tmetrics
ulayer_regularization_losses
9trainable_variables

vlayers
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
wnon_trainable_variables
<regularization_losses
xlayer_metrics
ymetrics
zlayer_regularization_losses
=trainable_variables

{layers
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
|non_trainable_variables
@regularization_losses
}layer_metrics
~metrics
layer_regularization_losses
Atrainable_variables
?layers
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?
2output/kernel
:
2output/bias
 "
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
12"
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
!__inference__wrapped_model_561638?
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
&__inference_mnist_layer_call_fn_562515
&__inference_mnist_layer_call_fn_562202
&__inference_mnist_layer_call_fn_562490
&__inference_mnist_layer_call_fn_562116?
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
A__inference_mnist_layer_call_and_return_conditional_losses_562465
A__inference_mnist_layer_call_and_return_conditional_losses_562029
A__inference_mnist_layer_call_and_return_conditional_losses_562366
A__inference_mnist_layer_call_and_return_conditional_losses_561968?
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
(__inference_flatten_layer_call_fn_562526?
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
C__inference_flatten_layer_call_and_return_conditional_losses_562521?
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
%__inference_fc_1_layer_call_fn_562563?
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
@__inference_fc_1_layer_call_and_return_conditional_losses_562554?
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
%__inference_fc_2_layer_call_fn_562600?
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
@__inference_fc_2_layer_call_and_return_conditional_losses_562591?
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
%__inference_fc_3_layer_call_fn_562622
%__inference_fc_3_layer_call_fn_562627?
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
@__inference_fc_3_layer_call_and_return_conditional_losses_562617
@__inference_fc_3_layer_call_and_return_conditional_losses_562612?
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
%__inference_fc_4_layer_call_fn_561653?
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
@__inference_fc_4_layer_call_and_return_conditional_losses_561647?
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
%__inference_fc_5_layer_call_fn_562664?
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
@__inference_fc_5_layer_call_and_return_conditional_losses_562655?
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
%__inference_fc_6_layer_call_fn_562701?
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
@__inference_fc_6_layer_call_and_return_conditional_losses_562692?
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
%__inference_fc_7_layer_call_fn_562728
%__inference_fc_7_layer_call_fn_562723?
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
@__inference_fc_7_layer_call_and_return_conditional_losses_562718
@__inference_fc_7_layer_call_and_return_conditional_losses_562713?
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
%__inference_fc_8_layer_call_fn_561668?
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
@__inference_fc_8_layer_call_and_return_conditional_losses_561662?
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
$__inference_fc9_layer_call_fn_562739?
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
?__inference_fc9_layer_call_and_return_conditional_losses_562734?
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
'__inference_output_layer_call_fn_562759?
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
B__inference_output_layer_call_and_return_conditional_losses_562750?
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
__inference_loss_fn_0_562770?
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
__inference_loss_fn_1_562781?
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
__inference_loss_fn_2_562792?
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
__inference_loss_fn_3_562803?
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
$__inference_signature_wrapper_562253input"?
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
!__inference__wrapped_model_561638u
,-23DE6?3
,?)
'?$
input?????????
? "/?,
*
output ?
output?????????
?
?__inference_fc9_layer_call_and_return_conditional_losses_562734^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????
? y
$__inference_fc9_layer_call_fn_562739Q4?1
*?'
%?"
inputs??????????
? "????????????
@__inference_fc_1_layer_call_and_return_conditional_losses_562554f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0?????????? 
? ?
%__inference_fc_1_layer_call_fn_562563Y4?1
*?'
%?"
inputs??????????
? "??????????? ?
@__inference_fc_2_layer_call_and_return_conditional_losses_562591f4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
%__inference_fc_2_layer_call_fn_562600Y4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
@__inference_fc_3_layer_call_and_return_conditional_losses_562612f8?5
.?+
%?"
inputs?????????? 
p
? "*?'
 ?
0?????????? 
? ?
@__inference_fc_3_layer_call_and_return_conditional_losses_562617f8?5
.?+
%?"
inputs?????????? 
p 
? "*?'
 ?
0?????????? 
? ?
%__inference_fc_3_layer_call_fn_562622Y8?5
.?+
%?"
inputs?????????? 
p
? "??????????? ?
%__inference_fc_3_layer_call_fn_562627Y8?5
.?+
%?"
inputs?????????? 
p 
? "??????????? ?
@__inference_fc_4_layer_call_and_return_conditional_losses_561647?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
%__inference_fc_4_layer_call_fn_561653wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
@__inference_fc_5_layer_call_and_return_conditional_losses_562655f,-4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0??????????
? ?
%__inference_fc_5_layer_call_fn_562664Y,-4?1
*?'
%?"
inputs?????????? 
? "????????????
@__inference_fc_6_layer_call_and_return_conditional_losses_562692f234?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
%__inference_fc_6_layer_call_fn_562701Y234?1
*?'
%?"
inputs??????????
? "????????????
@__inference_fc_7_layer_call_and_return_conditional_losses_562713f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
@__inference_fc_7_layer_call_and_return_conditional_losses_562718f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
%__inference_fc_7_layer_call_fn_562723Y8?5
.?+
%?"
inputs??????????
p
? "????????????
%__inference_fc_7_layer_call_fn_562728Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
@__inference_fc_8_layer_call_and_return_conditional_losses_561662?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
%__inference_fc_8_layer_call_fn_561668wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
C__inference_flatten_layer_call_and_return_conditional_losses_562521a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
(__inference_flatten_layer_call_fn_562526T7?4
-?*
(?%
inputs?????????
? "???????????;
__inference_loss_fn_0_562770?

? 
? "? ;
__inference_loss_fn_1_562781?

? 
? "? ;
__inference_loss_fn_2_562792,?

? 
? "? ;
__inference_loss_fn_3_5628032?

? 
? "? ?
A__inference_mnist_layer_call_and_return_conditional_losses_561968s
,-23DE>?;
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
A__inference_mnist_layer_call_and_return_conditional_losses_562029s
,-23DE>?;
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
A__inference_mnist_layer_call_and_return_conditional_losses_562366t
,-23DE??<
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
A__inference_mnist_layer_call_and_return_conditional_losses_562465t
,-23DE??<
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
&__inference_mnist_layer_call_fn_562116f
,-23DE>?;
4?1
'?$
input?????????
p

 
? "??????????
?
&__inference_mnist_layer_call_fn_562202f
,-23DE>?;
4?1
'?$
input?????????
p 

 
? "??????????
?
&__inference_mnist_layer_call_fn_562490g
,-23DE??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
&__inference_mnist_layer_call_fn_562515g
,-23DE??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
B__inference_output_layer_call_and_return_conditional_losses_562750]DE0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? {
'__inference_output_layer_call_fn_562759PDE0?-
&?#
!?
inputs??????????
? "??????????
?
$__inference_signature_wrapper_562253~
,-23DE??<
? 
5?2
0
input'?$
input?????????"/?,
*
output ?
output?????????
