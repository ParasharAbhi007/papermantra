package pipeline

# block any pipeline which uses a particular delegate

 

deny[msg] {

  input.pipeline.stages[_].stage.delegateSelectors[_] != "eksdelegate"

  msg := sprintf("deployment stage '%s' is using a forbidden delegate", [input.pipeline.stages[i].stage.name])

}
