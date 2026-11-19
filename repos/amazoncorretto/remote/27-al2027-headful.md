## `amazoncorretto:27-al2027-headful`

```console
$ docker pull amazoncorretto@sha256:aea60c9e769760b35b281d9a6ec4d3764c47be5629fecc89ad31d346dea31b4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2027-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:055415d7c4285c6e3ad1d9c0e78cb76a0191d45f50cd6fde91392c6b8a16e5ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151812589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25155b16cff687ec8faa8a56a5d8bf6811c1866709f553262b404757b66dbb24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:10 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:35 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:35:35 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:35:35 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:35 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:713da152d33274d711b748fa0018ee981140ec1ddea39655f9e477d1be7eccc6`  
		Last Modified: Wed, 18 Nov 2026 21:17:21 GMT  
		Size: 45.6 MB (45646491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cb59f1aeb29a54a10b4bb6692fd1f374a9f0d9e06f27dd24ad8333c0cf0ba4`  
		Last Modified: Wed, 18 Nov 2026 21:35:53 GMT  
		Size: 106.2 MB (106166098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bbb862a1086a8abf4d7b2ba31a5a9f54338390dcd73f360918883a5a4f1c5947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381586436980e7bde279d6c752d2feaa8982c09201c17f9a467800573ccd2a82`

```dockerfile
```

-	Layers:
	-	`sha256:c112eee8737ad1a7f085f3bc30c8d7c795935563c71a18510d70f008a752b622`  
		Last Modified: Wed, 18 Nov 2026 21:35:51 GMT  
		Size: 3.2 MB (3160231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:971f813f2fdcbe82ffdb2f6f07e9a6b76207c61bc21f2af9fe66b2458befd2f1`  
		Last Modified: Wed, 18 Nov 2026 21:35:50 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2027-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ba5e9f844071b17f349a1a516789ef31afabe0e94261cdac97527675bf2dc838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147107224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4db5456998b3cfbe4d6d26b22a8225cc64f58bbe5e7fd1afcabde54e515cc9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:14 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:14 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:36:09 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:36:09 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:36:09 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:36:09 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:36:09 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:36:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:36b7d5c4fd450b30e5fc5b502fb784c91c3e88bce438c8709993b6db627bd46a`  
		Last Modified: Wed, 18 Nov 2026 21:17:26 GMT  
		Size: 42.6 MB (42641684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f1ba462ebee9559950a3a2cbc369e4fcb31149ed666ec2fd3b40407779ab98`  
		Last Modified: Wed, 18 Nov 2026 21:36:28 GMT  
		Size: 104.5 MB (104465540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8f66508146aef9fa4e5b0e91047527cdf2c46b67ab45a7f3b4ca7a47f8a39ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3168769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2c8c97b62857c06c48c80dc40a5140d0fd5b68b8bdfed93b38b90096e402aa`

```dockerfile
```

-	Layers:
	-	`sha256:b1241bacee3b36d28089647ab30b395639b22a723d832062765f3adb43590d01`  
		Last Modified: Wed, 18 Nov 2026 21:36:26 GMT  
		Size: 3.2 MB (3159565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe1960f718cd22932107f4acabbcb3039a51d3677c078c2c670f55a72616b759`  
		Last Modified: Wed, 18 Nov 2026 21:36:25 GMT  
		Size: 9.2 KB (9204 bytes)  
		MIME: application/vnd.in-toto+json
