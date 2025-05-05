export TERRAFORM_VERSION=1.5.7
export GOOGLE_APPLICATION_CREDENTIALS ?= ~/.config/gcloud/application_default_credentials.json
export TERRAFORM_CMD = docker run -it --rm \
	-v `pwd`:/root/terraform \
	--hostname=`hostname` \
	-v ${GOOGLE_APPLICATION_CREDENTIALS}:/root/.ssh/sa-terraform-service-account \
	-e GOOGLE_APPLICATION_CREDENTIALS=/root/.ssh/sa-terraform-service-account \
	-w /root/terraform \
	hashicorp/terraform:${TERRAFORM_VERSION}

workspaces = recette prod

init validate plan apply destroy:
	$(TERRAFORM_CMD) $@ $(NO_COLOR)

$(workspaces):
	@$(TERRAFORM_CMD) workspace select -or-create $@