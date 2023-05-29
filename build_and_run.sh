AUTH_SERVICE_DIR="abc-authentication-service"
XML_UPLOADER_DIR="abc-xmluploader-service"
XML_PROCESSOR_DIR="abc-xmlprocessor-service"

git clone https://github.com/fargholamian/ABC-Authentication-Service.git $AUTH_SERVICE_DIR
git clone https://github.com/fargholamian/ABC-XMLUploader-Service.git $XML_UPLOADER_DIR
git clone https://github.com/fargholamian/ABC-XMLProcessor-Service.git $XML_PROCESSOR_DIR

cd $AUTH_SERVICE_DIR
./gradlew jibDockerBuild

cd -
cd $XML_UPLOADER_DIR
./gradlew jibDockerBuild

cd -
cd $XML_PROCESSOR_DIR
./gradlew jibDockerBuild

cd -

docker compose up -d



