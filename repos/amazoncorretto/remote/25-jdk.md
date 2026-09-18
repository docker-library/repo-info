## `amazoncorretto:25-jdk`

```console
$ docker pull amazoncorretto@sha256:8b4713fd619a205e72fb9fdfe55ce6a92d40967dbd35056ef99c13046f7d8468
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:13562c954bed150f20bb6532ac3819be6d2a308bc4d6f60775713ae51c43ec3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244055845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259213da4a72c39ffea5a5f2434085097d8c9072848fb62145e54015873512dc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:34 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:34 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:34 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beadd3fcc10a0b724f309cb11e87f40329f59e949bb53b5f14afb833e928cd9`  
		Last Modified: Tue, 15 Sep 2026 00:12:57 GMT  
		Size: 189.5 MB (189469563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0a1741910ad067e4e8cd07895e152ba03d5e7f9f3d4dee01d73242eb06906128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5354107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3051cdcc25cc4e866645380547d277627cb70c678470febcb4d924084a5d33e7`

```dockerfile
```

-	Layers:
	-	`sha256:ff0a1d82022f69b6c1e9b5afeeaef30a59fa9ae617bd706bbca6a89a2a2c3a2b`  
		Last Modified: Tue, 15 Sep 2026 00:12:53 GMT  
		Size: 5.3 MB (5343457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e51c62ba2f6eb58549ac5a64bf3aa08bda111abe48c6c9565169c3cc09c2819`  
		Last Modified: Tue, 15 Sep 2026 00:12:53 GMT  
		Size: 10.7 KB (10650 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9f2e8e46ee603e0052d43c932ea66034c5cf7d599c823039c05feeae10b90ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240832813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac353bb7be9ce1c8205beb621aba639850279a3aa283d05eec21aed3dd9472b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:22 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:47:22 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:22 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ede0990d45aba19c1b3aba4d86361f0ab497c8e65c5019e492496449a8a5aa9`  
		Last Modified: Thu, 17 Sep 2026 22:47:48 GMT  
		Size: 187.4 MB (187380240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bd1079e18c0b916f4688a9ba63a2948ccf7e91ffc3cf64182bd1034a9cc37b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5353216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74367f241a6f8e6789e4f0ee89ced3daf910d703e62a5ed909716ac5685de6db`

```dockerfile
```

-	Layers:
	-	`sha256:f90b0b66794994740ecdd99ffd0d9575a69165a509eafb02c4c5a022af9723be`  
		Last Modified: Thu, 17 Sep 2026 22:47:44 GMT  
		Size: 5.3 MB (5342438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:623a2c628b65d4866d1dadcc16f67d7acad4c0018816eef118ae8c22d72d8b19`  
		Last Modified: Thu, 17 Sep 2026 22:47:44 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.in-toto+json
