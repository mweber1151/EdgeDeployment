??
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
 ?"serve*2.4.12unknown8??
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
x
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*
shared_nameoutput/kernel
q
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel* 
_output_shapes
:
??
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
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
R
regularization_losses
trainable_variables
	variables
	keras_api

	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
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
 
*
0
1
2
3
,4
-5
*
0
1
2
3
,4
-5
?
2non_trainable_variables

regularization_losses
3layer_metrics
4metrics
5layer_regularization_losses
trainable_variables

6layers
	variables
 
 
 
 
?
7non_trainable_variables
regularization_losses
8layer_metrics
9metrics
:layer_regularization_losses
trainable_variables

;layers
	variables
 
WU
VARIABLE_VALUEfc_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
<non_trainable_variables
regularization_losses
=layer_metrics
>metrics
?layer_regularization_losses
trainable_variables

@layers
	variables
WU
VARIABLE_VALUEfc_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Anon_trainable_variables
regularization_losses
Blayer_metrics
Cmetrics
Dlayer_regularization_losses
trainable_variables

Elayers
	variables
 
 
 
?
Fnon_trainable_variables
 regularization_losses
Glayer_metrics
Hmetrics
Ilayer_regularization_losses
!trainable_variables

Jlayers
"	variables
 
 
 
?
Knon_trainable_variables
$regularization_losses
Llayer_metrics
Mmetrics
Nlayer_regularization_losses
%trainable_variables

Olayers
&	variables
 
 
 
?
Pnon_trainable_variables
(regularization_losses
Qlayer_metrics
Rmetrics
Slayer_regularization_losses
)trainable_variables

Tlayers
*	variables
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

,0
-1

,0
-1
?
Unon_trainable_variables
.regularization_losses
Vlayer_metrics
Wmetrics
Xlayer_regularization_losses
/trainable_variables

Ylayers
0	variables
 
 
 
 
?
0
1
2
3
4
5
6
7
	8
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_929698
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefc_1/kernel/Read/ReadVariableOpfc_1/bias/Read/ReadVariableOpfc_2/kernel/Read/ReadVariableOpfc_2/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin

2*
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
__inference__traced_save_930061
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/bias*
Tin
	2*
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
"__inference__traced_restore_930089ă
?
?
@__inference_fc_2_layer_call_and_return_conditional_losses_929931

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
?
?
&__inference_mnist_layer_call_fn_929855

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_9296522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
[
?__inference_fc5_layer_call_and_return_conditional_losses_929473

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????a  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_929698	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_9293252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
A
%__inference_fc_4_layer_call_fn_929340

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
@__inference_fc_4_layer_call_and_return_conditional_losses_9293342
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
?
?
&__inference_mnist_layer_call_fn_929838

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_9295982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
B__inference_output_layer_call_and_return_conditional_losses_929492

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
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
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_929350

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
?2
?
A__inference_mnist_layer_call_and_return_conditional_losses_929598

inputs
fc_1_929567
fc_1_929569
fc_2_929572
fc_2_929574
output_929580
output_929582
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_3/StatefulPartitionedCall?output/StatefulPartitionedCall?
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
C__inference_flatten_layer_call_and_return_conditional_losses_9293502
flatten/PartitionedCall?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_1/ExpandDims:output:0fc_1_929567fc_1_929569*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_9293822
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_929572fc_2_929574*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_9294202
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
GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_9294482
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_9293342
fc_4/PartitionedCall?
fc5/PartitionedCallPartitionedCallfc_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc5_layer_call_and_return_conditional_losses_9294732
fc5/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc5/PartitionedCall:output:0output_929580output_929582*
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
B__inference_output_layer_call_and_return_conditional_losses_9294922 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_929567*"
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_929572*"
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
fc_2/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
A__inference_mnist_layer_call_and_return_conditional_losses_929763

inputs4
0fc_1_conv1d_expanddims_1_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource4
0fc_2_conv1d_expanddims_1_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??fc_1/BiasAdd/ReadVariableOp?'fc_1/conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/BiasAdd/ReadVariableOp?'fc_2/conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpo
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
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDimsflatten/Reshape:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDims?
fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_1/conv1d/ExpandDims/dim?
fc_1/conv1d/ExpandDims
ExpandDims$tf.expand_dims_1/ExpandDims:output:0#fc_1/conv1d/ExpandDims/dim:output:0*
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
fc_4/Squeezeg
	fc5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????a  2
	fc5/Const?
fc5/ReshapeReshapefc_4/Squeeze:output:0fc5/Const:output:0*
T0*)
_output_shapes
:???????????2
fc5/Reshape?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulfc5/Reshape:output:0$output/MatMul/ReadVariableOp:value:0*
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
fc_2/kernel/Regularizer/mul?
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp(^fc_1/conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp(^fc_2/conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp2R
'fc_1/conv1d/ExpandDims_1/ReadVariableOp'fc_1/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp2R
'fc_2/conv1d/ExpandDims_1/ReadVariableOp'fc_2/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_mnist_layer_call_fn_929667	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_9296522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_929861

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
?
z
%__inference_fc_2_layer_call_fn_929940

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
GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_9294202
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
D
(__inference_flatten_layer_call_fn_929866

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
C__inference_flatten_layer_call_and_return_conditional_losses_9293502
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
?2
?
A__inference_mnist_layer_call_and_return_conditional_losses_929521	
input
fc_1_929393
fc_1_929395
fc_2_929431
fc_2_929433
output_929503
output_929505
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?fc_3/StatefulPartitionedCall?output/StatefulPartitionedCall?
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
C__inference_flatten_layer_call_and_return_conditional_losses_9293502
flatten/PartitionedCall?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_1/ExpandDims:output:0fc_1_929393fc_1_929395*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_9293822
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_929431fc_2_929433*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_9294202
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
GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_9294482
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_9293342
fc_4/PartitionedCall?
fc5/PartitionedCallPartitionedCallfc_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc5_layer_call_and_return_conditional_losses_9294732
fc5/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc5/PartitionedCall:output:0output_929503output_929505*
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
B__inference_output_layer_call_and_return_conditional_losses_9294922 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_929393*"
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_929431*"
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
fc_2/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^fc_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2<
fc_3/StatefulPartitionedCallfc_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?1
?
A__inference_mnist_layer_call_and_return_conditional_losses_929652

inputs
fc_1_929621
fc_1_929623
fc_2_929626
fc_2_929628
output_929634
output_929636
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
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
C__inference_flatten_layer_call_and_return_conditional_losses_9293502
flatten/PartitionedCall?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_1/ExpandDims:output:0fc_1_929621fc_1_929623*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_9293822
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_929626fc_2_929628*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_9294202
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
GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_9294532
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_9293342
fc_4/PartitionedCall?
fc5/PartitionedCallPartitionedCallfc_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc5_layer_call_and_return_conditional_losses_9294732
fc5/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc5/PartitionedCall:output:0output_929634output_929636*
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
B__inference_output_layer_call_and_return_conditional_losses_9294922 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_929621*"
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_929626*"
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
fc_2/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
@__inference_fc_3_layer_call_and_return_conditional_losses_929957

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
z
%__inference_fc_1_layer_call_fn_929903

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
GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_9293822
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
?
_
@__inference_fc_3_layer_call_and_return_conditional_losses_929952

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
__inference_loss_fn_0_930009:
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
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp
?
\
@__inference_fc_4_layer_call_and_return_conditional_losses_929334

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
$__inference_fc5_layer_call_fn_929978

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc5_layer_call_and_return_conditional_losses_9294732
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
^
%__inference_fc_3_layer_call_fn_929962

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
GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_9294482
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
?
^
@__inference_fc_3_layer_call_and_return_conditional_losses_929453

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
?>
?
!__inference__wrapped_model_929325	
input:
6mnist_fc_1_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_1_biasadd_readvariableop_resource:
6mnist_fc_2_conv1d_expanddims_1_readvariableop_resource.
*mnist_fc_2_biasadd_readvariableop_resource/
+mnist_output_matmul_readvariableop_resource0
,mnist_output_biasadd_readvariableop_resource
identity??!mnist/fc_1/BiasAdd/ReadVariableOp?-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp?!mnist/fc_2/BiasAdd/ReadVariableOp?-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp?#mnist/output/BiasAdd/ReadVariableOp?"mnist/output/MatMul/ReadVariableOp{
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
%mnist/tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%mnist/tf.expand_dims_1/ExpandDims/dim?
!mnist/tf.expand_dims_1/ExpandDims
ExpandDimsmnist/flatten/Reshape:output:0.mnist/tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2#
!mnist/tf.expand_dims_1/ExpandDims?
 mnist/fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 mnist/fc_1/conv1d/ExpandDims/dim?
mnist/fc_1/conv1d/ExpandDims
ExpandDims*mnist/tf.expand_dims_1/ExpandDims:output:0)mnist/fc_1/conv1d/ExpandDims/dim:output:0*
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
mnist/fc_4/Squeezes
mnist/fc5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????a  2
mnist/fc5/Const?
mnist/fc5/ReshapeReshapemnist/fc_4/Squeeze:output:0mnist/fc5/Const:output:0*
T0*)
_output_shapes
:???????????2
mnist/fc5/Reshape?
"mnist/output/MatMul/ReadVariableOpReadVariableOp+mnist_output_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02$
"mnist/output/MatMul/ReadVariableOp?
mnist/output/MatMulMatMulmnist/fc5/Reshape:output:0*mnist/output/MatMul/ReadVariableOp:value:0*
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
mnist/output/Softmax?
IdentityIdentitymnist/output/Softmax:softmax:0"^mnist/fc_1/BiasAdd/ReadVariableOp.^mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp"^mnist/fc_2/BiasAdd/ReadVariableOp.^mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp$^mnist/output/BiasAdd/ReadVariableOp#^mnist/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2F
!mnist/fc_1/BiasAdd/ReadVariableOp!mnist/fc_1/BiasAdd/ReadVariableOp2^
-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_1/conv1d/ExpandDims_1/ReadVariableOp2F
!mnist/fc_2/BiasAdd/ReadVariableOp!mnist/fc_2/BiasAdd/ReadVariableOp2^
-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp-mnist/fc_2/conv1d/ExpandDims_1/ReadVariableOp2J
#mnist/output/BiasAdd/ReadVariableOp#mnist/output/BiasAdd/ReadVariableOp2H
"mnist/output/MatMul/ReadVariableOp"mnist/output/MatMul/ReadVariableOp:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
?
__inference__traced_save_930061
file_prefix*
&savev2_fc_1_kernel_read_readvariableop(
$savev2_fc_1_bias_read_readvariableop*
&savev2_fc_2_kernel_read_readvariableop(
$savev2_fc_2_bias_read_readvariableop,
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_fc_1_kernel_read_readvariableop$savev2_fc_1_bias_read_readvariableop&savev2_fc_2_kernel_read_readvariableop$savev2_fc_2_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	22
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

identity_1Identity_1:output:0*Q
_input_shapes@
>: :@:@:@@:@:
??
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
:@:&"
 
_output_shapes
:
??
: 

_output_shapes
:
:

_output_shapes
: 
?1
?
A__inference_mnist_layer_call_and_return_conditional_losses_929558	
input
fc_1_929527
fc_1_929529
fc_2_929532
fc_2_929534
output_929540
output_929542
identity??fc_1/StatefulPartitionedCall?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/StatefulPartitionedCall?-fc_2/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
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
C__inference_flatten_layer_call_and_return_conditional_losses_9293502
flatten/PartitionedCall?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims flatten/PartitionedCall:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDims?
fc_1/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_1/ExpandDims:output:0fc_1_929527fc_1_929529*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_1_layer_call_and_return_conditional_losses_9293822
fc_1/StatefulPartitionedCall?
fc_2/StatefulPartitionedCallStatefulPartitionedCall%fc_1/StatefulPartitionedCall:output:0fc_2_929532fc_2_929534*
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
GPU2*0J 8? *I
fDRB
@__inference_fc_2_layer_call_and_return_conditional_losses_9294202
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
GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_9294532
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
GPU2*0J 8? *I
fDRB
@__inference_fc_4_layer_call_and_return_conditional_losses_9293342
fc_4/PartitionedCall?
fc5/PartitionedCallPartitionedCallfc_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_fc5_layer_call_and_return_conditional_losses_9294732
fc5/PartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCallfc5/PartitionedCall:output:0output_929540output_929542*
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
B__inference_output_layer_call_and_return_conditional_losses_9294922 
output/StatefulPartitionedCall?
-fc_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_1_929527*"
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
-fc_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc_2_929532*"
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
fc_2/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^fc_1/StatefulPartitionedCall.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/StatefulPartitionedCall.^fc_2/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
[
?__inference_fc5_layer_call_and_return_conditional_losses_929973

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????a  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?J
?
A__inference_mnist_layer_call_and_return_conditional_losses_929821

inputs4
0fc_1_conv1d_expanddims_1_readvariableop_resource(
$fc_1_biasadd_readvariableop_resource4
0fc_2_conv1d_expanddims_1_readvariableop_resource(
$fc_2_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??fc_1/BiasAdd/ReadVariableOp?'fc_1/conv1d/ExpandDims_1/ReadVariableOp?-fc_1/kernel/Regularizer/Square/ReadVariableOp?fc_2/BiasAdd/ReadVariableOp?'fc_2/conv1d/ExpandDims_1/ReadVariableOp?-fc_2/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpo
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
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDimsflatten/Reshape:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDims?
fc_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fc_1/conv1d/ExpandDims/dim?
fc_1/conv1d/ExpandDims
ExpandDims$tf.expand_dims_1/ExpandDims:output:0#fc_1/conv1d/ExpandDims/dim:output:0*
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
fc_4/Squeezeg
	fc5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????a  2
	fc5/Const?
fc5/ReshapeReshapefc_4/Squeeze:output:0fc5/Const:output:0*
T0*)
_output_shapes
:???????????2
fc5/Reshape?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulfc5/Reshape:output:0$output/MatMul/ReadVariableOp:value:0*
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
fc_2/kernel/Regularizer/mul?
IdentityIdentityoutput/Softmax:softmax:0^fc_1/BiasAdd/ReadVariableOp(^fc_1/conv1d/ExpandDims_1/ReadVariableOp.^fc_1/kernel/Regularizer/Square/ReadVariableOp^fc_2/BiasAdd/ReadVariableOp(^fc_2/conv1d/ExpandDims_1/ReadVariableOp.^fc_2/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2:
fc_1/BiasAdd/ReadVariableOpfc_1/BiasAdd/ReadVariableOp2R
'fc_1/conv1d/ExpandDims_1/ReadVariableOp'fc_1/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_1/kernel/Regularizer/Square/ReadVariableOp-fc_1/kernel/Regularizer/Square/ReadVariableOp2:
fc_2/BiasAdd/ReadVariableOpfc_2/BiasAdd/ReadVariableOp2R
'fc_2/conv1d/ExpandDims_1/ReadVariableOp'fc_2/conv1d/ExpandDims_1/ReadVariableOp2^
-fc_2/kernel/Regularizer/Square/ReadVariableOp-fc_2/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
"__inference__traced_restore_930089
file_prefix 
assignvariableop_fc_1_kernel 
assignvariableop_1_fc_1_bias"
assignvariableop_2_fc_2_kernel 
assignvariableop_3_fc_2_bias$
 assignvariableop_4_output_kernel"
assignvariableop_5_output_bias

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	22
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
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6?

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
_
@__inference_fc_3_layer_call_and_return_conditional_losses_929448

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
?
?
@__inference_fc_1_layer_call_and_return_conditional_losses_929382

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
B__inference_output_layer_call_and_return_conditional_losses_929989

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
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
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
&__inference_mnist_layer_call_fn_929613	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_mnist_layer_call_and_return_conditional_losses_9295982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameinput
?
?
@__inference_fc_1_layer_call_and_return_conditional_losses_929894

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
?
?
@__inference_fc_2_layer_call_and_return_conditional_losses_929420

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
?
|
'__inference_output_layer_call_fn_929998

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
B__inference_output_layer_call_and_return_conditional_losses_9294922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_930020:
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
?
A
%__inference_fc_3_layer_call_fn_929967

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
GPU2*0J 8? *I
fDRB
@__inference_fc_3_layer_call_and_return_conditional_losses_9294532
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
tensorflow/serving/predict:??
??
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

regularization_losses
trainable_variables
	variables
	keras_api

signatures
Z_default_save_signature
[__call__
*\&call_and_return_all_conditional_losses"?<
_tf_keras_network?;{"class_name": "Functional", "name": "mnist", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_1", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_1", "inbound_nodes": [["flatten", 0, 0, {"axis": 2}]]}, {"class_name": "Conv1D", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["tf.expand_dims_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "fc5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "fc5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc5", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "mnist", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_1", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_1", "inbound_nodes": [["flatten", 0, 0, {"axis": 2}]]}, {"class_name": "Conv1D", "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_1", "inbound_nodes": [[["tf.expand_dims_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc_2", "inbound_nodes": [[["fc_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "fc_3", "inbound_nodes": [[["fc_2", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "fc_4", "inbound_nodes": [[["fc_3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "fc5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "fc5", "inbound_nodes": [[["fc_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["fc5", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["output", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
?
regularization_losses
trainable_variables
	variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_1", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
___call__
*`&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784, 1]}}
?


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
a__call__
*b&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv1D", "name": "fc_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 782, 64]}}
?
 regularization_losses
!trainable_variables
"	variables
#	keras_api
c__call__
*d&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "fc_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
$regularization_losses
%trainable_variables
&	variables
'	keras_api
e__call__
*f&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "fc_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
(regularization_losses
)trainable_variables
*	variables
+	keras_api
g__call__
*h&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "fc5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
i__call__
*j&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24960}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24960]}}
.
k0
l1"
trackable_list_wrapper
J
0
1
2
3
,4
-5"
trackable_list_wrapper
J
0
1
2
3
,4
-5"
trackable_list_wrapper
?
2non_trainable_variables

regularization_losses
3layer_metrics
4metrics
5layer_regularization_losses
trainable_variables

6layers
	variables
[__call__
Z_default_save_signature
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
,
mserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
7non_trainable_variables
regularization_losses
8layer_metrics
9metrics
:layer_regularization_losses
trainable_variables

;layers
	variables
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
!:@2fc_1/kernel
:@2	fc_1/bias
'
k0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
<non_trainable_variables
regularization_losses
=layer_metrics
>metrics
?layer_regularization_losses
trainable_variables

@layers
	variables
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
!:@@2fc_2/kernel
:@2	fc_2/bias
'
l0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Anon_trainable_variables
regularization_losses
Blayer_metrics
Cmetrics
Dlayer_regularization_losses
trainable_variables

Elayers
	variables
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables
 regularization_losses
Glayer_metrics
Hmetrics
Ilayer_regularization_losses
!trainable_variables

Jlayers
"	variables
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Knon_trainable_variables
$regularization_losses
Llayer_metrics
Mmetrics
Nlayer_regularization_losses
%trainable_variables

Olayers
&	variables
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables
(regularization_losses
Qlayer_metrics
Rmetrics
Slayer_regularization_losses
)trainable_variables

Tlayers
*	variables
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
!:
??
2output/kernel
:
2output/bias
 "
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
Unon_trainable_variables
.regularization_losses
Vlayer_metrics
Wmetrics
Xlayer_regularization_losses
/trainable_variables

Ylayers
0	variables
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
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
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
l0"
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
!__inference__wrapped_model_929325?
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
&__inference_mnist_layer_call_fn_929838
&__inference_mnist_layer_call_fn_929613
&__inference_mnist_layer_call_fn_929667
&__inference_mnist_layer_call_fn_929855?
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
A__inference_mnist_layer_call_and_return_conditional_losses_929763
A__inference_mnist_layer_call_and_return_conditional_losses_929821
A__inference_mnist_layer_call_and_return_conditional_losses_929558
A__inference_mnist_layer_call_and_return_conditional_losses_929521?
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
(__inference_flatten_layer_call_fn_929866?
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
C__inference_flatten_layer_call_and_return_conditional_losses_929861?
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
%__inference_fc_1_layer_call_fn_929903?
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
@__inference_fc_1_layer_call_and_return_conditional_losses_929894?
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
%__inference_fc_2_layer_call_fn_929940?
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
@__inference_fc_2_layer_call_and_return_conditional_losses_929931?
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
%__inference_fc_3_layer_call_fn_929962
%__inference_fc_3_layer_call_fn_929967?
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
@__inference_fc_3_layer_call_and_return_conditional_losses_929957
@__inference_fc_3_layer_call_and_return_conditional_losses_929952?
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
%__inference_fc_4_layer_call_fn_929340?
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
@__inference_fc_4_layer_call_and_return_conditional_losses_929334?
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
$__inference_fc5_layer_call_fn_929978?
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
?__inference_fc5_layer_call_and_return_conditional_losses_929973?
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
'__inference_output_layer_call_fn_929998?
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
B__inference_output_layer_call_and_return_conditional_losses_929989?
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
__inference_loss_fn_0_930009?
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
__inference_loss_fn_1_930020?
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
$__inference_signature_wrapper_929698input"?
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
!__inference__wrapped_model_929325q,-6?3
,?)
'?$
input?????????
? "/?,
*
output ?
output?????????
?
?__inference_fc5_layer_call_and_return_conditional_losses_929973_4?1
*?'
%?"
inputs??????????@
? "'?$
?
0???????????
? z
$__inference_fc5_layer_call_fn_929978R4?1
*?'
%?"
inputs??????????@
? "?????????????
@__inference_fc_1_layer_call_and_return_conditional_losses_929894f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????@
? ?
%__inference_fc_1_layer_call_fn_929903Y4?1
*?'
%?"
inputs??????????
? "???????????@?
@__inference_fc_2_layer_call_and_return_conditional_losses_929931f4?1
*?'
%?"
inputs??????????@
? "*?'
 ?
0??????????@
? ?
%__inference_fc_2_layer_call_fn_929940Y4?1
*?'
%?"
inputs??????????@
? "???????????@?
@__inference_fc_3_layer_call_and_return_conditional_losses_929952f8?5
.?+
%?"
inputs??????????@
p
? "*?'
 ?
0??????????@
? ?
@__inference_fc_3_layer_call_and_return_conditional_losses_929957f8?5
.?+
%?"
inputs??????????@
p 
? "*?'
 ?
0??????????@
? ?
%__inference_fc_3_layer_call_fn_929962Y8?5
.?+
%?"
inputs??????????@
p
? "???????????@?
%__inference_fc_3_layer_call_fn_929967Y8?5
.?+
%?"
inputs??????????@
p 
? "???????????@?
@__inference_fc_4_layer_call_and_return_conditional_losses_929334?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
%__inference_fc_4_layer_call_fn_929340wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
C__inference_flatten_layer_call_and_return_conditional_losses_929861a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
(__inference_flatten_layer_call_fn_929866T7?4
-?*
(?%
inputs?????????
? "???????????;
__inference_loss_fn_0_930009?

? 
? "? ;
__inference_loss_fn_1_930020?

? 
? "? ?
A__inference_mnist_layer_call_and_return_conditional_losses_929521o,->?;
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
A__inference_mnist_layer_call_and_return_conditional_losses_929558o,->?;
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
A__inference_mnist_layer_call_and_return_conditional_losses_929763p,-??<
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
A__inference_mnist_layer_call_and_return_conditional_losses_929821p,-??<
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
&__inference_mnist_layer_call_fn_929613b,->?;
4?1
'?$
input?????????
p

 
? "??????????
?
&__inference_mnist_layer_call_fn_929667b,->?;
4?1
'?$
input?????????
p 

 
? "??????????
?
&__inference_mnist_layer_call_fn_929838c,-??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
&__inference_mnist_layer_call_fn_929855c,-??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
B__inference_output_layer_call_and_return_conditional_losses_929989^,-1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????

? |
'__inference_output_layer_call_fn_929998Q,-1?.
'?$
"?
inputs???????????
? "??????????
?
$__inference_signature_wrapper_929698z,-??<
? 
5?2
0
input'?$
input?????????"/?,
*
output ?
output?????????
