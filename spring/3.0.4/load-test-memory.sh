#!/bin/bash

# URL do endpoint
url="http://localhost:8080/jvm/memory"

# Número de solicitações a serem enviadas
num_requests=100

# Número de solicitações a serem enviadas simultaneamente
concurrency=10

# Executa o teste de carga
ab -n $num_requests -c $concurrency $url