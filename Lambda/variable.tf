variable "function_name" {
    description = "This variable contain function name"
    type = string
    default = "LambdaTesting"
}

variable "architecture" {
    description = "This variable contain architecture"
    type = string
    default = "x86_64"  
}

variable "runtime" {
    description = "This indicates runtime environment"
    type = string
    default = "python3.13"
}
