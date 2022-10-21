FLAGS = flags(
  flag_numeric("units1",32),
  flag_numeric("units2",32),
  flag_numeric("batch_size",16),
  flag_numeric("epoch",20),
  flag_numeric("lr",0.01),
  #flag_numeric("dropout1",0),
  #flag_numeric("dropout2",0),
  flag_string("activation_function", "relu")
)

library(keras)
set.seed(1)

model = keras_model_sequential() %>%
  layer_dense(units = FLAGS$units1, input_shape = dim(ann_train)[2], activation = FLAGS$activation_function) %>%
  #layer_dropout(FLAGS$dropout1) %>%
  layer_dense(units = FLAGS$units2, activation = FLAGS$activation_function) %>%
  #layer_dense(FLAGS$dropout2) %>%
  layer_dense(units = 1, activation = "sigmoid")

model %>% compile(
  loss = "binary_crossentropy",
  optimizer = optimizer_adam(learning_rate = FLAGS$lr),
  metrics = "acc"
)

model %>% fit(
  as.matrix(ann_train),
  ann_train_label,
  epoch = FLAGS$epoch,
  batch_size = FLAGS$batch_size,
  validation_data = list(as.matrix(ann_val), ann_val_label),
  class_weight = list("0"=w_no, "1"=w_yes),
  verbose = 2
)
  

  
