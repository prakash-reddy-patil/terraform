variable "ingress_ports" {
    default = [80,22,3306,8080,22017,6379]
}

# Port Number  Service Name
# -----------------------------
# 80    = HTTP (Web traffic)
# 22    = SSH (Secure Shell – remote login)
# 3306  = MySQL Database
# 8080  = HTTP Alternate (often used by Tomcat, proxies, or web apps)
# 22017 = No well-known standard service — usually used by custom applications.
# 6379  = Redis

  