aws lambda publish-layer-version --layer-name my-python37-layer --description "My python-3.7" --zip-file fileb://python37.zip --compatible-runtimes provided
aws lambda publish-layer-version --layer-name my-python37-libs-layer --description "My python-3.7-libs" --zip-file fileb://python_libs.zip --compatible-runtimes provided
