gcloud compute disks create crc-disk --image-project centos-cloud --image-family centos-8 --zone us-central1-a
gcloud compute images create crc-v4-image --source-disk crc-disk --source-disk-zone us-central1-a  --licenses "https://compute.googleapis.com/compute/v1/projects/vm-options/global/licenses/enable-vmx"
