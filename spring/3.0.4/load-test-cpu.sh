#!/bin/bash

# URL do endpoint
url="http://localhost:8080/jvm/cpu"

# Número de solicitações a serem enviadas
num_requests=10000

# Número de solicitações a serem enviadas simultaneamente
concurrency=100

# Executa o teste de carga
ab -n $num_requests -c $concurrency $url