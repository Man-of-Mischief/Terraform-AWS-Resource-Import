variable ports{
    default = ["22", "80", "443"]
}

variable "ipv4"{
    default = "0.0.0.0/0"
}

variable "ipv6"{
    default = "::/0"
}