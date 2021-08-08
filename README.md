# jenkins-terraform-k8s

Terraform and other configuration required to deploy Jenkins to kubernetes in GCP or AWS and maybe one day Azure.

## GCP

Will start out with a simple GKE cluster on which to deploy the intended Jenkins service.

The code for this lives in `tf/gcp`.

## EKS

Next we can add an EKS cluster.

The code for this lives in `tf/aws`.

## k8s

Once there are a couple of clusters up we'll deploy Jenkins to them.
