
help:
	@echo "Usage:"
	@echo " make <command>" [arguments]
	@echo " "
	@echo "The commands are:"
	@echo " generate	Generate code from proto files"

generate:
	 protoc -I proto proto/app/app.proto  --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative


.PHONY: generate