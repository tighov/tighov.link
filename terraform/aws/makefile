
validate plan destroy init:
	terraform $@

validate: init

apply:
	terraform $@ -auto-approve

plan: init
apply: init