Ш╚<
─$Њ$
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
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
$
DisableCopyOnRead
resourceѕ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
ѓ
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0ѕ
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
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
executor_typestring ѕе
џ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758├ў9
b
ConstConst*"
_output_shapes
:*
dtype0*!
valueB*    
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*  ђ?
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
І
lstm_14/lstm_cell_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ**
shared_namelstm_14/lstm_cell_20/bias
ё
-lstm_14/lstm_cell_20/bias/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_20/bias*
_output_shapes	
:ђ*
dtype0
Д
%lstm_14/lstm_cell_20/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ђ*6
shared_name'%lstm_14/lstm_cell_20/recurrent_kernel
а
9lstm_14/lstm_cell_20/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_14/lstm_cell_20/recurrent_kernel*
_output_shapes
:	 ђ*
dtype0
ћ
lstm_14/lstm_cell_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*,
shared_namelstm_14/lstm_cell_20/kernel
Ї
/lstm_14/lstm_cell_20/kernel/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_20/kernel* 
_output_shapes
:
ђђ*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:*
dtype0
{
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ* 
shared_namedense_24/kernel
t
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes
:	ђ*
dtype0
s
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_23/bias
l
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes	
:ђ*
dtype0
{
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ђ* 
shared_namedense_23/kernel
t
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes
:	 ђ*
dtype0
u
conv1d_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv1d_35/bias
n
"conv1d_35/bias/Read/ReadVariableOpReadVariableOpconv1d_35/bias*
_output_shapes	
:ђ*
dtype0
ѓ
conv1d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*!
shared_nameconv1d_35/kernel
{
$conv1d_35/kernel/Read/ReadVariableOpReadVariableOpconv1d_35/kernel*$
_output_shapes
:ђђ*
dtype0
Ц
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*7
shared_name(&batch_normalization_23/moving_variance
ъ
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes	
:ђ*
dtype0
Ю
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"batch_normalization_23/moving_mean
ќ
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes	
:ђ*
dtype0
Ј
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*,
shared_namebatch_normalization_23/beta
ѕ
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes	
:ђ*
dtype0
Љ
batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_namebatch_normalization_23/gamma
і
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes	
:ђ*
dtype0
u
conv1d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv1d_34/bias
n
"conv1d_34/bias/Read/ReadVariableOpReadVariableOpconv1d_34/bias*
_output_shapes	
:ђ*
dtype0
ѓ
conv1d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*!
shared_nameconv1d_34/kernel
{
$conv1d_34/kernel/Read/ReadVariableOpReadVariableOpconv1d_34/kernel*$
_output_shapes
:ђђ*
dtype0
Ц
&batch_normalization_22/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*7
shared_name(&batch_normalization_22/moving_variance
ъ
:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes	
:ђ*
dtype0
Ю
"batch_normalization_22/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"batch_normalization_22/moving_mean
ќ
6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes	
:ђ*
dtype0
Ј
batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*,
shared_namebatch_normalization_22/beta
ѕ
/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
_output_shapes	
:ђ*
dtype0
Љ
batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_namebatch_normalization_22/gamma
і
0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes	
:ђ*
dtype0
u
conv1d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv1d_33/bias
n
"conv1d_33/bias/Read/ReadVariableOpReadVariableOpconv1d_33/bias*
_output_shapes	
:ђ*
dtype0
Ђ
conv1d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*!
shared_nameconv1d_33/kernel
z
$conv1d_33/kernel/Read/ReadVariableOpReadVariableOpconv1d_33/kernel*#
_output_shapes
:ђ*
dtype0
ђ
normalization_11/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_11/count
y
*normalization_11/count/Read/ReadVariableOpReadVariableOpnormalization_11/count*
_output_shapes
: *
dtype0	
і
normalization_11/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_11/variance
Ѓ
-normalization_11/variance/Read/ReadVariableOpReadVariableOpnormalization_11/variance*
_output_shapes
:*
dtype0
ѓ
normalization_11/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_11/mean
{
)normalization_11/mean/Read/ReadVariableOpReadVariableOpnormalization_11/mean*
_output_shapes
:*
dtype0
Њ
&serving_default_normalization_11_inputPlaceholder*,
_output_shapes
:         е*
dtype0*!
shape:         е
Ћ
StatefulPartitionedCallStatefulPartitionedCall&serving_default_normalization_11_inputConstConst_1conv1d_33/kernelconv1d_33/bias"batch_normalization_22/moving_mean&batch_normalization_22/moving_variancebatch_normalization_22/betabatch_normalization_22/gammaconv1d_34/kernelconv1d_34/bias"batch_normalization_23/moving_mean&batch_normalization_23/moving_variancebatch_normalization_23/betabatch_normalization_23/gammaconv1d_35/kernelconv1d_35/biaslstm_14/lstm_cell_20/kernel%lstm_14/lstm_cell_20/recurrent_kernellstm_14/lstm_cell_20/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_7887389

NoOpNoOp
▒n
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*Жm
valueЯmBПm Bоm
№
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Е
	keras_api

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count*
ј
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
╚
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias
 ._jit_compiled_convolution_op*
ј
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
Н
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;axis
	<gamma
=beta
>moving_mean
?moving_variance*
╚
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op*
ј
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
Н
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance*
╚
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op*
ј
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
┴
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
o_random_generator
pcell
q
state_spec*
д
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias*
д
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
ђ_random_generator* 
«
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
ё	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses
Єkernel
	ѕbias*
ћ
Ѕ	variables
іtrainable_variables
Іregularization_losses
ї	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses* 
┐
0
1
2
,3
-4
<5
=6
>7
?8
F9
G10
V11
W12
X13
Y14
`15
a16
Ј17
љ18
Љ19
x20
y21
Є22
ѕ23*
Є
,0
-1
<2
=3
F4
G5
V6
W7
`8
a9
Ј10
љ11
Љ12
x13
y14
Є15
ѕ16*
* 
х
њnon_trainable_variables
Њlayers
ћmetrics
 Ћlayer_regularization_losses
ќlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Ќtrace_0
ўtrace_1
Ўtrace_2
џtrace_3* 
:
Џtrace_0
юtrace_1
Юtrace_2
ъtrace_3* 
"
Ъ	capture_0
а	capture_1* 

Аserving_default* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEnormalization_11/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEnormalization_11/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEnormalization_11/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
бnon_trainable_variables
Бlayers
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

Дtrace_0
еtrace_1* 

Еtrace_0
фtrace_1* 

,0
-1*

,0
-1*
* 
ў
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

░trace_0* 

▒trace_0* 
`Z
VARIABLE_VALUEconv1d_33/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_33/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

иtrace_0* 

Иtrace_0* 
 
<0
=1
>2
?3*

<0
=1*
* 
ў
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

Йtrace_0
┐trace_1* 

└trace_0
┴trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_22/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_22/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_22/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_22/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
ў
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
кlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

Кtrace_0* 

╚trace_0* 
`Z
VARIABLE_VALUEconv1d_34/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_34/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

╬trace_0* 

¤trace_0* 
 
V0
W1
X2
Y3*

V0
W1*
* 
ў
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

Нtrace_0
оtrace_1* 

Оtrace_0
пtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_23/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_23/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_23/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_23/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

`0
a1*
* 
ў
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
Пlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

яtrace_0* 

▀trace_0* 
`Z
VARIABLE_VALUEconv1d_35/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_35/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Яnon_trainable_variables
рlayers
Рmetrics
 сlayer_regularization_losses
Сlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

тtrace_0* 

Тtrace_0* 

Ј0
љ1
Љ2*

Ј0
љ1
Љ2*
* 
Ц
уstates
Уnon_trainable_variables
жlayers
Жmetrics
 вlayer_regularization_losses
Вlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
:
ьtrace_0
Ьtrace_1
№trace_2
­trace_3* 
:
ыtrace_0
Ыtrace_1
зtrace_2
Зtrace_3* 
* 
Ь
ш	variables
Шtrainable_variables
эregularization_losses
Э	keras_api
щ__call__
+Щ&call_and_return_all_conditional_losses
ч_random_generator
Ч
state_size
Јkernel
љrecurrent_kernel
	Љbias*
* 

x0
y1*

x0
y1*
* 
ў
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*

ѓtrace_0* 

Ѓtrace_0* 
_Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_23/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Ѕtrace_0
іtrace_1* 

Іtrace_0
їtrace_1* 
* 

Є0
ѕ1*

Є0
ѕ1*
* 
ъ
Їnon_trainable_variables
јlayers
Јmetrics
 љlayer_regularization_losses
Љlayer_metrics
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses*

њtrace_0* 

Њtrace_0* 
_Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_24/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ю
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
Ѕ	variables
іtrainable_variables
Іregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses* 

Ўtrace_0* 

џtrace_0* 
\V
VARIABLE_VALUElstm_14/lstm_cell_20/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%lstm_14/lstm_cell_20/recurrent_kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_14/lstm_cell_20/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
5
0
1
2
>3
?4
X5
Y6*
r
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
14*

Џ0
ю1*
* 
* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
"
Ъ	capture_0
а	capture_1* 
* 
* 
"
Ъ	capture_0
а	capture_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

>0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

X0
Y1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

p0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ј0
љ1
Љ2*

Ј0
љ1
Љ2*
* 
ъ
Юnon_trainable_variables
ъlayers
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
ш	variables
Шtrainable_variables
эregularization_losses
щ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
б	variables
Б	keras_api

цtotal

Цcount*
M
д	variables
Д	keras_api

еtotal

Еcount
ф
_fn_kwargs*
* 
* 
* 
* 
* 

ц0
Ц1*

б	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

е0
Е1*

д	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
и
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamenormalization_11/meannormalization_11/variancenormalization_11/countconv1d_33/kernelconv1d_33/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv1d_34/kernelconv1d_34/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv1d_35/kernelconv1d_35/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/biaslstm_14/lstm_cell_20/kernel%lstm_14/lstm_cell_20/recurrent_kernellstm_14/lstm_cell_20/biastotal_1count_1totalcountConst_2*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_7890963
░
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalization_11/meannormalization_11/variancenormalization_11/countconv1d_33/kernelconv1d_33/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv1d_34/kernelconv1d_34/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv1d_35/kernelconv1d_35/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/biaslstm_14/lstm_cell_20/kernel%lstm_14/lstm_cell_20/recurrent_kernellstm_14/lstm_cell_20/biastotal_1count_1totalcount*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_7891057═О7
╠H
ф

J__inference_sequential_11_layer_call_and_return_conditional_losses_7887079

inputs
normalization_11_sub_y
normalization_11_sqrt_x(
conv1d_33_7887023:ђ 
conv1d_33_7887025:	ђ-
batch_normalization_22_7887029:	ђ-
batch_normalization_22_7887031:	ђ-
batch_normalization_22_7887033:	ђ-
batch_normalization_22_7887035:	ђ)
conv1d_34_7887038:ђђ 
conv1d_34_7887040:	ђ-
batch_normalization_23_7887044:	ђ-
batch_normalization_23_7887046:	ђ-
batch_normalization_23_7887048:	ђ-
batch_normalization_23_7887050:	ђ)
conv1d_35_7887053:ђђ 
conv1d_35_7887055:	ђ#
lstm_14_7887059:
ђђ"
lstm_14_7887061:	 ђ
lstm_14_7887063:	ђ#
dense_23_7887066:	 ђ
dense_23_7887068:	ђ#
dense_24_7887072:	ђ
dense_24_7887074:
identityѕб.batch_normalization_22/StatefulPartitionedCallб.batch_normalization_23/StatefulPartitionedCallб!conv1d_33/StatefulPartitionedCallб!conv1d_34/StatefulPartitionedCallб!conv1d_35/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallбlstm_14/StatefulPartitionedCallk
normalization_11/CastCastinputs*

DstT0*

SrcT0*,
_output_shapes
:         еЁ
normalization_11/subSubnormalization_11/Cast:y:0normalization_11_sub_y*
T0*,
_output_shapes
:         еc
normalization_11/SqrtSqrtnormalization_11_sqrt_x*
T0*"
_output_shapes
:_
normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3љ
normalization_11/MaximumMaximumnormalization_11/Sqrt:y:0#normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:њ
normalization_11/truedivRealDivnormalization_11/sub:z:0normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еН
lambda_11/PartitionedCallPartitionedCallnormalization_11/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lambda_11_layer_call_and_return_conditional_losses_7886397ў
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0conv1d_33_7887023conv1d_33_7887025*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7885796Ы
 max_pooling1d_20/PartitionedCallPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7884691Ќ
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_20/PartitionedCall:output:0batch_normalization_22_7887029batch_normalization_22_7887031batch_normalization_22_7887033batch_normalization_22_7887035*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884752Г
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_34_7887038conv1d_34_7887040*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7885828Ы
 max_pooling1d_21/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7884788Ќ
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_21/PartitionedCall:output:0batch_normalization_23_7887044batch_normalization_23_7887046batch_normalization_23_7887048batch_normalization_23_7887050*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884849Г
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv1d_35_7887053conv1d_35_7887055*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7885860Т
reshape_22/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_22_layer_call_and_return_conditional_losses_7885879Ъ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0lstm_14_7887059lstm_14_7887061lstm_14_7887063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886863ќ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_23_7887066dense_23_7887068*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_7886327р
dropout_12/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886880љ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_24_7887072dense_24_7887074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_7886357С
reshape_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_23_layer_call_and_return_conditional_losses_7886376v
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ч
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
┴
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888640

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         У
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         е:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
УK
б
(__forward_gpu_lstm_with_fallback_7888597

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_62564cc1-7be5-4b9d-b3a1-f254179136f8*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7888422_7888598*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
┐*
л
while_body_7888241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ёх
╦
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888622

inputs
normalization_11_sub_y
normalization_11_sqrt_xL
5conv1d_33_conv1d_expanddims_1_readvariableop_resource:ђ8
)conv1d_33_biasadd_readvariableop_resource:	ђB
3batch_normalization_22_cast_readvariableop_resource:	ђD
5batch_normalization_22_cast_1_readvariableop_resource:	ђD
5batch_normalization_22_cast_2_readvariableop_resource:	ђD
5batch_normalization_22_cast_3_readvariableop_resource:	ђM
5conv1d_34_conv1d_expanddims_1_readvariableop_resource:ђђ8
)conv1d_34_biasadd_readvariableop_resource:	ђB
3batch_normalization_23_cast_readvariableop_resource:	ђD
5batch_normalization_23_cast_1_readvariableop_resource:	ђD
5batch_normalization_23_cast_2_readvariableop_resource:	ђD
5batch_normalization_23_cast_3_readvariableop_resource:	ђM
5conv1d_35_conv1d_expanddims_1_readvariableop_resource:ђђ8
)conv1d_35_biasadd_readvariableop_resource:	ђ8
$lstm_14_read_readvariableop_resource:
ђђ9
&lstm_14_read_1_readvariableop_resource:	 ђ5
&lstm_14_read_2_readvariableop_resource:	ђ:
'dense_23_matmul_readvariableop_resource:	 ђ7
(dense_23_biasadd_readvariableop_resource:	ђ:
'dense_24_matmul_readvariableop_resource:	ђ6
(dense_24_biasadd_readvariableop_resource:
identityѕб*batch_normalization_22/Cast/ReadVariableOpб,batch_normalization_22/Cast_1/ReadVariableOpб,batch_normalization_22/Cast_2/ReadVariableOpб,batch_normalization_22/Cast_3/ReadVariableOpб*batch_normalization_23/Cast/ReadVariableOpб,batch_normalization_23/Cast_1/ReadVariableOpб,batch_normalization_23/Cast_2/ReadVariableOpб,batch_normalization_23/Cast_3/ReadVariableOpб conv1d_33/BiasAdd/ReadVariableOpб,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpб conv1d_34/BiasAdd/ReadVariableOpб,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpб conv1d_35/BiasAdd/ReadVariableOpб,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpбdense_23/BiasAdd/ReadVariableOpбdense_23/MatMul/ReadVariableOpбdense_24/BiasAdd/ReadVariableOpбdense_24/MatMul/ReadVariableOpбlstm_14/Read/ReadVariableOpбlstm_14/Read_1/ReadVariableOpбlstm_14/Read_2/ReadVariableOpk
normalization_11/CastCastinputs*

DstT0*

SrcT0*,
_output_shapes
:         еЁ
normalization_11/subSubnormalization_11/Cast:y:0normalization_11_sub_y*
T0*,
_output_shapes
:         еc
normalization_11/SqrtSqrtnormalization_11_sqrt_x*
T0*"
_output_shapes
:_
normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3љ
normalization_11/MaximumMaximumnormalization_11/Sqrt:y:0#normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:њ
normalization_11/truedivRealDivnormalization_11/sub:z:0normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еr
lambda_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       t
lambda_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            t
lambda_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         д
lambda_11/strided_sliceStridedSlicenormalization_11/truediv:z:0&lambda_11/strided_slice/stack:output:0(lambda_11/strided_slice/stack_1:output:0(lambda_11/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskj
conv1d_33/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        »
conv1d_33/Conv1D/ExpandDims
ExpandDims lambda_11/strided_slice:output:0(conv1d_33/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         Д
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_33_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:ђ*
dtype0c
!conv1d_33/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ┐
conv1d_33/Conv1D/ExpandDims_1
ExpandDims4conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_33/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ђ╦
conv1d_33/Conv1DConv2D$conv1d_33/Conv1D/ExpandDims:output:0&conv1d_33/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ћ
conv1d_33/Conv1D/SqueezeSqueezeconv1d_33/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Є
 conv1d_33/BiasAdd/ReadVariableOpReadVariableOp)conv1d_33_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0а
conv1d_33/BiasAddBiasAdd!conv1d_33/Conv1D/Squeeze:output:0(conv1d_33/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђi
conv1d_33/ReluReluconv1d_33/BiasAdd:output:0*
T0*,
_output_shapes
:         ђa
max_pooling1d_20/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :г
max_pooling1d_20/ExpandDims
ExpandDimsconv1d_33/Relu:activations:0(max_pooling1d_20/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђи
max_pooling1d_20/MaxPoolMaxPool$max_pooling1d_20/ExpandDims:output:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
ћ
max_pooling1d_20/SqueezeSqueeze!max_pooling1d_20/MaxPool:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims
Џ
*batch_normalization_22/Cast/ReadVariableOpReadVariableOp3batch_normalization_22_cast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_22/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_22_cast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_22/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_22_cast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_22/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_22_cast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0k
&batch_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:║
$batch_normalization_22/batchnorm/addAddV24batch_normalization_22/Cast_1/ReadVariableOp:value:0/batch_normalization_22/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ
&batch_normalization_22/batchnorm/RsqrtRsqrt(batch_normalization_22/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ│
$batch_normalization_22/batchnorm/mulMul*batch_normalization_22/batchnorm/Rsqrt:y:04batch_normalization_22/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ▒
&batch_normalization_22/batchnorm/mul_1Mul!max_pooling1d_20/Squeeze:output:0(batch_normalization_22/batchnorm/mul:z:0*
T0*,
_output_shapes
:         ђ▒
&batch_normalization_22/batchnorm/mul_2Mul2batch_normalization_22/Cast/ReadVariableOp:value:0(batch_normalization_22/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ│
$batch_normalization_22/batchnorm/subSub4batch_normalization_22/Cast_2/ReadVariableOp:value:0*batch_normalization_22/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ╝
&batch_normalization_22/batchnorm/add_1AddV2*batch_normalization_22/batchnorm/mul_1:z:0(batch_normalization_22/batchnorm/sub:z:0*
T0*,
_output_shapes
:         ђj
conv1d_34/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ║
conv1d_34/Conv1D/ExpandDims
ExpandDims*batch_normalization_22/batchnorm/add_1:z:0(conv1d_34/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђе
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_34_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0c
!conv1d_34/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : └
conv1d_34/Conv1D/ExpandDims_1
ExpandDims4conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_34/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ╦
conv1d_34/Conv1DConv2D$conv1d_34/Conv1D/ExpandDims:output:0&conv1d_34/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ћ
conv1d_34/Conv1D/SqueezeSqueezeconv1d_34/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Є
 conv1d_34/BiasAdd/ReadVariableOpReadVariableOp)conv1d_34_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0а
conv1d_34/BiasAddBiasAdd!conv1d_34/Conv1D/Squeeze:output:0(conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђi
conv1d_34/ReluReluconv1d_34/BiasAdd:output:0*
T0*,
_output_shapes
:         ђa
max_pooling1d_21/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :г
max_pooling1d_21/ExpandDims
ExpandDimsconv1d_34/Relu:activations:0(max_pooling1d_21/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђи
max_pooling1d_21/MaxPoolMaxPool$max_pooling1d_21/ExpandDims:output:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
ћ
max_pooling1d_21/SqueezeSqueeze!max_pooling1d_21/MaxPool:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims
Џ
*batch_normalization_23/Cast/ReadVariableOpReadVariableOp3batch_normalization_23_cast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_23/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_23_cast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_23/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_23_cast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_23/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_23_cast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0k
&batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:║
$batch_normalization_23/batchnorm/addAddV24batch_normalization_23/Cast_1/ReadVariableOp:value:0/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ
&batch_normalization_23/batchnorm/RsqrtRsqrt(batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ│
$batch_normalization_23/batchnorm/mulMul*batch_normalization_23/batchnorm/Rsqrt:y:04batch_normalization_23/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ▒
&batch_normalization_23/batchnorm/mul_1Mul!max_pooling1d_21/Squeeze:output:0(batch_normalization_23/batchnorm/mul:z:0*
T0*,
_output_shapes
:         ђ▒
&batch_normalization_23/batchnorm/mul_2Mul2batch_normalization_23/Cast/ReadVariableOp:value:0(batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ│
$batch_normalization_23/batchnorm/subSub4batch_normalization_23/Cast_2/ReadVariableOp:value:0*batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ╝
&batch_normalization_23/batchnorm/add_1AddV2*batch_normalization_23/batchnorm/mul_1:z:0(batch_normalization_23/batchnorm/sub:z:0*
T0*,
_output_shapes
:         ђj
conv1d_35/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ║
conv1d_35/Conv1D/ExpandDims
ExpandDims*batch_normalization_23/batchnorm/add_1:z:0(conv1d_35/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђе
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_35_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0c
!conv1d_35/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : └
conv1d_35/Conv1D/ExpandDims_1
ExpandDims4conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_35/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ╦
conv1d_35/Conv1DConv2D$conv1d_35/Conv1D/ExpandDims:output:0&conv1d_35/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ћ
conv1d_35/Conv1D/SqueezeSqueezeconv1d_35/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Є
 conv1d_35/BiasAdd/ReadVariableOpReadVariableOp)conv1d_35_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0а
conv1d_35/BiasAddBiasAdd!conv1d_35/Conv1D/Squeeze:output:0(conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђi
conv1d_35/ReluReluconv1d_35/BiasAdd:output:0*
T0*,
_output_shapes
:         ђj
reshape_22/ShapeShapeconv1d_35/Relu:activations:0*
T0*
_output_shapes
::ь¤h
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
         ]
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ђ╗
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Ћ
reshape_22/ReshapeReshapeconv1d_35/Relu:activations:0!reshape_22/Reshape/shape:output:0*
T0*,
_output_shapes
:         ђf
lstm_14/ShapeShapereshape_22/Reshape:output:0*
T0*
_output_shapes
::ь¤e
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : І
lstm_14/zeros/packedPacklstm_14/strided_slice:output:0lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_14/zerosFilllstm_14/zeros/packed:output:0lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:          Z
lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ј
lstm_14/zeros_1/packedPacklstm_14/strided_slice:output:0!lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_14/zeros_1Filllstm_14/zeros_1/packed:output:0lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:          ѓ
lstm_14/Read/ReadVariableOpReadVariableOp$lstm_14_read_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0l
lstm_14/IdentityIdentity#lstm_14/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђЁ
lstm_14/Read_1/ReadVariableOpReadVariableOp&lstm_14_read_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0o
lstm_14/Identity_1Identity%lstm_14/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђЂ
lstm_14/Read_2/ReadVariableOpReadVariableOp&lstm_14_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0k
lstm_14/Identity_2Identity%lstm_14/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђЭ
lstm_14/PartitionedCallPartitionedCallreshape_22/Reshape:output:0lstm_14/zeros:output:0lstm_14/zeros_1:output:0lstm_14/Identity:output:0lstm_14/Identity_1:output:0lstm_14/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7888327Є
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0ќ
dense_23/MatMulMatMul lstm_14/PartitionedCall:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЁ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0њ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђm
dropout_12/IdentityIdentitydense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЄ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0Љ
dense_24/MatMulMatMuldropout_12/Identity:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
reshape_23/ShapeShapedense_24/BiasAdd:output:0*
T0*
_output_shapes
::ь¤h
reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
reshape_23/strided_sliceStridedSlicereshape_23/Shape:output:0'reshape_23/strided_slice/stack:output:0)reshape_23/strided_slice/stack_1:output:0)reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╗
reshape_23/Reshape/shapePack!reshape_23/strided_slice:output:0#reshape_23/Reshape/shape/1:output:0#reshape_23/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Љ
reshape_23/ReshapeReshapedense_24/BiasAdd:output:0!reshape_23/Reshape/shape:output:0*
T0*+
_output_shapes
:         n
IdentityIdentityreshape_23/Reshape:output:0^NoOp*
T0*+
_output_shapes
:         ћ
NoOpNoOp+^batch_normalization_22/Cast/ReadVariableOp-^batch_normalization_22/Cast_1/ReadVariableOp-^batch_normalization_22/Cast_2/ReadVariableOp-^batch_normalization_22/Cast_3/ReadVariableOp+^batch_normalization_23/Cast/ReadVariableOp-^batch_normalization_23/Cast_1/ReadVariableOp-^batch_normalization_23/Cast_2/ReadVariableOp-^batch_normalization_23/Cast_3/ReadVariableOp!^conv1d_33/BiasAdd/ReadVariableOp-^conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_34/BiasAdd/ReadVariableOp-^conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_35/BiasAdd/ReadVariableOp-^conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp^lstm_14/Read/ReadVariableOp^lstm_14/Read_1/ReadVariableOp^lstm_14/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2X
*batch_normalization_22/Cast/ReadVariableOp*batch_normalization_22/Cast/ReadVariableOp2\
,batch_normalization_22/Cast_1/ReadVariableOp,batch_normalization_22/Cast_1/ReadVariableOp2\
,batch_normalization_22/Cast_2/ReadVariableOp,batch_normalization_22/Cast_2/ReadVariableOp2\
,batch_normalization_22/Cast_3/ReadVariableOp,batch_normalization_22/Cast_3/ReadVariableOp2X
*batch_normalization_23/Cast/ReadVariableOp*batch_normalization_23/Cast/ReadVariableOp2\
,batch_normalization_23/Cast_1/ReadVariableOp,batch_normalization_23/Cast_1/ReadVariableOp2\
,batch_normalization_23/Cast_2/ReadVariableOp,batch_normalization_23/Cast_2/ReadVariableOp2\
,batch_normalization_23/Cast_3/ReadVariableOp,batch_normalization_23/Cast_3/ReadVariableOp2D
 conv1d_33/BiasAdd/ReadVariableOp conv1d_33/BiasAdd/ReadVariableOp2\
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_34/BiasAdd/ReadVariableOp conv1d_34/BiasAdd/ReadVariableOp2\
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_35/BiasAdd/ReadVariableOp conv1d_35/BiasAdd/ReadVariableOp2\
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2:
lstm_14/Read/ReadVariableOplstm_14/Read/ReadVariableOp2>
lstm_14/Read_1/ReadVariableOplstm_14/Read_1/ReadVariableOp2>
lstm_14/Read_2/ReadVariableOplstm_14/Read_2/ReadVariableOp:($
"
_output_shapes
::($
"
_output_shapes
::T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
УK
б
(__forward_gpu_lstm_with_fallback_7888042

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_34d6ccb5-ffaa-40bb-916d-9eaefbce84eb*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7887867_7888043*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
╝;
┴
!__inference_standard_lstm_7884387

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7884301*
condR
while_cond_7884300*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_6994f68d-4ffa-4458-b387-a9112ecbdac6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
м
i
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7884691

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
УK
б
(__forward_gpu_lstm_with_fallback_7886306

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_bd9c85d7-2599-49ab-a6d7-1da46baf3153*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7886131_7886307*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
╝;
┴
!__inference_standard_lstm_7886036

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7885950*
condR
while_cond_7885949*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_bd9c85d7-2599-49ab-a6d7-1da46baf3153*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
о@
═
*__inference_gpu_lstm_with_fallback_7885556

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђбМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a930b16e-0e18-4793-b5b5-d08838e2a2d6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
¤	
Э
E__inference_dense_23_layer_call_and_return_conditional_losses_7886327

inputs1
matmul_readvariableop_resource:	 ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
┐*
л
while_body_7889041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
УK
б
(__forward_gpu_lstm_with_fallback_7890255

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a0156a78-941b-4661-8188-a9340c249ad1*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7890080_7890256*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
Э	
к
while_cond_7885949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7885949___redundant_placeholder05
1while_while_cond_7885949___redundant_placeholder15
1while_while_cond_7885949___redundant_placeholder25
1while_while_cond_7885949___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Э	
к
while_cond_7887685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7887685___redundant_placeholder05
1while_while_cond_7887685___redundant_placeholder15
1while_while_cond_7887685___redundant_placeholder25
1while_while_cond_7887685___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Т
О
8__inference_batch_normalization_23_layer_call_fn_7888817

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884829}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
┐*
л
while_body_7887686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
­┬
у
=__inference___backward_gpu_lstm_with_fallback_7889651_7889827
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                   *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*k
_output_shapesY
W:                  ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ѕ
_input_shapesэ
З:          :          :          :          : :          :          :          :                   ::                  ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_05263f8f-1aa2-4ecc-bf9b-65f0e617850f*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7889826*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :;
7
5
_output_shapes#
!:                  ђ:	

_output_shapes
:::6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
╝;
┴
!__inference_standard_lstm_7887772

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7887686*
condR
while_cond_7887685*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_34d6ccb5-ffaa-40bb-916d-9eaefbce84eb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
З
і
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884752

inputs+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ-
cast_2_readvariableop_resource:	ђ-
cast_3_readvariableop_resource:	ђ
identityѕбCast/ReadVariableOpбCast_1/ReadVariableOpбCast_2/ReadVariableOpбCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђц
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
▓@
═
*__inference_gpu_lstm_with_fallback_7888421

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_62564cc1-7be5-4b9d-b3a1-f254179136f8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
б

f
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886345

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓@
═
*__inference_gpu_lstm_with_fallback_7886684

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_8fd9b231-f28f-46d8-bd6c-1ae7de3b004c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ч
и
)__inference_lstm_14_layer_call_fn_7888960

inputs
unknown:
ђђ
	unknown_0:	 ђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
═
▄
/__inference_sequential_11_layer_call_fn_7887440

inputs
unknown
	unknown_0 
	unknown_1:ђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ!
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:	ђ

unknown_12:	ђ"

unknown_13:ђђ

unknown_14:	ђ

unknown_15:
ђђ

unknown_16:	 ђ

unknown_17:	ђ

unknown_18:	 ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:
identityѕбStatefulPartitionedCallЩ
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886960s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
Э	
к
while_cond_7888240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7888240___redundant_placeholder05
1while_while_cond_7888240___redundant_placeholder15
1while_while_cond_7888240___redundant_placeholder25
1while_while_cond_7888240___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
љя
Џ
"__inference__wrapped_model_7884682
normalization_11_input(
$sequential_11_normalization_11_sub_y)
%sequential_11_normalization_11_sqrt_xZ
Csequential_11_conv1d_33_conv1d_expanddims_1_readvariableop_resource:ђF
7sequential_11_conv1d_33_biasadd_readvariableop_resource:	ђP
Asequential_11_batch_normalization_22_cast_readvariableop_resource:	ђR
Csequential_11_batch_normalization_22_cast_1_readvariableop_resource:	ђR
Csequential_11_batch_normalization_22_cast_2_readvariableop_resource:	ђR
Csequential_11_batch_normalization_22_cast_3_readvariableop_resource:	ђ[
Csequential_11_conv1d_34_conv1d_expanddims_1_readvariableop_resource:ђђF
7sequential_11_conv1d_34_biasadd_readvariableop_resource:	ђP
Asequential_11_batch_normalization_23_cast_readvariableop_resource:	ђR
Csequential_11_batch_normalization_23_cast_1_readvariableop_resource:	ђR
Csequential_11_batch_normalization_23_cast_2_readvariableop_resource:	ђR
Csequential_11_batch_normalization_23_cast_3_readvariableop_resource:	ђ[
Csequential_11_conv1d_35_conv1d_expanddims_1_readvariableop_resource:ђђF
7sequential_11_conv1d_35_biasadd_readvariableop_resource:	ђF
2sequential_11_lstm_14_read_readvariableop_resource:
ђђG
4sequential_11_lstm_14_read_1_readvariableop_resource:	 ђC
4sequential_11_lstm_14_read_2_readvariableop_resource:	ђH
5sequential_11_dense_23_matmul_readvariableop_resource:	 ђE
6sequential_11_dense_23_biasadd_readvariableop_resource:	ђH
5sequential_11_dense_24_matmul_readvariableop_resource:	ђD
6sequential_11_dense_24_biasadd_readvariableop_resource:
identityѕб8sequential_11/batch_normalization_22/Cast/ReadVariableOpб:sequential_11/batch_normalization_22/Cast_1/ReadVariableOpб:sequential_11/batch_normalization_22/Cast_2/ReadVariableOpб:sequential_11/batch_normalization_22/Cast_3/ReadVariableOpб8sequential_11/batch_normalization_23/Cast/ReadVariableOpб:sequential_11/batch_normalization_23/Cast_1/ReadVariableOpб:sequential_11/batch_normalization_23/Cast_2/ReadVariableOpб:sequential_11/batch_normalization_23/Cast_3/ReadVariableOpб.sequential_11/conv1d_33/BiasAdd/ReadVariableOpб:sequential_11/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpб.sequential_11/conv1d_34/BiasAdd/ReadVariableOpб:sequential_11/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpб.sequential_11/conv1d_35/BiasAdd/ReadVariableOpб:sequential_11/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpб-sequential_11/dense_23/BiasAdd/ReadVariableOpб,sequential_11/dense_23/MatMul/ReadVariableOpб-sequential_11/dense_24/BiasAdd/ReadVariableOpб,sequential_11/dense_24/MatMul/ReadVariableOpб)sequential_11/lstm_14/Read/ReadVariableOpб+sequential_11/lstm_14/Read_1/ReadVariableOpб+sequential_11/lstm_14/Read_2/ReadVariableOpЅ
#sequential_11/normalization_11/CastCastnormalization_11_input*

DstT0*

SrcT0*,
_output_shapes
:         е»
"sequential_11/normalization_11/subSub'sequential_11/normalization_11/Cast:y:0$sequential_11_normalization_11_sub_y*
T0*,
_output_shapes
:         е
#sequential_11/normalization_11/SqrtSqrt%sequential_11_normalization_11_sqrt_x*
T0*"
_output_shapes
:m
(sequential_11/normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3║
&sequential_11/normalization_11/MaximumMaximum'sequential_11/normalization_11/Sqrt:y:01sequential_11/normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:╝
&sequential_11/normalization_11/truedivRealDiv&sequential_11/normalization_11/sub:z:0*sequential_11/normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еђ
+sequential_11/lambda_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       ѓ
-sequential_11/lambda_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            ѓ
-sequential_11/lambda_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         В
%sequential_11/lambda_11/strided_sliceStridedSlice*sequential_11/normalization_11/truediv:z:04sequential_11/lambda_11/strided_slice/stack:output:06sequential_11/lambda_11/strided_slice/stack_1:output:06sequential_11/lambda_11/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskx
-sequential_11/conv1d_33/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ┘
)sequential_11/conv1d_33/Conv1D/ExpandDims
ExpandDims.sequential_11/lambda_11/strided_slice:output:06sequential_11/conv1d_33/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         ├
:sequential_11/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_11_conv1d_33_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:ђ*
dtype0q
/sequential_11/conv1d_33/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ж
+sequential_11/conv1d_33/Conv1D/ExpandDims_1
ExpandDimsBsequential_11/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:value:08sequential_11/conv1d_33/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ђш
sequential_11/conv1d_33/Conv1DConv2D2sequential_11/conv1d_33/Conv1D/ExpandDims:output:04sequential_11/conv1d_33/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
▒
&sequential_11/conv1d_33/Conv1D/SqueezeSqueeze'sequential_11/conv1d_33/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Б
.sequential_11/conv1d_33/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv1d_33_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╩
sequential_11/conv1d_33/BiasAddBiasAdd/sequential_11/conv1d_33/Conv1D/Squeeze:output:06sequential_11/conv1d_33/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђЁ
sequential_11/conv1d_33/ReluRelu(sequential_11/conv1d_33/BiasAdd:output:0*
T0*,
_output_shapes
:         ђo
-sequential_11/max_pooling1d_20/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :о
)sequential_11/max_pooling1d_20/ExpandDims
ExpandDims*sequential_11/conv1d_33/Relu:activations:06sequential_11/max_pooling1d_20/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђМ
&sequential_11/max_pooling1d_20/MaxPoolMaxPool2sequential_11/max_pooling1d_20/ExpandDims:output:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
░
&sequential_11/max_pooling1d_20/SqueezeSqueeze/sequential_11/max_pooling1d_20/MaxPool:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims
и
8sequential_11/batch_normalization_22/Cast/ReadVariableOpReadVariableOpAsequential_11_batch_normalization_22_cast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╗
:sequential_11/batch_normalization_22/Cast_1/ReadVariableOpReadVariableOpCsequential_11_batch_normalization_22_cast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╗
:sequential_11/batch_normalization_22/Cast_2/ReadVariableOpReadVariableOpCsequential_11_batch_normalization_22_cast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╗
:sequential_11/batch_normalization_22/Cast_3/ReadVariableOpReadVariableOpCsequential_11_batch_normalization_22_cast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0y
4sequential_11/batch_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:С
2sequential_11/batch_normalization_22/batchnorm/addAddV2Bsequential_11/batch_normalization_22/Cast_1/ReadVariableOp:value:0=sequential_11/batch_normalization_22/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђЏ
4sequential_11/batch_normalization_22/batchnorm/RsqrtRsqrt6sequential_11/batch_normalization_22/batchnorm/add:z:0*
T0*
_output_shapes	
:ђП
2sequential_11/batch_normalization_22/batchnorm/mulMul8sequential_11/batch_normalization_22/batchnorm/Rsqrt:y:0Bsequential_11/batch_normalization_22/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ█
4sequential_11/batch_normalization_22/batchnorm/mul_1Mul/sequential_11/max_pooling1d_20/Squeeze:output:06sequential_11/batch_normalization_22/batchnorm/mul:z:0*
T0*,
_output_shapes
:         ђ█
4sequential_11/batch_normalization_22/batchnorm/mul_2Mul@sequential_11/batch_normalization_22/Cast/ReadVariableOp:value:06sequential_11/batch_normalization_22/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђП
2sequential_11/batch_normalization_22/batchnorm/subSubBsequential_11/batch_normalization_22/Cast_2/ReadVariableOp:value:08sequential_11/batch_normalization_22/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђТ
4sequential_11/batch_normalization_22/batchnorm/add_1AddV28sequential_11/batch_normalization_22/batchnorm/mul_1:z:06sequential_11/batch_normalization_22/batchnorm/sub:z:0*
T0*,
_output_shapes
:         ђx
-sequential_11/conv1d_34/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        С
)sequential_11/conv1d_34/Conv1D/ExpandDims
ExpandDims8sequential_11/batch_normalization_22/batchnorm/add_1:z:06sequential_11/conv1d_34/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђ─
:sequential_11/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_11_conv1d_34_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0q
/sequential_11/conv1d_34/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
+sequential_11/conv1d_34/Conv1D/ExpandDims_1
ExpandDimsBsequential_11/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:value:08sequential_11/conv1d_34/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђш
sequential_11/conv1d_34/Conv1DConv2D2sequential_11/conv1d_34/Conv1D/ExpandDims:output:04sequential_11/conv1d_34/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
▒
&sequential_11/conv1d_34/Conv1D/SqueezeSqueeze'sequential_11/conv1d_34/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Б
.sequential_11/conv1d_34/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv1d_34_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╩
sequential_11/conv1d_34/BiasAddBiasAdd/sequential_11/conv1d_34/Conv1D/Squeeze:output:06sequential_11/conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђЁ
sequential_11/conv1d_34/ReluRelu(sequential_11/conv1d_34/BiasAdd:output:0*
T0*,
_output_shapes
:         ђo
-sequential_11/max_pooling1d_21/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :о
)sequential_11/max_pooling1d_21/ExpandDims
ExpandDims*sequential_11/conv1d_34/Relu:activations:06sequential_11/max_pooling1d_21/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђМ
&sequential_11/max_pooling1d_21/MaxPoolMaxPool2sequential_11/max_pooling1d_21/ExpandDims:output:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
░
&sequential_11/max_pooling1d_21/SqueezeSqueeze/sequential_11/max_pooling1d_21/MaxPool:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims
и
8sequential_11/batch_normalization_23/Cast/ReadVariableOpReadVariableOpAsequential_11_batch_normalization_23_cast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╗
:sequential_11/batch_normalization_23/Cast_1/ReadVariableOpReadVariableOpCsequential_11_batch_normalization_23_cast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╗
:sequential_11/batch_normalization_23/Cast_2/ReadVariableOpReadVariableOpCsequential_11_batch_normalization_23_cast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╗
:sequential_11/batch_normalization_23/Cast_3/ReadVariableOpReadVariableOpCsequential_11_batch_normalization_23_cast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0y
4sequential_11/batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:С
2sequential_11/batch_normalization_23/batchnorm/addAddV2Bsequential_11/batch_normalization_23/Cast_1/ReadVariableOp:value:0=sequential_11/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђЏ
4sequential_11/batch_normalization_23/batchnorm/RsqrtRsqrt6sequential_11/batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes	
:ђП
2sequential_11/batch_normalization_23/batchnorm/mulMul8sequential_11/batch_normalization_23/batchnorm/Rsqrt:y:0Bsequential_11/batch_normalization_23/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ█
4sequential_11/batch_normalization_23/batchnorm/mul_1Mul/sequential_11/max_pooling1d_21/Squeeze:output:06sequential_11/batch_normalization_23/batchnorm/mul:z:0*
T0*,
_output_shapes
:         ђ█
4sequential_11/batch_normalization_23/batchnorm/mul_2Mul@sequential_11/batch_normalization_23/Cast/ReadVariableOp:value:06sequential_11/batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђП
2sequential_11/batch_normalization_23/batchnorm/subSubBsequential_11/batch_normalization_23/Cast_2/ReadVariableOp:value:08sequential_11/batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђТ
4sequential_11/batch_normalization_23/batchnorm/add_1AddV28sequential_11/batch_normalization_23/batchnorm/mul_1:z:06sequential_11/batch_normalization_23/batchnorm/sub:z:0*
T0*,
_output_shapes
:         ђx
-sequential_11/conv1d_35/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        С
)sequential_11/conv1d_35/Conv1D/ExpandDims
ExpandDims8sequential_11/batch_normalization_23/batchnorm/add_1:z:06sequential_11/conv1d_35/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђ─
:sequential_11/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_11_conv1d_35_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0q
/sequential_11/conv1d_35/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
+sequential_11/conv1d_35/Conv1D/ExpandDims_1
ExpandDimsBsequential_11/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:value:08sequential_11/conv1d_35/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђш
sequential_11/conv1d_35/Conv1DConv2D2sequential_11/conv1d_35/Conv1D/ExpandDims:output:04sequential_11/conv1d_35/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
▒
&sequential_11/conv1d_35/Conv1D/SqueezeSqueeze'sequential_11/conv1d_35/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Б
.sequential_11/conv1d_35/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv1d_35_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╩
sequential_11/conv1d_35/BiasAddBiasAdd/sequential_11/conv1d_35/Conv1D/Squeeze:output:06sequential_11/conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђЁ
sequential_11/conv1d_35/ReluRelu(sequential_11/conv1d_35/BiasAdd:output:0*
T0*,
_output_shapes
:         ђє
sequential_11/reshape_22/ShapeShape*sequential_11/conv1d_35/Relu:activations:0*
T0*
_output_shapes
::ь¤v
,sequential_11/reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_11/reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_11/reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_11/reshape_22/strided_sliceStridedSlice'sequential_11/reshape_22/Shape:output:05sequential_11/reshape_22/strided_slice/stack:output:07sequential_11/reshape_22/strided_slice/stack_1:output:07sequential_11/reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(sequential_11/reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
         k
(sequential_11/reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ђз
&sequential_11/reshape_22/Reshape/shapePack/sequential_11/reshape_22/strided_slice:output:01sequential_11/reshape_22/Reshape/shape/1:output:01sequential_11/reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:┐
 sequential_11/reshape_22/ReshapeReshape*sequential_11/conv1d_35/Relu:activations:0/sequential_11/reshape_22/Reshape/shape:output:0*
T0*,
_output_shapes
:         ђѓ
sequential_11/lstm_14/ShapeShape)sequential_11/reshape_22/Reshape:output:0*
T0*
_output_shapes
::ь¤s
)sequential_11/lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_11/lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_11/lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_11/lstm_14/strided_sliceStridedSlice$sequential_11/lstm_14/Shape:output:02sequential_11/lstm_14/strided_slice/stack:output:04sequential_11/lstm_14/strided_slice/stack_1:output:04sequential_11/lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_11/lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : х
"sequential_11/lstm_14/zeros/packedPack,sequential_11/lstm_14/strided_slice:output:0-sequential_11/lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_11/lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_11/lstm_14/zerosFill+sequential_11/lstm_14/zeros/packed:output:0*sequential_11/lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:          h
&sequential_11/lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ╣
$sequential_11/lstm_14/zeros_1/packedPack,sequential_11/lstm_14/strided_slice:output:0/sequential_11/lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_11/lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_11/lstm_14/zeros_1Fill-sequential_11/lstm_14/zeros_1/packed:output:0,sequential_11/lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:          ъ
)sequential_11/lstm_14/Read/ReadVariableOpReadVariableOp2sequential_11_lstm_14_read_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ѕ
sequential_11/lstm_14/IdentityIdentity1sequential_11/lstm_14/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђА
+sequential_11/lstm_14/Read_1/ReadVariableOpReadVariableOp4sequential_11_lstm_14_read_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0І
 sequential_11/lstm_14/Identity_1Identity3sequential_11/lstm_14/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђЮ
+sequential_11/lstm_14/Read_2/ReadVariableOpReadVariableOp4sequential_11_lstm_14_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Є
 sequential_11/lstm_14/Identity_2Identity3sequential_11/lstm_14/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ┌
%sequential_11/lstm_14/PartitionedCallPartitionedCall)sequential_11/reshape_22/Reshape:output:0$sequential_11/lstm_14/zeros:output:0&sequential_11/lstm_14/zeros_1:output:0'sequential_11/lstm_14/Identity:output:0)sequential_11/lstm_14/Identity_1:output:0)sequential_11/lstm_14/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7884387Б
,sequential_11/dense_23/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_23_matmul_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0└
sequential_11/dense_23/MatMulMatMul.sequential_11/lstm_14/PartitionedCall:output:04sequential_11/dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђА
-sequential_11/dense_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╝
sequential_11/dense_23/BiasAddBiasAdd'sequential_11/dense_23/MatMul:product:05sequential_11/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЅ
!sequential_11/dropout_12/IdentityIdentity'sequential_11/dense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         ђБ
,sequential_11/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_24_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0╗
sequential_11/dense_24/MatMulMatMul*sequential_11/dropout_12/Identity:output:04sequential_11/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_11/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_11/dense_24/BiasAddBiasAdd'sequential_11/dense_24/MatMul:product:05sequential_11/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ѓ
sequential_11/reshape_23/ShapeShape'sequential_11/dense_24/BiasAdd:output:0*
T0*
_output_shapes
::ь¤v
,sequential_11/reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_11/reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_11/reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_11/reshape_23/strided_sliceStridedSlice'sequential_11/reshape_23/Shape:output:05sequential_11/reshape_23/strided_slice/stack:output:07sequential_11/reshape_23/strided_slice/stack_1:output:07sequential_11/reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_11/reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_11/reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :з
&sequential_11/reshape_23/Reshape/shapePack/sequential_11/reshape_23/strided_slice:output:01sequential_11/reshape_23/Reshape/shape/1:output:01sequential_11/reshape_23/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:╗
 sequential_11/reshape_23/ReshapeReshape'sequential_11/dense_24/BiasAdd:output:0/sequential_11/reshape_23/Reshape/shape:output:0*
T0*+
_output_shapes
:         |
IdentityIdentity)sequential_11/reshape_23/Reshape:output:0^NoOp*
T0*+
_output_shapes
:         ║	
NoOpNoOp9^sequential_11/batch_normalization_22/Cast/ReadVariableOp;^sequential_11/batch_normalization_22/Cast_1/ReadVariableOp;^sequential_11/batch_normalization_22/Cast_2/ReadVariableOp;^sequential_11/batch_normalization_22/Cast_3/ReadVariableOp9^sequential_11/batch_normalization_23/Cast/ReadVariableOp;^sequential_11/batch_normalization_23/Cast_1/ReadVariableOp;^sequential_11/batch_normalization_23/Cast_2/ReadVariableOp;^sequential_11/batch_normalization_23/Cast_3/ReadVariableOp/^sequential_11/conv1d_33/BiasAdd/ReadVariableOp;^sequential_11/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp/^sequential_11/conv1d_34/BiasAdd/ReadVariableOp;^sequential_11/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp/^sequential_11/conv1d_35/BiasAdd/ReadVariableOp;^sequential_11/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp.^sequential_11/dense_23/BiasAdd/ReadVariableOp-^sequential_11/dense_23/MatMul/ReadVariableOp.^sequential_11/dense_24/BiasAdd/ReadVariableOp-^sequential_11/dense_24/MatMul/ReadVariableOp*^sequential_11/lstm_14/Read/ReadVariableOp,^sequential_11/lstm_14/Read_1/ReadVariableOp,^sequential_11/lstm_14/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2t
8sequential_11/batch_normalization_22/Cast/ReadVariableOp8sequential_11/batch_normalization_22/Cast/ReadVariableOp2x
:sequential_11/batch_normalization_22/Cast_1/ReadVariableOp:sequential_11/batch_normalization_22/Cast_1/ReadVariableOp2x
:sequential_11/batch_normalization_22/Cast_2/ReadVariableOp:sequential_11/batch_normalization_22/Cast_2/ReadVariableOp2x
:sequential_11/batch_normalization_22/Cast_3/ReadVariableOp:sequential_11/batch_normalization_22/Cast_3/ReadVariableOp2t
8sequential_11/batch_normalization_23/Cast/ReadVariableOp8sequential_11/batch_normalization_23/Cast/ReadVariableOp2x
:sequential_11/batch_normalization_23/Cast_1/ReadVariableOp:sequential_11/batch_normalization_23/Cast_1/ReadVariableOp2x
:sequential_11/batch_normalization_23/Cast_2/ReadVariableOp:sequential_11/batch_normalization_23/Cast_2/ReadVariableOp2x
:sequential_11/batch_normalization_23/Cast_3/ReadVariableOp:sequential_11/batch_normalization_23/Cast_3/ReadVariableOp2`
.sequential_11/conv1d_33/BiasAdd/ReadVariableOp.sequential_11/conv1d_33/BiasAdd/ReadVariableOp2x
:sequential_11/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:sequential_11/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp2`
.sequential_11/conv1d_34/BiasAdd/ReadVariableOp.sequential_11/conv1d_34/BiasAdd/ReadVariableOp2x
:sequential_11/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:sequential_11/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp2`
.sequential_11/conv1d_35/BiasAdd/ReadVariableOp.sequential_11/conv1d_35/BiasAdd/ReadVariableOp2x
:sequential_11/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:sequential_11/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp2^
-sequential_11/dense_23/BiasAdd/ReadVariableOp-sequential_11/dense_23/BiasAdd/ReadVariableOp2\
,sequential_11/dense_23/MatMul/ReadVariableOp,sequential_11/dense_23/MatMul/ReadVariableOp2^
-sequential_11/dense_24/BiasAdd/ReadVariableOp-sequential_11/dense_24/BiasAdd/ReadVariableOp2\
,sequential_11/dense_24/MatMul/ReadVariableOp,sequential_11/dense_24/MatMul/ReadVariableOp2V
)sequential_11/lstm_14/Read/ReadVariableOp)sequential_11/lstm_14/Read/ReadVariableOp2Z
+sequential_11/lstm_14/Read_1/ReadVariableOp+sequential_11/lstm_14/Read_1/ReadVariableOp2Z
+sequential_11/lstm_14/Read_2/ReadVariableOp+sequential_11/lstm_14/Read_2/ReadVariableOp:($
"
_output_shapes
::($
"
_output_shapes
::d `
,
_output_shapes
:         е
0
_user_specified_namenormalization_11_input
м
i
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7884788

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╝
┐
D__inference_lstm_14_layer_call_and_return_conditional_losses_7885306

inputs0
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7885033i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
ћ
╣
)__inference_lstm_14_layer_call_fn_7888949
inputs_0
unknown:
ђђ
	unknown_0:	 ђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7885735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
┐*
л
while_body_7889899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╝;
┴
!__inference_standard_lstm_7886590

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7886504*
condR
while_cond_7886503*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_8fd9b231-f28f-46d8-bd6c-1ae7de3b004c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓@
═
*__inference_gpu_lstm_with_fallback_7890508

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_c7570a12-02a4-458a-96d8-9a1cf16e1fa0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
О;
┴
!__inference_standard_lstm_7889556

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7889470*
condR
while_cond_7889469*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_05263f8f-1aa2-4ecc-bf9b-65f0e617850f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
У
О
8__inference_batch_normalization_23_layer_call_fn_7888830

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884849}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
┴
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_7885778

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         У
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         е:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
┘
ў
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7888909

inputsC
+conv1d_expanddims_1_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ѓ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђћ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : б
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђГ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ђf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:         ђё
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
ф
┐
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890687

inputs0
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7890414i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
р
Ъ
+__inference_conv1d_35_layer_call_fn_7888893

inputs
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7885860t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
Є
N
2__inference_max_pooling1d_20_layer_call_fn_7888678

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7884691v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
│
G
+__inference_lambda_11_layer_call_fn_7888632

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lambda_11_layer_call_and_return_conditional_losses_7886397d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         е:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
М
Ќ
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7885796

inputsB
+conv1d_expanddims_1_readvariableop_resource:ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        Ђ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         Њ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:ђ*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : А
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ђГ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ђf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:         ђё
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7890509_7890685
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_c7570a12-02a4-458a-96d8-9a1cf16e1fa0*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7890684*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
М
Ќ
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7888673

inputsB
+conv1d_expanddims_1_readvariableop_resource:ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        Ђ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         Њ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:ђ*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : А
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ђГ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ђf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:         ђё
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
м
i
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7888804

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╝%
п
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888864

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбCast/ReadVariableOpбCast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ё
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђЋ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:                  ђs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Б
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђг
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѕ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђя
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
цJ
▀

J__inference_sequential_11_layer_call_and_return_conditional_losses_7886379
normalization_11_input
normalization_11_sub_y
normalization_11_sqrt_x(
conv1d_33_7885797:ђ 
conv1d_33_7885799:	ђ-
batch_normalization_22_7885803:	ђ-
batch_normalization_22_7885805:	ђ-
batch_normalization_22_7885807:	ђ-
batch_normalization_22_7885809:	ђ)
conv1d_34_7885829:ђђ 
conv1d_34_7885831:	ђ-
batch_normalization_23_7885835:	ђ-
batch_normalization_23_7885837:	ђ-
batch_normalization_23_7885839:	ђ-
batch_normalization_23_7885841:	ђ)
conv1d_35_7885861:ђђ 
conv1d_35_7885863:	ђ#
lstm_14_7886310:
ђђ"
lstm_14_7886312:	 ђ
lstm_14_7886314:	ђ#
dense_23_7886328:	 ђ
dense_23_7886330:	ђ#
dense_24_7886358:	ђ
dense_24_7886360:
identityѕб.batch_normalization_22/StatefulPartitionedCallб.batch_normalization_23/StatefulPartitionedCallб!conv1d_33/StatefulPartitionedCallб!conv1d_34/StatefulPartitionedCallб!conv1d_35/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallб"dropout_12/StatefulPartitionedCallбlstm_14/StatefulPartitionedCall{
normalization_11/CastCastnormalization_11_input*

DstT0*

SrcT0*,
_output_shapes
:         еЁ
normalization_11/subSubnormalization_11/Cast:y:0normalization_11_sub_y*
T0*,
_output_shapes
:         еc
normalization_11/SqrtSqrtnormalization_11_sqrt_x*
T0*"
_output_shapes
:_
normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3љ
normalization_11/MaximumMaximumnormalization_11/Sqrt:y:0#normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:њ
normalization_11/truedivRealDivnormalization_11/sub:z:0normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еН
lambda_11/PartitionedCallPartitionedCallnormalization_11/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lambda_11_layer_call_and_return_conditional_losses_7885778ў
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0conv1d_33_7885797conv1d_33_7885799*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7885796Ы
 max_pooling1d_20/PartitionedCallPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7884691Ћ
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_20/PartitionedCall:output:0batch_normalization_22_7885803batch_normalization_22_7885805batch_normalization_22_7885807batch_normalization_22_7885809*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884732Г
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_34_7885829conv1d_34_7885831*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7885828Ы
 max_pooling1d_21/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7884788Ћ
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_21/PartitionedCall:output:0batch_normalization_23_7885835batch_normalization_23_7885837batch_normalization_23_7885839batch_normalization_23_7885841*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884829Г
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv1d_35_7885861conv1d_35_7885863*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7885860Т
reshape_22/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_22_layer_call_and_return_conditional_losses_7885879Ъ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0lstm_14_7886310lstm_14_7886312lstm_14_7886314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886309ќ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_23_7886328dense_23_7886330*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_7886327ы
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886345ў
 dense_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_24_7886358dense_24_7886360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_7886357С
reshape_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_23_layer_call_and_return_conditional_losses_7886376v
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         А
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::d `
,
_output_shapes
:         е
0
_user_specified_namenormalization_11_input
Є
N
2__inference_max_pooling1d_21_layer_call_fn_7888796

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7884788v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
▓@
═
*__inference_gpu_lstm_with_fallback_7884481

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_6994f68d-4ffa-4458-b387-a9112ecbdac6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
╝%
п
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884732

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбCast/ReadVariableOpбCast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ё
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђЋ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:                  ђs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Б
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђг
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѕ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђя
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
­┬
у
=__inference___backward_gpu_lstm_with_fallback_7889222_7889398
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                   *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*k
_output_shapesY
W:                  ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ѕ
_input_shapesэ
З:          :          :          :          : :          :          :          :                   ::                  ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_633c4b20-2224-4ded-8d02-9fbd42383b4d*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7889397*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :;
7
5
_output_shapes#
!:                  ђ:	

_output_shapes
:::6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
─
┴
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889400
inputs_00
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђх
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7889127i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
З
і
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888884

inputs+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ-
cast_2_readvariableop_resource:	ђ-
cast_3_readvariableop_resource:	ђ
identityѕбCast/ReadVariableOpбCast_1/ReadVariableOpбCast_2/ReadVariableOpбCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђц
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
ЃL
б
(__forward_gpu_lstm_with_fallback_7889397

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_633c4b20-2224-4ded-8d02-9fbd42383b4d*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7889222_7889398*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
О;
┴
!__inference_standard_lstm_7885033

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7884947*
condR
while_cond_7884946*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a7d075c5-f9f4-4351-9e9d-ee5932f54725*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
УK
б
(__forward_gpu_lstm_with_fallback_7890684

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_c7570a12-02a4-458a-96d8-9a1cf16e1fa0*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7890509_7890685*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
┐*
л
while_body_7884301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
о@
═
*__inference_gpu_lstm_with_fallback_7885127

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђбМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a7d075c5-f9f4-4351-9e9d-ee5932f54725*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7886685_7886861
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_8fd9b231-f28f-46d8-bd6c-1ae7de3b004c*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7886860*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
ЗI
¤

J__inference_sequential_11_layer_call_and_return_conditional_losses_7886960

inputs
normalization_11_sub_y
normalization_11_sqrt_x(
conv1d_33_7886904:ђ 
conv1d_33_7886906:	ђ-
batch_normalization_22_7886910:	ђ-
batch_normalization_22_7886912:	ђ-
batch_normalization_22_7886914:	ђ-
batch_normalization_22_7886916:	ђ)
conv1d_34_7886919:ђђ 
conv1d_34_7886921:	ђ-
batch_normalization_23_7886925:	ђ-
batch_normalization_23_7886927:	ђ-
batch_normalization_23_7886929:	ђ-
batch_normalization_23_7886931:	ђ)
conv1d_35_7886934:ђђ 
conv1d_35_7886936:	ђ#
lstm_14_7886940:
ђђ"
lstm_14_7886942:	 ђ
lstm_14_7886944:	ђ#
dense_23_7886947:	 ђ
dense_23_7886949:	ђ#
dense_24_7886953:	ђ
dense_24_7886955:
identityѕб.batch_normalization_22/StatefulPartitionedCallб.batch_normalization_23/StatefulPartitionedCallб!conv1d_33/StatefulPartitionedCallб!conv1d_34/StatefulPartitionedCallб!conv1d_35/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallб"dropout_12/StatefulPartitionedCallбlstm_14/StatefulPartitionedCallk
normalization_11/CastCastinputs*

DstT0*

SrcT0*,
_output_shapes
:         еЁ
normalization_11/subSubnormalization_11/Cast:y:0normalization_11_sub_y*
T0*,
_output_shapes
:         еc
normalization_11/SqrtSqrtnormalization_11_sqrt_x*
T0*"
_output_shapes
:_
normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3љ
normalization_11/MaximumMaximumnormalization_11/Sqrt:y:0#normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:њ
normalization_11/truedivRealDivnormalization_11/sub:z:0normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еН
lambda_11/PartitionedCallPartitionedCallnormalization_11/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lambda_11_layer_call_and_return_conditional_losses_7885778ў
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0conv1d_33_7886904conv1d_33_7886906*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7885796Ы
 max_pooling1d_20/PartitionedCallPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7884691Ћ
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_20/PartitionedCall:output:0batch_normalization_22_7886910batch_normalization_22_7886912batch_normalization_22_7886914batch_normalization_22_7886916*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884732Г
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_34_7886919conv1d_34_7886921*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7885828Ы
 max_pooling1d_21/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7884788Ћ
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_21/PartitionedCall:output:0batch_normalization_23_7886925batch_normalization_23_7886927batch_normalization_23_7886929batch_normalization_23_7886931*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884829Г
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv1d_35_7886934conv1d_35_7886936*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7885860Т
reshape_22/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_22_layer_call_and_return_conditional_losses_7885879Ъ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0lstm_14_7886940lstm_14_7886942lstm_14_7886944*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886309ќ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_23_7886947dense_23_7886949*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_7886327ы
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886345ў
 dense_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_24_7886953dense_24_7886955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_7886357С
reshape_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_23_layer_call_and_return_conditional_losses_7886376v
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         А
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
и
H
,__inference_reshape_22_layer_call_fn_7888914

inputs
identityи
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_22_layer_call_and_return_conditional_losses_7885879e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
К
ў
*__inference_dense_24_layer_call_fn_7890742

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_7886357o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╝
┐
D__inference_lstm_14_layer_call_and_return_conditional_losses_7885735

inputs0
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7885462i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
о@
═
*__inference_gpu_lstm_with_fallback_7889221

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђбМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_633c4b20-2224-4ded-8d02-9fbd42383b4d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
­┬
у
=__inference___backward_gpu_lstm_with_fallback_7885557_7885733
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                   *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*k
_output_shapesY
W:                  ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ѕ
_input_shapesэ
З:          :          :          :          : :          :          :          :                   ::                  ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_a930b16e-0e18-4793-b5b5-d08838e2a2d6*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7885732*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :;
7
5
_output_shapes#
!:                  ђ:	

_output_shapes
:::6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
┘
ў
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7885828

inputsC
+conv1d_expanddims_1_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ѓ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђћ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : б
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђГ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ђf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:         ђё
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
ф
┐
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886309

inputs0
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7886036i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
м
i
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7888686

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           д
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
Ѓ
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
¤	
Э
E__inference_dense_23_layer_call_and_return_conditional_losses_7890706

inputs1
matmul_readvariableop_resource:	 ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
о@
═
*__inference_gpu_lstm_with_fallback_7889650

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђбМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_05263f8f-1aa2-4ecc-bf9b-65f0e617850f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
§

c
G__inference_reshape_22_layer_call_and_return_conditional_losses_7888927

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
         R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ђЈ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         ђ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ёз
├
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888074

inputs
normalization_11_sub_y
normalization_11_sqrt_xL
5conv1d_33_conv1d_expanddims_1_readvariableop_resource:ђ8
)conv1d_33_biasadd_readvariableop_resource:	ђM
>batch_normalization_22_assignmovingavg_readvariableop_resource:	ђO
@batch_normalization_22_assignmovingavg_1_readvariableop_resource:	ђB
3batch_normalization_22_cast_readvariableop_resource:	ђD
5batch_normalization_22_cast_1_readvariableop_resource:	ђM
5conv1d_34_conv1d_expanddims_1_readvariableop_resource:ђђ8
)conv1d_34_biasadd_readvariableop_resource:	ђM
>batch_normalization_23_assignmovingavg_readvariableop_resource:	ђO
@batch_normalization_23_assignmovingavg_1_readvariableop_resource:	ђB
3batch_normalization_23_cast_readvariableop_resource:	ђD
5batch_normalization_23_cast_1_readvariableop_resource:	ђM
5conv1d_35_conv1d_expanddims_1_readvariableop_resource:ђђ8
)conv1d_35_biasadd_readvariableop_resource:	ђ8
$lstm_14_read_readvariableop_resource:
ђђ9
&lstm_14_read_1_readvariableop_resource:	 ђ5
&lstm_14_read_2_readvariableop_resource:	ђ:
'dense_23_matmul_readvariableop_resource:	 ђ7
(dense_23_biasadd_readvariableop_resource:	ђ:
'dense_24_matmul_readvariableop_resource:	ђ6
(dense_24_biasadd_readvariableop_resource:
identityѕб&batch_normalization_22/AssignMovingAvgб5batch_normalization_22/AssignMovingAvg/ReadVariableOpб(batch_normalization_22/AssignMovingAvg_1б7batch_normalization_22/AssignMovingAvg_1/ReadVariableOpб*batch_normalization_22/Cast/ReadVariableOpб,batch_normalization_22/Cast_1/ReadVariableOpб&batch_normalization_23/AssignMovingAvgб5batch_normalization_23/AssignMovingAvg/ReadVariableOpб(batch_normalization_23/AssignMovingAvg_1б7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpб*batch_normalization_23/Cast/ReadVariableOpб,batch_normalization_23/Cast_1/ReadVariableOpб conv1d_33/BiasAdd/ReadVariableOpб,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpб conv1d_34/BiasAdd/ReadVariableOpб,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpб conv1d_35/BiasAdd/ReadVariableOpб,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpбdense_23/BiasAdd/ReadVariableOpбdense_23/MatMul/ReadVariableOpбdense_24/BiasAdd/ReadVariableOpбdense_24/MatMul/ReadVariableOpбlstm_14/Read/ReadVariableOpбlstm_14/Read_1/ReadVariableOpбlstm_14/Read_2/ReadVariableOpk
normalization_11/CastCastinputs*

DstT0*

SrcT0*,
_output_shapes
:         еЁ
normalization_11/subSubnormalization_11/Cast:y:0normalization_11_sub_y*
T0*,
_output_shapes
:         еc
normalization_11/SqrtSqrtnormalization_11_sqrt_x*
T0*"
_output_shapes
:_
normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3љ
normalization_11/MaximumMaximumnormalization_11/Sqrt:y:0#normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:њ
normalization_11/truedivRealDivnormalization_11/sub:z:0normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еr
lambda_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       t
lambda_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            t
lambda_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         д
lambda_11/strided_sliceStridedSlicenormalization_11/truediv:z:0&lambda_11/strided_slice/stack:output:0(lambda_11/strided_slice/stack_1:output:0(lambda_11/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskj
conv1d_33/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        »
conv1d_33/Conv1D/ExpandDims
ExpandDims lambda_11/strided_slice:output:0(conv1d_33/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         Д
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_33_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:ђ*
dtype0c
!conv1d_33/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ┐
conv1d_33/Conv1D/ExpandDims_1
ExpandDims4conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_33/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ђ╦
conv1d_33/Conv1DConv2D$conv1d_33/Conv1D/ExpandDims:output:0&conv1d_33/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ћ
conv1d_33/Conv1D/SqueezeSqueezeconv1d_33/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Є
 conv1d_33/BiasAdd/ReadVariableOpReadVariableOp)conv1d_33_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0а
conv1d_33/BiasAddBiasAdd!conv1d_33/Conv1D/Squeeze:output:0(conv1d_33/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђi
conv1d_33/ReluReluconv1d_33/BiasAdd:output:0*
T0*,
_output_shapes
:         ђa
max_pooling1d_20/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :г
max_pooling1d_20/ExpandDims
ExpandDimsconv1d_33/Relu:activations:0(max_pooling1d_20/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђи
max_pooling1d_20/MaxPoolMaxPool$max_pooling1d_20/ExpandDims:output:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
ћ
max_pooling1d_20/SqueezeSqueeze!max_pooling1d_20/MaxPool:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims
є
5batch_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ═
#batch_normalization_22/moments/meanMean!max_pooling1d_20/Squeeze:output:0>batch_normalization_22/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(Ќ
+batch_normalization_22/moments/StopGradientStopGradient,batch_normalization_22/moments/mean:output:0*
T0*#
_output_shapes
:ђН
0batch_normalization_22/moments/SquaredDifferenceSquaredDifference!max_pooling1d_20/Squeeze:output:04batch_normalization_22/moments/StopGradient:output:0*
T0*,
_output_shapes
:         ђі
9batch_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       У
'batch_normalization_22/moments/varianceMean4batch_normalization_22/moments/SquaredDifference:z:0Bbatch_normalization_22/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(Ю
&batch_normalization_22/moments/SqueezeSqueeze,batch_normalization_22/moments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Б
(batch_normalization_22/moments/Squeeze_1Squeeze0batch_normalization_22/moments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 q
,batch_normalization_22/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<▒
5batch_normalization_22/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_22_assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0К
*batch_normalization_22/AssignMovingAvg/subSub=batch_normalization_22/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_22/moments/Squeeze:output:0*
T0*
_output_shapes	
:ђЙ
*batch_normalization_22/AssignMovingAvg/mulMul.batch_normalization_22/AssignMovingAvg/sub:z:05batch_normalization_22/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђѕ
&batch_normalization_22/AssignMovingAvgAssignSubVariableOp>batch_normalization_22_assignmovingavg_readvariableop_resource.batch_normalization_22/AssignMovingAvg/mul:z:06^batch_normalization_22/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_22/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<х
7batch_normalization_22/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_22_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0═
,batch_normalization_22/AssignMovingAvg_1/subSub?batch_normalization_22/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_22/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ─
,batch_normalization_22/AssignMovingAvg_1/mulMul0batch_normalization_22/AssignMovingAvg_1/sub:z:07batch_normalization_22/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђљ
(batch_normalization_22/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_22_assignmovingavg_1_readvariableop_resource0batch_normalization_22/AssignMovingAvg_1/mul:z:08^batch_normalization_22/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0Џ
*batch_normalization_22/Cast/ReadVariableOpReadVariableOp3batch_normalization_22_cast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_22/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_22_cast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0k
&batch_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:и
$batch_normalization_22/batchnorm/addAddV21batch_normalization_22/moments/Squeeze_1:output:0/batch_normalization_22/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ
&batch_normalization_22/batchnorm/RsqrtRsqrt(batch_normalization_22/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ│
$batch_normalization_22/batchnorm/mulMul*batch_normalization_22/batchnorm/Rsqrt:y:04batch_normalization_22/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ▒
&batch_normalization_22/batchnorm/mul_1Mul!max_pooling1d_20/Squeeze:output:0(batch_normalization_22/batchnorm/mul:z:0*
T0*,
_output_shapes
:         ђ«
&batch_normalization_22/batchnorm/mul_2Mul/batch_normalization_22/moments/Squeeze:output:0(batch_normalization_22/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ▒
$batch_normalization_22/batchnorm/subSub2batch_normalization_22/Cast/ReadVariableOp:value:0*batch_normalization_22/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ╝
&batch_normalization_22/batchnorm/add_1AddV2*batch_normalization_22/batchnorm/mul_1:z:0(batch_normalization_22/batchnorm/sub:z:0*
T0*,
_output_shapes
:         ђj
conv1d_34/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ║
conv1d_34/Conv1D/ExpandDims
ExpandDims*batch_normalization_22/batchnorm/add_1:z:0(conv1d_34/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђе
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_34_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0c
!conv1d_34/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : └
conv1d_34/Conv1D/ExpandDims_1
ExpandDims4conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_34/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ╦
conv1d_34/Conv1DConv2D$conv1d_34/Conv1D/ExpandDims:output:0&conv1d_34/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ћ
conv1d_34/Conv1D/SqueezeSqueezeconv1d_34/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Є
 conv1d_34/BiasAdd/ReadVariableOpReadVariableOp)conv1d_34_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0а
conv1d_34/BiasAddBiasAdd!conv1d_34/Conv1D/Squeeze:output:0(conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђi
conv1d_34/ReluReluconv1d_34/BiasAdd:output:0*
T0*,
_output_shapes
:         ђa
max_pooling1d_21/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :г
max_pooling1d_21/ExpandDims
ExpandDimsconv1d_34/Relu:activations:0(max_pooling1d_21/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђи
max_pooling1d_21/MaxPoolMaxPool$max_pooling1d_21/ExpandDims:output:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
ћ
max_pooling1d_21/SqueezeSqueeze!max_pooling1d_21/MaxPool:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims
є
5batch_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ═
#batch_normalization_23/moments/meanMean!max_pooling1d_21/Squeeze:output:0>batch_normalization_23/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(Ќ
+batch_normalization_23/moments/StopGradientStopGradient,batch_normalization_23/moments/mean:output:0*
T0*#
_output_shapes
:ђН
0batch_normalization_23/moments/SquaredDifferenceSquaredDifference!max_pooling1d_21/Squeeze:output:04batch_normalization_23/moments/StopGradient:output:0*
T0*,
_output_shapes
:         ђі
9batch_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       У
'batch_normalization_23/moments/varianceMean4batch_normalization_23/moments/SquaredDifference:z:0Bbatch_normalization_23/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(Ю
&batch_normalization_23/moments/SqueezeSqueeze,batch_normalization_23/moments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Б
(batch_normalization_23/moments/Squeeze_1Squeeze0batch_normalization_23/moments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 q
,batch_normalization_23/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<▒
5batch_normalization_23/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_23_assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0К
*batch_normalization_23/AssignMovingAvg/subSub=batch_normalization_23/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_23/moments/Squeeze:output:0*
T0*
_output_shapes	
:ђЙ
*batch_normalization_23/AssignMovingAvg/mulMul.batch_normalization_23/AssignMovingAvg/sub:z:05batch_normalization_23/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђѕ
&batch_normalization_23/AssignMovingAvgAssignSubVariableOp>batch_normalization_23_assignmovingavg_readvariableop_resource.batch_normalization_23/AssignMovingAvg/mul:z:06^batch_normalization_23/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_23/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<х
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_23_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0═
,batch_normalization_23/AssignMovingAvg_1/subSub?batch_normalization_23/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_23/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ─
,batch_normalization_23/AssignMovingAvg_1/mulMul0batch_normalization_23/AssignMovingAvg_1/sub:z:07batch_normalization_23/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђљ
(batch_normalization_23/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_23_assignmovingavg_1_readvariableop_resource0batch_normalization_23/AssignMovingAvg_1/mul:z:08^batch_normalization_23/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0Џ
*batch_normalization_23/Cast/ReadVariableOpReadVariableOp3batch_normalization_23_cast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ъ
,batch_normalization_23/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_23_cast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0k
&batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:и
$batch_normalization_23/batchnorm/addAddV21batch_normalization_23/moments/Squeeze_1:output:0/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ
&batch_normalization_23/batchnorm/RsqrtRsqrt(batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ│
$batch_normalization_23/batchnorm/mulMul*batch_normalization_23/batchnorm/Rsqrt:y:04batch_normalization_23/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ▒
&batch_normalization_23/batchnorm/mul_1Mul!max_pooling1d_21/Squeeze:output:0(batch_normalization_23/batchnorm/mul:z:0*
T0*,
_output_shapes
:         ђ«
&batch_normalization_23/batchnorm/mul_2Mul/batch_normalization_23/moments/Squeeze:output:0(batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ▒
$batch_normalization_23/batchnorm/subSub2batch_normalization_23/Cast/ReadVariableOp:value:0*batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ╝
&batch_normalization_23/batchnorm/add_1AddV2*batch_normalization_23/batchnorm/mul_1:z:0(batch_normalization_23/batchnorm/sub:z:0*
T0*,
_output_shapes
:         ђj
conv1d_35/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ║
conv1d_35/Conv1D/ExpandDims
ExpandDims*batch_normalization_23/batchnorm/add_1:z:0(conv1d_35/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђе
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_35_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0c
!conv1d_35/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : └
conv1d_35/Conv1D/ExpandDims_1
ExpandDims4conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_35/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ╦
conv1d_35/Conv1DConv2D$conv1d_35/Conv1D/ExpandDims:output:0&conv1d_35/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ћ
conv1d_35/Conv1D/SqueezeSqueezeconv1d_35/Conv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        Є
 conv1d_35/BiasAdd/ReadVariableOpReadVariableOp)conv1d_35_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0а
conv1d_35/BiasAddBiasAdd!conv1d_35/Conv1D/Squeeze:output:0(conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђi
conv1d_35/ReluReluconv1d_35/BiasAdd:output:0*
T0*,
_output_shapes
:         ђj
reshape_22/ShapeShapeconv1d_35/Relu:activations:0*
T0*
_output_shapes
::ь¤h
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
         ]
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ђ╗
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Ћ
reshape_22/ReshapeReshapeconv1d_35/Relu:activations:0!reshape_22/Reshape/shape:output:0*
T0*,
_output_shapes
:         ђf
lstm_14/ShapeShapereshape_22/Reshape:output:0*
T0*
_output_shapes
::ь¤e
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : І
lstm_14/zeros/packedPacklstm_14/strided_slice:output:0lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_14/zerosFilllstm_14/zeros/packed:output:0lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:          Z
lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ј
lstm_14/zeros_1/packedPacklstm_14/strided_slice:output:0!lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_14/zeros_1Filllstm_14/zeros_1/packed:output:0lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:          ѓ
lstm_14/Read/ReadVariableOpReadVariableOp$lstm_14_read_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0l
lstm_14/IdentityIdentity#lstm_14/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђЁ
lstm_14/Read_1/ReadVariableOpReadVariableOp&lstm_14_read_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0o
lstm_14/Identity_1Identity%lstm_14/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђЂ
lstm_14/Read_2/ReadVariableOpReadVariableOp&lstm_14_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0k
lstm_14/Identity_2Identity%lstm_14/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђЭ
lstm_14/PartitionedCallPartitionedCallreshape_22/Reshape:output:0lstm_14/zeros:output:0lstm_14/zeros_1:output:0lstm_14/Identity:output:0lstm_14/Identity_1:output:0lstm_14/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7887772Є
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0ќ
dense_23/MatMulMatMul lstm_14/PartitionedCall:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЁ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0њ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ј
dropout_12/dropout/MulMuldense_23/BiasAdd:output:0!dropout_12/dropout/Const:output:0*
T0*(
_output_shapes
:         ђo
dropout_12/dropout/ShapeShapedense_23/BiasAdd:output:0*
T0*
_output_shapes
::ь¤Б
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?╚
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ_
dropout_12/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    └
dropout_12/dropout/SelectV2SelectV2#dropout_12/dropout/GreaterEqual:z:0dropout_12/dropout/Mul:z:0#dropout_12/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђЄ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0Ў
dense_24/MatMulMatMul$dropout_12/dropout/SelectV2:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
reshape_23/ShapeShapedense_24/BiasAdd:output:0*
T0*
_output_shapes
::ь¤h
reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
reshape_23/strided_sliceStridedSlicereshape_23/Shape:output:0'reshape_23/strided_slice/stack:output:0)reshape_23/strided_slice/stack_1:output:0)reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╗
reshape_23/Reshape/shapePack!reshape_23/strided_slice:output:0#reshape_23/Reshape/shape/1:output:0#reshape_23/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Љ
reshape_23/ReshapeReshapedense_24/BiasAdd:output:0!reshape_23/Reshape/shape:output:0*
T0*+
_output_shapes
:         n
IdentityIdentityreshape_23/Reshape:output:0^NoOp*
T0*+
_output_shapes
:         С
NoOpNoOp'^batch_normalization_22/AssignMovingAvg6^batch_normalization_22/AssignMovingAvg/ReadVariableOp)^batch_normalization_22/AssignMovingAvg_18^batch_normalization_22/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_22/Cast/ReadVariableOp-^batch_normalization_22/Cast_1/ReadVariableOp'^batch_normalization_23/AssignMovingAvg6^batch_normalization_23/AssignMovingAvg/ReadVariableOp)^batch_normalization_23/AssignMovingAvg_18^batch_normalization_23/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_23/Cast/ReadVariableOp-^batch_normalization_23/Cast_1/ReadVariableOp!^conv1d_33/BiasAdd/ReadVariableOp-^conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_34/BiasAdd/ReadVariableOp-^conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_35/BiasAdd/ReadVariableOp-^conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp^lstm_14/Read/ReadVariableOp^lstm_14/Read_1/ReadVariableOp^lstm_14/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_22/AssignMovingAvg/ReadVariableOp5batch_normalization_22/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_22/AssignMovingAvg_1/ReadVariableOp7batch_normalization_22/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_22/AssignMovingAvg_1(batch_normalization_22/AssignMovingAvg_12P
&batch_normalization_22/AssignMovingAvg&batch_normalization_22/AssignMovingAvg2X
*batch_normalization_22/Cast/ReadVariableOp*batch_normalization_22/Cast/ReadVariableOp2\
,batch_normalization_22/Cast_1/ReadVariableOp,batch_normalization_22/Cast_1/ReadVariableOp2n
5batch_normalization_23/AssignMovingAvg/ReadVariableOp5batch_normalization_23/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_23/AssignMovingAvg_1(batch_normalization_23/AssignMovingAvg_12P
&batch_normalization_23/AssignMovingAvg&batch_normalization_23/AssignMovingAvg2X
*batch_normalization_23/Cast/ReadVariableOp*batch_normalization_23/Cast/ReadVariableOp2\
,batch_normalization_23/Cast_1/ReadVariableOp,batch_normalization_23/Cast_1/ReadVariableOp2D
 conv1d_33/BiasAdd/ReadVariableOp conv1d_33/BiasAdd/ReadVariableOp2\
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_34/BiasAdd/ReadVariableOp conv1d_34/BiasAdd/ReadVariableOp2\
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_35/BiasAdd/ReadVariableOp conv1d_35/BiasAdd/ReadVariableOp2\
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2:
lstm_14/Read/ReadVariableOplstm_14/Read/ReadVariableOp2>
lstm_14/Read_1/ReadVariableOplstm_14/Read_1/ReadVariableOp2>
lstm_14/Read_2/ReadVariableOplstm_14/Read_2/ReadVariableOp:($
"
_output_shapes
::($
"
_output_shapes
::T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
┐*
л
while_body_7889470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ЃL
б
(__forward_gpu_lstm_with_fallback_7885732

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a930b16e-0e18-4793-b5b5-d08838e2a2d6*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7885557_7885733*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
УK
б
(__forward_gpu_lstm_with_fallback_7884657

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_6994f68d-4ffa-4458-b387-a9112ecbdac6*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7884482_7884658*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
р
Ъ
+__inference_conv1d_34_layer_call_fn_7888775

inputs
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7885828t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
┐*
л
while_body_7885950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ыл
а
 __inference__traced_save_7890963
file_prefix:
,read_disablecopyonread_normalization_11_mean:@
2read_1_disablecopyonread_normalization_11_variance:9
/read_2_disablecopyonread_normalization_11_count:	 @
)read_3_disablecopyonread_conv1d_33_kernel:ђ6
'read_4_disablecopyonread_conv1d_33_bias:	ђD
5read_5_disablecopyonread_batch_normalization_22_gamma:	ђC
4read_6_disablecopyonread_batch_normalization_22_beta:	ђJ
;read_7_disablecopyonread_batch_normalization_22_moving_mean:	ђN
?read_8_disablecopyonread_batch_normalization_22_moving_variance:	ђA
)read_9_disablecopyonread_conv1d_34_kernel:ђђ7
(read_10_disablecopyonread_conv1d_34_bias:	ђE
6read_11_disablecopyonread_batch_normalization_23_gamma:	ђD
5read_12_disablecopyonread_batch_normalization_23_beta:	ђK
<read_13_disablecopyonread_batch_normalization_23_moving_mean:	ђO
@read_14_disablecopyonread_batch_normalization_23_moving_variance:	ђB
*read_15_disablecopyonread_conv1d_35_kernel:ђђ7
(read_16_disablecopyonread_conv1d_35_bias:	ђ<
)read_17_disablecopyonread_dense_23_kernel:	 ђ6
'read_18_disablecopyonread_dense_23_bias:	ђ<
)read_19_disablecopyonread_dense_24_kernel:	ђ5
'read_20_disablecopyonread_dense_24_bias:I
5read_21_disablecopyonread_lstm_14_lstm_cell_20_kernel:
ђђR
?read_22_disablecopyonread_lstm_14_lstm_cell_20_recurrent_kernel:	 ђB
3read_23_disablecopyonread_lstm_14_lstm_cell_20_bias:	ђ+
!read_24_disablecopyonread_total_1: +
!read_25_disablecopyonread_count_1: )
read_26_disablecopyonread_total: )
read_27_disablecopyonread_count: 
savev2_const_2
identity_57ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ~
Read/DisableCopyOnReadDisableCopyOnRead,read_disablecopyonread_normalization_11_mean"/device:CPU:0*
_output_shapes
 ц
Read/ReadVariableOpReadVariableOp,read_disablecopyonread_normalization_11_mean^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:є
Read_1/DisableCopyOnReadDisableCopyOnRead2read_1_disablecopyonread_normalization_11_variance"/device:CPU:0*
_output_shapes
 «
Read_1/ReadVariableOpReadVariableOp2read_1_disablecopyonread_normalization_11_variance^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:Ѓ
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_normalization_11_count"/device:CPU:0*
_output_shapes
 Д
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_normalization_11_count^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: }
Read_3/DisableCopyOnReadDisableCopyOnRead)read_3_disablecopyonread_conv1d_33_kernel"/device:CPU:0*
_output_shapes
 «
Read_3/ReadVariableOpReadVariableOp)read_3_disablecopyonread_conv1d_33_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:ђ*
dtype0r

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:ђh

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*#
_output_shapes
:ђ{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_conv1d_33_bias"/device:CPU:0*
_output_shapes
 ц
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_conv1d_33_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђ`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЅ
Read_5/DisableCopyOnReadDisableCopyOnRead5read_5_disablecopyonread_batch_normalization_22_gamma"/device:CPU:0*
_output_shapes
 ▓
Read_5/ReadVariableOpReadVariableOp5read_5_disablecopyonread_batch_normalization_22_gamma^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђѕ
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_batch_normalization_22_beta"/device:CPU:0*
_output_shapes
 ▒
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_batch_normalization_22_beta^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЈ
Read_7/DisableCopyOnReadDisableCopyOnRead;read_7_disablecopyonread_batch_normalization_22_moving_mean"/device:CPU:0*
_output_shapes
 И
Read_7/ReadVariableOpReadVariableOp;read_7_disablecopyonread_batch_normalization_22_moving_mean^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЊ
Read_8/DisableCopyOnReadDisableCopyOnRead?read_8_disablecopyonread_batch_normalization_22_moving_variance"/device:CPU:0*
_output_shapes
 ╝
Read_8/ReadVariableOpReadVariableOp?read_8_disablecopyonread_batch_normalization_22_moving_variance^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ}
Read_9/DisableCopyOnReadDisableCopyOnRead)read_9_disablecopyonread_conv1d_34_kernel"/device:CPU:0*
_output_shapes
 »
Read_9/ReadVariableOpReadVariableOp)read_9_disablecopyonread_conv1d_34_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:ђђ*
dtype0t
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ђђk
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*$
_output_shapes
:ђђ}
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_conv1d_34_bias"/device:CPU:0*
_output_shapes
 Д
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_conv1d_34_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђІ
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_batch_normalization_23_gamma"/device:CPU:0*
_output_shapes
 х
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_batch_normalization_23_gamma^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђі
Read_12/DisableCopyOnReadDisableCopyOnRead5read_12_disablecopyonread_batch_normalization_23_beta"/device:CPU:0*
_output_shapes
 ┤
Read_12/ReadVariableOpReadVariableOp5read_12_disablecopyonread_batch_normalization_23_beta^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЉ
Read_13/DisableCopyOnReadDisableCopyOnRead<read_13_disablecopyonread_batch_normalization_23_moving_mean"/device:CPU:0*
_output_shapes
 ╗
Read_13/ReadVariableOpReadVariableOp<read_13_disablecopyonread_batch_normalization_23_moving_mean^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЋ
Read_14/DisableCopyOnReadDisableCopyOnRead@read_14_disablecopyonread_batch_normalization_23_moving_variance"/device:CPU:0*
_output_shapes
 ┐
Read_14/ReadVariableOpReadVariableOp@read_14_disablecopyonread_batch_normalization_23_moving_variance^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ
Read_15/DisableCopyOnReadDisableCopyOnRead*read_15_disablecopyonread_conv1d_35_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_15/ReadVariableOpReadVariableOp*read_15_disablecopyonread_conv1d_35_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:ђђ*
dtype0u
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ђђk
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*$
_output_shapes
:ђђ}
Read_16/DisableCopyOnReadDisableCopyOnRead(read_16_disablecopyonread_conv1d_35_bias"/device:CPU:0*
_output_shapes
 Д
Read_16/ReadVariableOpReadVariableOp(read_16_disablecopyonread_conv1d_35_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_17/DisableCopyOnReadDisableCopyOnRead)read_17_disablecopyonread_dense_23_kernel"/device:CPU:0*
_output_shapes
 г
Read_17/ReadVariableOpReadVariableOp)read_17_disablecopyonread_dense_23_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 ђ*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 ђf
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	 ђ|
Read_18/DisableCopyOnReadDisableCopyOnRead'read_18_disablecopyonread_dense_23_bias"/device:CPU:0*
_output_shapes
 д
Read_18/ReadVariableOpReadVariableOp'read_18_disablecopyonread_dense_23_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_19/DisableCopyOnReadDisableCopyOnRead)read_19_disablecopyonread_dense_24_kernel"/device:CPU:0*
_output_shapes
 г
Read_19/ReadVariableOpReadVariableOp)read_19_disablecopyonread_dense_24_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђf
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђ|
Read_20/DisableCopyOnReadDisableCopyOnRead'read_20_disablecopyonread_dense_24_bias"/device:CPU:0*
_output_shapes
 Ц
Read_20/ReadVariableOpReadVariableOp'read_20_disablecopyonread_dense_24_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:і
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_lstm_14_lstm_cell_20_kernel"/device:CPU:0*
_output_shapes
 ╣
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_lstm_14_lstm_cell_20_kernel^Read_21/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђћ
Read_22/DisableCopyOnReadDisableCopyOnRead?read_22_disablecopyonread_lstm_14_lstm_cell_20_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┬
Read_22/ReadVariableOpReadVariableOp?read_22_disablecopyonread_lstm_14_lstm_cell_20_recurrent_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 ђ*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 ђf
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	 ђѕ
Read_23/DisableCopyOnReadDisableCopyOnRead3read_23_disablecopyonread_lstm_14_lstm_cell_20_bias"/device:CPU:0*
_output_shapes
 ▓
Read_23/ReadVariableOpReadVariableOp3read_23_disablecopyonread_lstm_14_lstm_cell_20_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђv
Read_24/DisableCopyOnReadDisableCopyOnRead!read_24_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_24/ReadVariableOpReadVariableOp!read_24_disablecopyonread_total_1^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_25/DisableCopyOnReadDisableCopyOnRead!read_25_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_25/ReadVariableOpReadVariableOp!read_25_disablecopyonread_count_1^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_26/DisableCopyOnReadDisableCopyOnReadread_26_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_26/ReadVariableOpReadVariableOpread_26_disablecopyonread_total^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_count^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: ђ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Е
valueЪBюB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHД
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┘
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: Ј
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_57Identity_57:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
УK
б
(__forward_gpu_lstm_with_fallback_7886860

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_8fd9b231-f28f-46d8-bd6c-1ae7de3b004c*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7886685_7886861*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘
ў
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7888791

inputsC
+conv1d_expanddims_1_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ѓ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђћ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : б
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђГ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ђf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:         ђё
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
─
┴
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889829
inputs_00
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђх
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7889556i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
у

c
G__inference_reshape_23_layer_call_and_return_conditional_losses_7890770

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Ј
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         \
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
§
В
/__inference_sequential_11_layer_call_fn_7887009
normalization_11_input
unknown
	unknown_0 
	unknown_1:ђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ!
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:	ђ

unknown_12:	ђ"

unknown_13:ђђ

unknown_14:	ђ

unknown_15:
ђђ

unknown_16:	 ђ

unknown_17:	ђ

unknown_18:	 ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:
identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallnormalization_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886960s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::d `
,
_output_shapes
:         е
0
_user_specified_namenormalization_11_input
ЧH
║

J__inference_sequential_11_layer_call_and_return_conditional_losses_7886889
normalization_11_input
normalization_11_sub_y
normalization_11_sqrt_x(
conv1d_33_7886399:ђ 
conv1d_33_7886401:	ђ-
batch_normalization_22_7886405:	ђ-
batch_normalization_22_7886407:	ђ-
batch_normalization_22_7886409:	ђ-
batch_normalization_22_7886411:	ђ)
conv1d_34_7886414:ђђ 
conv1d_34_7886416:	ђ-
batch_normalization_23_7886420:	ђ-
batch_normalization_23_7886422:	ђ-
batch_normalization_23_7886424:	ђ-
batch_normalization_23_7886426:	ђ)
conv1d_35_7886429:ђђ 
conv1d_35_7886431:	ђ#
lstm_14_7886864:
ђђ"
lstm_14_7886866:	 ђ
lstm_14_7886868:	ђ#
dense_23_7886871:	 ђ
dense_23_7886873:	ђ#
dense_24_7886882:	ђ
dense_24_7886884:
identityѕб.batch_normalization_22/StatefulPartitionedCallб.batch_normalization_23/StatefulPartitionedCallб!conv1d_33/StatefulPartitionedCallб!conv1d_34/StatefulPartitionedCallб!conv1d_35/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallбlstm_14/StatefulPartitionedCall{
normalization_11/CastCastnormalization_11_input*

DstT0*

SrcT0*,
_output_shapes
:         еЁ
normalization_11/subSubnormalization_11/Cast:y:0normalization_11_sub_y*
T0*,
_output_shapes
:         еc
normalization_11/SqrtSqrtnormalization_11_sqrt_x*
T0*"
_output_shapes
:_
normalization_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3љ
normalization_11/MaximumMaximumnormalization_11/Sqrt:y:0#normalization_11/Maximum/y:output:0*
T0*"
_output_shapes
:њ
normalization_11/truedivRealDivnormalization_11/sub:z:0normalization_11/Maximum:z:0*
T0*,
_output_shapes
:         еН
lambda_11/PartitionedCallPartitionedCallnormalization_11/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lambda_11_layer_call_and_return_conditional_losses_7886397ў
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0conv1d_33_7886399conv1d_33_7886401*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7885796Ы
 max_pooling1d_20/PartitionedCallPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7884691Ќ
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_20/PartitionedCall:output:0batch_normalization_22_7886405batch_normalization_22_7886407batch_normalization_22_7886409batch_normalization_22_7886411*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884752Г
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_34_7886414conv1d_34_7886416*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7885828Ы
 max_pooling1d_21/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7884788Ќ
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_21/PartitionedCall:output:0batch_normalization_23_7886420batch_normalization_23_7886422batch_normalization_23_7886424batch_normalization_23_7886426*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884849Г
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv1d_35_7886429conv1d_35_7886431*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7885860Т
reshape_22/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_22_layer_call_and_return_conditional_losses_7885879Ъ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0lstm_14_7886864lstm_14_7886866lstm_14_7886868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886863ќ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_23_7886871dense_23_7886873*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_7886327р
dropout_12/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886880љ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_24_7886882dense_24_7886884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_7886357С
reshape_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_23_layer_call_and_return_conditional_losses_7886376v
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         Ч
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::d `
,
_output_shapes
:         е
0
_user_specified_namenormalization_11_input
я
e
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886880

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╠	
э
E__inference_dense_24_layer_call_and_return_conditional_losses_7890752

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Э	
к
while_cond_7889469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7889469___redundant_placeholder05
1while_while_cond_7889469___redundant_placeholder15
1while_while_cond_7889469___redundant_placeholder25
1while_while_cond_7889469___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╝;
┴
!__inference_standard_lstm_7889985

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7889899*
condR
while_cond_7889898*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a0156a78-941b-4661-8188-a9340c249ad1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
ЃL
б
(__forward_gpu_lstm_with_fallback_7889826

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_05263f8f-1aa2-4ecc-bf9b-65f0e617850f*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7889651_7889827*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
Э	
к
while_cond_7890327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7890327___redundant_placeholder05
1while_while_cond_7890327___redundant_placeholder15
1while_while_cond_7890327___redundant_placeholder25
1while_while_cond_7890327___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Э	
к
while_cond_7885375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7885375___redundant_placeholder05
1while_while_cond_7885375___redundant_placeholder15
1while_while_cond_7885375___redundant_placeholder25
1while_while_cond_7885375___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Э	
к
while_cond_7884946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7884946___redundant_placeholder05
1while_while_cond_7884946___redundant_placeholder15
1while_while_cond_7884946___redundant_placeholder25
1while_while_cond_7884946___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7887867_7888043
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_34d6ccb5-ffaa-40bb-916d-9eaefbce84eb*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7888042*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
Ф
H
,__inference_reshape_23_layer_call_fn_7890757

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_reshape_23_layer_call_and_return_conditional_losses_7886376d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╝%
п
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888746

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбCast/ReadVariableOpбCast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ё
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђЋ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:                  ђs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Б
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђг
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѕ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђя
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
З
і
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884849

inputs+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ-
cast_2_readvariableop_resource:	ђ-
cast_3_readvariableop_resource:	ђ
identityѕбCast/ReadVariableOpбCast_1/ReadVariableOpбCast_2/ReadVariableOpбCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђц
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
Э	
к
while_cond_7889898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7889898___redundant_placeholder05
1while_while_cond_7889898___redundant_placeholder15
1while_while_cond_7889898___redundant_placeholder25
1while_while_cond_7889898___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
щ
e
,__inference_dropout_12_layer_call_fn_7890711

inputs
identityѕбStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886345p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Э	
к
while_cond_7884300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7884300___redundant_placeholder05
1while_while_cond_7884300___redundant_placeholder15
1while_while_cond_7884300___redundant_placeholder25
1while_while_cond_7884300___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┐*
л
while_body_7886504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Л
▄
/__inference_sequential_11_layer_call_fn_7887491

inputs
unknown
	unknown_0 
	unknown_1:ђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ!
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:	ђ

unknown_12:	ђ"

unknown_13:ђђ

unknown_14:	ђ

unknown_15:
ђђ

unknown_16:	 ђ

unknown_17:	ђ

unknown_18:	 ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:
identityѕбStatefulPartitionedCall■
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_11_layer_call_and_return_conditional_losses_7887079s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
┴
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_7886397

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         У
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         е:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
у

c
G__inference_reshape_23_layer_call_and_return_conditional_losses_7886376

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Ј
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         \
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╠	
э
E__inference_dense_24_layer_call_and_return_conditional_losses_7886357

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
лy
Щ
#__inference__traced_restore_7891057
file_prefix4
&assignvariableop_normalization_11_mean::
,assignvariableop_1_normalization_11_variance:3
)assignvariableop_2_normalization_11_count:	 :
#assignvariableop_3_conv1d_33_kernel:ђ0
!assignvariableop_4_conv1d_33_bias:	ђ>
/assignvariableop_5_batch_normalization_22_gamma:	ђ=
.assignvariableop_6_batch_normalization_22_beta:	ђD
5assignvariableop_7_batch_normalization_22_moving_mean:	ђH
9assignvariableop_8_batch_normalization_22_moving_variance:	ђ;
#assignvariableop_9_conv1d_34_kernel:ђђ1
"assignvariableop_10_conv1d_34_bias:	ђ?
0assignvariableop_11_batch_normalization_23_gamma:	ђ>
/assignvariableop_12_batch_normalization_23_beta:	ђE
6assignvariableop_13_batch_normalization_23_moving_mean:	ђI
:assignvariableop_14_batch_normalization_23_moving_variance:	ђ<
$assignvariableop_15_conv1d_35_kernel:ђђ1
"assignvariableop_16_conv1d_35_bias:	ђ6
#assignvariableop_17_dense_23_kernel:	 ђ0
!assignvariableop_18_dense_23_bias:	ђ6
#assignvariableop_19_dense_24_kernel:	ђ/
!assignvariableop_20_dense_24_bias:C
/assignvariableop_21_lstm_14_lstm_cell_20_kernel:
ђђL
9assignvariableop_22_lstm_14_lstm_cell_20_recurrent_kernel:	 ђ<
-assignvariableop_23_lstm_14_lstm_cell_20_bias:	ђ%
assignvariableop_24_total_1: %
assignvariableop_25_count_1: #
assignvariableop_26_total: #
assignvariableop_27_count: 
identity_29ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ѓ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Е
valueЪBюB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHф
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ░
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ѕ
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOpAssignVariableOp&assignvariableop_normalization_11_meanIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_1AssignVariableOp,assignvariableop_1_normalization_11_varianceIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:└
AssignVariableOp_2AssignVariableOp)assignvariableop_2_normalization_11_countIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv1d_33_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_4AssignVariableOp!assignvariableop_4_conv1d_33_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_5AssignVariableOp/assignvariableop_5_batch_normalization_22_gammaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_22_betaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_7AssignVariableOp5assignvariableop_7_batch_normalization_22_moving_meanIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_8AssignVariableOp9assignvariableop_8_batch_normalization_22_moving_varianceIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv1d_34_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv1d_34_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_23_gammaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_23_betaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_23_moving_meanIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_23_moving_varianceIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv1d_35_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv1d_35_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_23_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense_23_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_24_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_20AssignVariableOp!assignvariableop_20_dense_24_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_21AssignVariableOp/assignvariableop_21_lstm_14_lstm_cell_20_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_22AssignVariableOp9assignvariableop_22_lstm_14_lstm_cell_20_recurrent_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_23AssignVariableOp-assignvariableop_23_lstm_14_lstm_cell_20_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 и
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Т
О
8__inference_batch_normalization_22_layer_call_fn_7888699

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884732}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
╝%
п
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7884829

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбCast/ReadVariableOpбCast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ё
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђЋ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:                  ђs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Б
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Ѓ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђг
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Є
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѕ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђя
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
­┬
у
=__inference___backward_gpu_lstm_with_fallback_7885128_7885304
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                   *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*k
_output_shapesY
W:                  ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ѕ
_input_shapesэ
З:          :          :          :          : :          :          :          :                   ::                  ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_a7d075c5-f9f4-4351-9e9d-ee5932f54725*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7885303*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :;
7
5
_output_shapes#
!:                  ђ:	

_output_shapes
:::6
4
_output_shapes"
 :                   :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
╚
Ў
*__inference_dense_23_layer_call_fn_7890696

inputs
unknown:	 ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_7886327p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Д
H
,__inference_dropout_12_layer_call_fn_7890716

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_7886880a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7888422_7888598
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_62564cc1-7be5-4b9d-b3a1-f254179136f8*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7888597*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7886131_7886307
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_bd9c85d7-2599-49ab-a6d7-1da46baf3153*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7886306*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
╝;
┴
!__inference_standard_lstm_7890414

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7890328*
condR
while_cond_7890327*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_c7570a12-02a4-458a-96d8-9a1cf16e1fa0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
О;
┴
!__inference_standard_lstm_7889127

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7889041*
condR
while_cond_7889040*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_633c4b20-2224-4ded-8d02-9fbd42383b4d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
▓@
═
*__inference_gpu_lstm_with_fallback_7886130

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_bd9c85d7-2599-49ab-a6d7-1da46baf3153*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘
ў
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7885860

inputsC
+conv1d_expanddims_1_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        ѓ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ђћ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : б
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђГ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ђ
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         ђ*
squeeze_dims

§        s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ѓ
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ђU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ђf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:         ђё
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
┐*
л
while_body_7890328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Э	
к
while_cond_7889040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7889040___redundant_placeholder05
1while_while_cond_7889040___redundant_placeholder15
1while_while_cond_7889040___redundant_placeholder25
1while_while_cond_7889040___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ђ
В
/__inference_sequential_11_layer_call_fn_7887128
normalization_11_input
unknown
	unknown_0 
	unknown_1:ђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ!
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:	ђ

unknown_12:	ђ"

unknown_13:ђђ

unknown_14:	ђ

unknown_15:
ђђ

unknown_16:	 ђ

unknown_17:	ђ

unknown_18:	 ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:
identityѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallnormalization_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_11_layer_call_and_return_conditional_losses_7887079s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::d `
,
_output_shapes
:         е
0
_user_specified_namenormalization_11_input
▓@
═
*__inference_gpu_lstm_with_fallback_7890079

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a0156a78-941b-4661-8188-a9340c249ad1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7884482_7884658
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_6994f68d-4ffa-4458-b387-a9112ecbdac6*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7884657*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
я
e
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890733

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ч
и
)__inference_lstm_14_layer_call_fn_7888971

inputs
unknown:
ђђ
	unknown_0:	 ђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886863o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
¤
Р
%__inference_signature_wrapper_7887389
normalization_11_input
unknown
	unknown_0 
	unknown_1:ђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ!
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:	ђ

unknown_12:	ђ"

unknown_13:ђђ

unknown_14:	ђ

unknown_15:
ђђ

unknown_16:	 ђ

unknown_17:	ђ

unknown_18:	 ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallnormalization_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_7884682s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:         е::: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_output_shapes
::($
"
_output_shapes
::d `
,
_output_shapes
:         е
0
_user_specified_namenormalization_11_input
Э	
к
while_cond_7886503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_7886503___redundant_placeholder05
1while_while_cond_7886503___redundant_placeholder15
1while_while_cond_7886503___redundant_placeholder25
1while_while_cond_7886503___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : :::::


_output_shapes
::	

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
я
ъ
+__inference_conv1d_33_layer_call_fn_7888657

inputs
unknown:ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7885796t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┐*
л
while_body_7884947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
│
G
+__inference_lambda_11_layer_call_fn_7888627

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lambda_11_layer_call_and_return_conditional_losses_7885778d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         е:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
ЃL
б
(__forward_gpu_lstm_with_fallback_7885303

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                   :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "'
concat_1_axisconcat_1/axis:output:0"
concat_1concat_1_0:output:0"#
concat_axisconcat/axis:output:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"
cudnnrnnCudnnRNN:output_h:0"%
expanddims_1ExpandDims_1:output:0"!

expanddimsExpandDims:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0"
	transposetranspose_0:y:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a7d075c5-f9f4-4351-9e9d-ee5932f54725*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_7885128_7885304*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
О;
┴
!__inference_standard_lstm_7885462

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7885376*
condR
while_cond_7885375*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:                  ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_a930b16e-0e18-4793-b5b5-d08838e2a2d6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
ф
┐
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890258

inputs0
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7889985i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
У
О
8__inference_batch_normalization_22_layer_call_fn_7888712

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *\
fWRU
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7884752}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
§

c
G__inference_reshape_22_layer_call_and_return_conditional_losses_7885879

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
         R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ђЈ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         ђ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓@
═
*__inference_gpu_lstm_with_fallback_7887866

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	ђ :	ђ :	ђ :	ђ *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_splitY

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	 ђY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	 ђ[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђ@a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:ђa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  [
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:ђ[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: [
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: \

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: \

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: \

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: \

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: \

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: \

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђб╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:          :          :          :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:          *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:          *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:          c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:          Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:          \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_34d6ccb5-ffaa-40bb-916d-9eaefbce84eb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
б

f
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890728

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
┐*
л
while_body_7885376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:          b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:          l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:          g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:          f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:          b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:          W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:          k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:          r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:          _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:          "*
while_biasadd_biaswhile_biasadd_bias_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ:!


_output_shapes	
:ђ:%	!

_output_shapes
:	 ђ:&"
 
_output_shapes
:
ђђ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ф
┐
D__inference_lstm_14_layer_call_and_return_conditional_losses_7886863

inputs0
read_readvariableop_resource:
ђђ1
read_1_readvariableop_resource:	 ђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 ђ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ђq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ│
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:          :          :          :          : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_standard_lstm_7886590i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ђ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs
ћ
╣
)__inference_lstm_14_layer_call_fn_7888938
inputs_0
unknown:
ђђ
	unknown_0:	 ђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_7885306o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
З
і
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888766

inputs+
cast_readvariableop_resource:	ђ-
cast_1_readvariableop_resource:	ђ-
cast_2_readvariableop_resource:	ђ-
cast_3_readvariableop_resource:	ђ
identityѕбCast/ReadVariableOpбCast_1/ReadVariableOpбCast_2/ReadVariableOpбCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђq
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђђ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:                  ђц
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
е┬
у
=__inference___backward_gpu_lstm_with_fallback_7890080_7890256
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:          d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:          `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:          `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:          O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:          
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:          Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:          ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:          І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ў
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:          *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*b
_output_shapesP
N:         ђ:          :          :ђбќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         ђЃ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:          Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:          ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђ@j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђ@­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: №
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	 ђo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	ђ ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
ђђх
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 ђ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђо
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         ђt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:          v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:          g

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
ђђh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 ђd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*э
_input_shapesт
Р:          :          :          :          : :          :          :          :          ::         ђ:          :          :ђб::          :          : ::::::::: : : : *=
api_implements+)lstm_a0156a78-941b-4661-8188-a9340c249ad1*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_7890255*
go_backwards( *

time_major( :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          : 

_output_shapes
::"

_output_shapes

:ђб:1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :2
.
,
_output_shapes
:         ђ:	

_output_shapes
::1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :1-
+
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :1-
+
_output_shapes
:          :- )
'
_output_shapes
:          
┴
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888648

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ч       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         У
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         е:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╝;
┴
!__inference_standard_lstm_7888327

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ђP
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:          N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:          Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*d
_output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7888241*
condR
while_cond_7888240*c
output_shapesR
P: : : : :          :          : : :
ђђ:	 ђ:ђ*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:          ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:          X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:          X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:          I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:         ђ:          :          :
ђђ:	 ђ:ђ*=
api_implements+)lstm_62564cc1-7be5-4b9d-b3a1-f254179136f8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :A=

_output_shapes	
:ђ

_user_specified_namebias:QM

_output_shapes
:	 ђ
*
_user_specified_namerecurrent_kernel:HD
 
_output_shapes
:
ђђ
 
_user_specified_namekernel:OK
'
_output_shapes
:          
 
_user_specified_nameinit_c:OK
'
_output_shapes
:          
 
_user_specified_nameinit_h:T P
,
_output_shapes
:         ђ
 
_user_specified_nameinputs"з
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*н
serving_default└
^
normalization_11_inputD
(serving_default_normalization_11_input:0         еB

reshape_234
StatefulPartitionedCall:0         tensorflow/serving/predict:яѕ
Ѕ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Й
	keras_api

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count"
_tf_keras_layer
Ц
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
П
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias
 ._jit_compiled_convolution_op"
_tf_keras_layer
Ц
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Ж
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;axis
	<gamma
=beta
>moving_mean
?moving_variance"
_tf_keras_layer
П
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op"
_tf_keras_layer
Ц
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
Ж
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance"
_tf_keras_layer
П
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op"
_tf_keras_layer
Ц
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
┌
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
o_random_generator
pcell
q
state_spec"
_tf_keras_rnn_layer
╗
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias"
_tf_keras_layer
й
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
ђ_random_generator"
_tf_keras_layer
├
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
ё	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses
Єkernel
	ѕbias"
_tf_keras_layer
Ф
Ѕ	variables
іtrainable_variables
Іregularization_losses
ї	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
█
0
1
2
,3
-4
<5
=6
>7
?8
F9
G10
V11
W12
X13
Y14
`15
a16
Ј17
љ18
Љ19
x20
y21
Є22
ѕ23"
trackable_list_wrapper
Б
,0
-1
<2
=3
F4
G5
V6
W7
`8
a9
Ј10
љ11
Љ12
x13
y14
Є15
ѕ16"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
њnon_trainable_variables
Њlayers
ћmetrics
 Ћlayer_regularization_losses
ќlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
№
Ќtrace_0
ўtrace_1
Ўtrace_2
џtrace_32Ч
/__inference_sequential_11_layer_call_fn_7887009
/__inference_sequential_11_layer_call_fn_7887128
/__inference_sequential_11_layer_call_fn_7887440
/__inference_sequential_11_layer_call_fn_7887491х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЌtrace_0zўtrace_1zЎtrace_2zџtrace_3
█
Џtrace_0
юtrace_1
Юtrace_2
ъtrace_32У
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886379
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886889
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888074
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888622х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЏtrace_0zюtrace_1zЮtrace_2zъtrace_3
ю
Ъ	capture_0
а	capture_1B┘
"__inference__wrapped_model_7884682normalization_11_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
-
Аserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_11/mean
%:#2normalization_11/variance
:	 2normalization_11/count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
бnon_trainable_variables
Бlayers
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
═
Дtrace_0
еtrace_12њ
+__inference_lambda_11_layer_call_fn_7888627
+__inference_lambda_11_layer_call_fn_7888632х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zДtrace_0zеtrace_1
Ѓ
Еtrace_0
фtrace_12╚
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888640
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888648х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЕtrace_0zфtrace_1
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
у
░trace_02╚
+__inference_conv1d_33_layer_call_fn_7888657ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z░trace_0
ѓ
▒trace_02с
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7888673ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0
':%ђ2conv1d_33/kernel
:ђ2conv1d_33/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
Ь
иtrace_02¤
2__inference_max_pooling1d_20_layer_call_fn_7888678ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zиtrace_0
Ѕ
Иtrace_02Ж
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7888686ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zИtrace_0
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
у
Йtrace_0
┐trace_12г
8__inference_batch_normalization_22_layer_call_fn_7888699
8__inference_batch_normalization_22_layer_call_fn_7888712х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЙtrace_0z┐trace_1
Ю
└trace_0
┴trace_12Р
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888746
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888766х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z└trace_0z┴trace_1
 "
trackable_list_wrapper
+:)ђ2batch_normalization_22/gamma
*:(ђ2batch_normalization_22/beta
3:1ђ (2"batch_normalization_22/moving_mean
7:5ђ (2&batch_normalization_22/moving_variance
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
кlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
у
Кtrace_02╚
+__inference_conv1d_34_layer_call_fn_7888775ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zКtrace_0
ѓ
╚trace_02с
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7888791ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╚trace_0
(:&ђђ2conv1d_34/kernel
:ђ2conv1d_34/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Ь
╬trace_02¤
2__inference_max_pooling1d_21_layer_call_fn_7888796ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╬trace_0
Ѕ
¤trace_02Ж
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7888804ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z¤trace_0
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
у
Нtrace_0
оtrace_12г
8__inference_batch_normalization_23_layer_call_fn_7888817
8__inference_batch_normalization_23_layer_call_fn_7888830х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zНtrace_0zоtrace_1
Ю
Оtrace_0
пtrace_12Р
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888864
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888884х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zОtrace_0zпtrace_1
 "
trackable_list_wrapper
+:)ђ2batch_normalization_23/gamma
*:(ђ2batch_normalization_23/beta
3:1ђ (2"batch_normalization_23/moving_mean
7:5ђ (2&batch_normalization_23/moving_variance
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
Пlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
у
яtrace_02╚
+__inference_conv1d_35_layer_call_fn_7888893ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zяtrace_0
ѓ
▀trace_02с
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7888909ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▀trace_0
(:&ђђ2conv1d_35/kernel
:ђ2conv1d_35/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
рlayers
Рmetrics
 сlayer_regularization_losses
Сlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
У
тtrace_02╔
,__inference_reshape_22_layer_call_fn_7888914ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zтtrace_0
Ѓ
Тtrace_02С
G__inference_reshape_22_layer_call_and_return_conditional_losses_7888927ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zТtrace_0
8
Ј0
љ1
Љ2"
trackable_list_wrapper
8
Ј0
љ1
Љ2"
trackable_list_wrapper
 "
trackable_list_wrapper
┐
уstates
Уnon_trainable_variables
жlayers
Жmetrics
 вlayer_regularization_losses
Вlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
В
ьtrace_0
Ьtrace_1
№trace_2
­trace_32щ
)__inference_lstm_14_layer_call_fn_7888938
)__inference_lstm_14_layer_call_fn_7888949
)__inference_lstm_14_layer_call_fn_7888960
)__inference_lstm_14_layer_call_fn_7888971╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zьtrace_0zЬtrace_1z№trace_2z­trace_3
п
ыtrace_0
Ыtrace_1
зtrace_2
Зtrace_32т
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889400
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889829
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890258
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890687╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zыtrace_0zЫtrace_1zзtrace_2zЗtrace_3
"
_generic_user_object
Ѓ
ш	variables
Шtrainable_variables
эregularization_losses
Э	keras_api
щ__call__
+Щ&call_and_return_all_conditional_losses
ч_random_generator
Ч
state_size
Јkernel
љrecurrent_kernel
	Љbias"
_tf_keras_layer
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
Т
ѓtrace_02К
*__inference_dense_23_layer_call_fn_7890696ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0
Ђ
Ѓtrace_02Р
E__inference_dense_23_layer_call_and_return_conditional_losses_7890706ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЃtrace_0
": 	 ђ2dense_23/kernel
:ђ2dense_23/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
├
Ѕtrace_0
іtrace_12ѕ
,__inference_dropout_12_layer_call_fn_7890711
,__inference_dropout_12_layer_call_fn_7890716Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЅtrace_0zіtrace_1
щ
Іtrace_0
їtrace_12Й
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890728
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890733Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zІtrace_0zїtrace_1
"
_generic_user_object
0
Є0
ѕ1"
trackable_list_wrapper
0
Є0
ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Їnon_trainable_variables
јlayers
Јmetrics
 љlayer_regularization_losses
Љlayer_metrics
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
Т
њtrace_02К
*__inference_dense_24_layer_call_fn_7890742ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zњtrace_0
Ђ
Њtrace_02Р
E__inference_dense_24_layer_call_and_return_conditional_losses_7890752ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЊtrace_0
": 	ђ2dense_24/kernel
:2dense_24/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
Ѕ	variables
іtrainable_variables
Іregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
У
Ўtrace_02╔
,__inference_reshape_23_layer_call_fn_7890757ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЎtrace_0
Ѓ
џtrace_02С
G__inference_reshape_23_layer_call_and_return_conditional_losses_7890770ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zџtrace_0
/:-
ђђ2lstm_14/lstm_cell_20/kernel
8:6	 ђ2%lstm_14/lstm_cell_20/recurrent_kernel
(:&ђ2lstm_14/lstm_cell_20/bias
Q
0
1
2
>3
?4
X5
Y6"
trackable_list_wrapper
ј
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
14"
trackable_list_wrapper
0
Џ0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
к
Ъ	capture_0
а	capture_1BЃ
/__inference_sequential_11_layer_call_fn_7887009normalization_11_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
к
Ъ	capture_0
а	capture_1BЃ
/__inference_sequential_11_layer_call_fn_7887128normalization_11_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
Х
Ъ	capture_0
а	capture_1Bз
/__inference_sequential_11_layer_call_fn_7887440inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
Х
Ъ	capture_0
а	capture_1Bз
/__inference_sequential_11_layer_call_fn_7887491inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
р
Ъ	capture_0
а	capture_1Bъ
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886379normalization_11_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
р
Ъ	capture_0
а	capture_1Bъ
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886889normalization_11_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
Л
Ъ	capture_0
а	capture_1Bј
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888074inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
Л
Ъ	capture_0
а	capture_1Bј
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888622inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
Џ
Ъ	capture_0
а	capture_1Bп
%__inference_signature_wrapper_7887389normalization_11_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪ	capture_0zа	capture_1
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
ЫB№
+__inference_lambda_11_layer_call_fn_7888627inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
+__inference_lambda_11_layer_call_fn_7888632inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЇBі
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888640inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЇBі
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888648inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
НBм
+__inference_conv1d_33_layer_call_fn_7888657inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7888673inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
▄B┘
2__inference_max_pooling1d_20_layer_call_fn_7888678inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7888686inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 BЧ
8__inference_batch_normalization_22_layer_call_fn_7888699inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
8__inference_batch_normalization_22_layer_call_fn_7888712inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888746inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888766inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
НBм
+__inference_conv1d_34_layer_call_fn_7888775inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7888791inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
▄B┘
2__inference_max_pooling1d_21_layer_call_fn_7888796inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7888804inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 BЧ
8__inference_batch_normalization_23_layer_call_fn_7888817inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
8__inference_batch_normalization_23_layer_call_fn_7888830inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888864inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888884inputs"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
НBм
+__inference_conv1d_35_layer_call_fn_7888893inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7888909inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
оBМ
,__inference_reshape_22_layer_call_fn_7888914inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_reshape_22_layer_call_and_return_conditional_losses_7888927inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
p0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBё
)__inference_lstm_14_layer_call_fn_7888938inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
)__inference_lstm_14_layer_call_fn_7888949inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
)__inference_lstm_14_layer_call_fn_7888960inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
)__inference_lstm_14_layer_call_fn_7888971inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889400inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889829inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890258inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890687inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
8
Ј0
љ1
Љ2"
trackable_list_wrapper
8
Ј0
љ1
Љ2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Юnon_trainable_variables
ъlayers
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
ш	variables
Шtrainable_variables
эregularization_losses
щ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
╣2Х│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╣2Х│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
"
_generic_user_object
 "
trackable_list_wrapper
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
нBЛ
*__inference_dense_23_layer_call_fn_7890696inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_dense_23_layer_call_and_return_conditional_losses_7890706inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
уBС
,__inference_dropout_12_layer_call_fn_7890711inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
уBС
,__inference_dropout_12_layer_call_fn_7890716inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ѓB 
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890728inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ѓB 
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890733inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
нBЛ
*__inference_dense_24_layer_call_fn_7890742inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_dense_24_layer_call_and_return_conditional_losses_7890752inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
оBМ
,__inference_reshape_23_layer_call_fn_7890757inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_reshape_23_layer_call_and_return_conditional_losses_7890770inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
б	variables
Б	keras_api

цtotal

Цcount"
_tf_keras_metric
c
д	variables
Д	keras_api

еtotal

Еcount
ф
_fn_kwargs"
_tf_keras_metric
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
0
ц0
Ц1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
:  (2total
:  (2count
0
е0
Е1"
trackable_list_wrapper
.
д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╩
"__inference__wrapped_model_7884682БЪа,->?=<FGXYWV`aЈљЉxyЄѕDбA
:б7
5і2
normalization_11_input         е
ф ";ф8
6

reshape_23(і%

reshape_23         р
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888746Ѕ>?=<EбB
;б8
.і+
inputs                  ђ
p

 
ф ":б7
0і-
tensor_0                  ђ
џ р
S__inference_batch_normalization_22_layer_call_and_return_conditional_losses_7888766Ѕ>?=<EбB
;б8
.і+
inputs                  ђ
p 

 
ф ":б7
0і-
tensor_0                  ђ
џ ║
8__inference_batch_normalization_22_layer_call_fn_7888699~>?=<EбB
;б8
.і+
inputs                  ђ
p

 
ф "/і,
unknown                  ђ║
8__inference_batch_normalization_22_layer_call_fn_7888712~>?=<EбB
;б8
.і+
inputs                  ђ
p 

 
ф "/і,
unknown                  ђр
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888864ЅXYWVEбB
;б8
.і+
inputs                  ђ
p

 
ф ":б7
0і-
tensor_0                  ђ
џ р
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_7888884ЅXYWVEбB
;б8
.і+
inputs                  ђ
p 

 
ф ":б7
0і-
tensor_0                  ђ
џ ║
8__inference_batch_normalization_23_layer_call_fn_7888817~XYWVEбB
;б8
.і+
inputs                  ђ
p

 
ф "/і,
unknown                  ђ║
8__inference_batch_normalization_23_layer_call_fn_7888830~XYWVEбB
;б8
.і+
inputs                  ђ
p 

 
ф "/і,
unknown                  ђХ
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7888673l,-3б0
)б&
$і!
inputs         
ф "1б.
'і$
tensor_0         ђ
џ љ
+__inference_conv1d_33_layer_call_fn_7888657a,-3б0
)б&
$і!
inputs         
ф "&і#
unknown         ђи
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7888791mFG4б1
*б'
%і"
inputs         ђ
ф "1б.
'і$
tensor_0         ђ
џ Љ
+__inference_conv1d_34_layer_call_fn_7888775bFG4б1
*б'
%і"
inputs         ђ
ф "&і#
unknown         ђи
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7888909m`a4б1
*б'
%і"
inputs         ђ
ф "1б.
'і$
tensor_0         ђ
џ Љ
+__inference_conv1d_35_layer_call_fn_7888893b`a4б1
*б'
%і"
inputs         ђ
ф "&і#
unknown         ђГ
E__inference_dense_23_layer_call_and_return_conditional_losses_7890706dxy/б,
%б"
 і
inputs          
ф "-б*
#і 
tensor_0         ђ
џ Є
*__inference_dense_23_layer_call_fn_7890696Yxy/б,
%б"
 і
inputs          
ф ""і
unknown         ђ»
E__inference_dense_24_layer_call_and_return_conditional_losses_7890752fЄѕ0б-
&б#
!і
inputs         ђ
ф ",б)
"і
tensor_0         
џ Ѕ
*__inference_dense_24_layer_call_fn_7890742[Єѕ0б-
&б#
!і
inputs         ђ
ф "!і
unknown         ░
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890728e4б1
*б'
!і
inputs         ђ
p
ф "-б*
#і 
tensor_0         ђ
џ ░
G__inference_dropout_12_layer_call_and_return_conditional_losses_7890733e4б1
*б'
!і
inputs         ђ
p 
ф "-б*
#і 
tensor_0         ђ
џ і
,__inference_dropout_12_layer_call_fn_7890711Z4б1
*б'
!і
inputs         ђ
p
ф ""і
unknown         ђі
,__inference_dropout_12_layer_call_fn_7890716Z4б1
*б'
!і
inputs         ђ
p 
ф ""і
unknown         ђ║
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888640p<б9
2б/
%і"
inputs         е

 
p
ф "0б-
&і#
tensor_0         
џ ║
F__inference_lambda_11_layer_call_and_return_conditional_losses_7888648p<б9
2б/
%і"
inputs         е

 
p 
ф "0б-
&і#
tensor_0         
џ ћ
+__inference_lambda_11_layer_call_fn_7888627e<б9
2б/
%і"
inputs         е

 
p
ф "%і"
unknown         ћ
+__inference_lambda_11_layer_call_fn_7888632e<б9
2б/
%і"
inputs         е

 
p 
ф "%і"
unknown         Л
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889400ѕЈљЉPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p

 
ф ",б)
"і
tensor_0          
џ Л
D__inference_lstm_14_layer_call_and_return_conditional_losses_7889829ѕЈљЉPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p 

 
ф ",б)
"і
tensor_0          
џ └
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890258xЈљЉ@б=
6б3
%і"
inputs         ђ

 
p

 
ф ",б)
"і
tensor_0          
џ └
D__inference_lstm_14_layer_call_and_return_conditional_losses_7890687xЈљЉ@б=
6б3
%і"
inputs         ђ

 
p 

 
ф ",б)
"і
tensor_0          
џ ф
)__inference_lstm_14_layer_call_fn_7888938}ЈљЉPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p

 
ф "!і
unknown          ф
)__inference_lstm_14_layer_call_fn_7888949}ЈљЉPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p 

 
ф "!і
unknown          џ
)__inference_lstm_14_layer_call_fn_7888960mЈљЉ@б=
6б3
%і"
inputs         ђ

 
p

 
ф "!і
unknown          џ
)__inference_lstm_14_layer_call_fn_7888971mЈљЉ@б=
6б3
%і"
inputs         ђ

 
p 

 
ф "!і
unknown          П
M__inference_max_pooling1d_20_layer_call_and_return_conditional_losses_7888686ІEбB
;б8
6і3
inputs'                           
ф "Bб?
8і5
tensor_0'                           
џ и
2__inference_max_pooling1d_20_layer_call_fn_7888678ђEбB
;б8
6і3
inputs'                           
ф "7і4
unknown'                           П
M__inference_max_pooling1d_21_layer_call_and_return_conditional_losses_7888804ІEбB
;б8
6і3
inputs'                           
ф "Bб?
8і5
tensor_0'                           
џ и
2__inference_max_pooling1d_21_layer_call_fn_7888796ђEбB
;б8
6і3
inputs'                           
ф "7і4
unknown'                           ┤
G__inference_reshape_22_layer_call_and_return_conditional_losses_7888927i4б1
*б'
%і"
inputs         ђ
ф "1б.
'і$
tensor_0         ђ
џ ј
,__inference_reshape_22_layer_call_fn_7888914^4б1
*б'
%і"
inputs         ђ
ф "&і#
unknown         ђ«
G__inference_reshape_23_layer_call_and_return_conditional_losses_7890770c/б,
%б"
 і
inputs         
ф "0б-
&і#
tensor_0         
џ ѕ
,__inference_reshape_23_layer_call_fn_7890757X/б,
%б"
 і
inputs         
ф "%і"
unknown         №
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886379аЪа,->?=<FGXYWV`aЈљЉxyЄѕLбI
Bб?
5і2
normalization_11_input         е
p

 
ф "0б-
&і#
tensor_0         
џ №
J__inference_sequential_11_layer_call_and_return_conditional_losses_7886889аЪа,->?=<FGXYWV`aЈљЉxyЄѕLбI
Bб?
5і2
normalization_11_input         е
p 

 
ф "0б-
&і#
tensor_0         
џ ▀
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888074љЪа,->?=<FGXYWV`aЈљЉxyЄѕ<б9
2б/
%і"
inputs         е
p

 
ф "0б-
&і#
tensor_0         
џ ▀
J__inference_sequential_11_layer_call_and_return_conditional_losses_7888622љЪа,->?=<FGXYWV`aЈљЉxyЄѕ<б9
2б/
%і"
inputs         е
p 

 
ф "0б-
&і#
tensor_0         
џ ╔
/__inference_sequential_11_layer_call_fn_7887009ЋЪа,->?=<FGXYWV`aЈљЉxyЄѕLбI
Bб?
5і2
normalization_11_input         е
p

 
ф "%і"
unknown         ╔
/__inference_sequential_11_layer_call_fn_7887128ЋЪа,->?=<FGXYWV`aЈљЉxyЄѕLбI
Bб?
5і2
normalization_11_input         е
p 

 
ф "%і"
unknown         ╣
/__inference_sequential_11_layer_call_fn_7887440ЁЪа,->?=<FGXYWV`aЈљЉxyЄѕ<б9
2б/
%і"
inputs         е
p

 
ф "%і"
unknown         ╣
/__inference_sequential_11_layer_call_fn_7887491ЁЪа,->?=<FGXYWV`aЈљЉxyЄѕ<б9
2б/
%і"
inputs         е
p 

 
ф "%і"
unknown         у
%__inference_signature_wrapper_7887389йЪа,->?=<FGXYWV`aЈљЉxyЄѕ^б[
б 
TфQ
O
normalization_11_input5і2
normalization_11_input         е";ф8
6

reshape_23(і%

reshape_23         