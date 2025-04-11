#!/bin/bash

echo "🔹 Création du namespace..."
kubectl apply -f k8s/namespace.yaml

echo "🔹 Déploiement de l'application principale..."
kubectl apply -f k8s/deployment.yaml

echo "🔹 Déploiement du service LoadBalancer..."
kubectl apply -f k8s/service.yaml

echo "✅ Déploiement terminé ! Voici les services dans le namespace buttertech :"
kubectl get services -n buttertech
