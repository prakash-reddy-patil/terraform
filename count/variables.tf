variable "instances" {
default=["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","frontend"]
 
}

variable "zone_id" {
    default = "Z04186342ATITR80K0PR0"
}

variable "domain_name" {
    default = "divyavutakanti.shop"

}