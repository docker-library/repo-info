## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:adb68b25a5af42cf5e9d87cc4e8a2117a2ce95ceab40f470c4d343c6d1ea486b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:38929bb595878a4f8eada378b5d92dc4746dc3036b5cfae0b6267210c4a0ed96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144155318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c60b7588b061a9056945a4bcf32806c5d49fb77cd961e5b51674f9f1d1566f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:58 GMT
ARG version=21.0.13.0.11-1
# Fri, 30 Oct 2026 19:44:58 GMT
ARG resource_version=21.0.13.0.11
# Fri, 30 Oct 2026 19:44:58 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:58 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:58 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea52bc527ba4b8deffdcf4c6c453800ba2cb7b3fc9cff53ecf4e45c75ee9b29c`  
		Last Modified: Fri, 30 Oct 2026 19:45:17 GMT  
		Size: 89.5 MB (89506398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3c1f1d9e784206dcd7d4e7eb0c694957766bd9abf66e03ad093af850cd4a3e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6330378a6736ee9de53760c7109819f50042a58c515e3010faab1eb2008d82d`

```dockerfile
```

-	Layers:
	-	`sha256:f8888ee416edc3615db73071b3bcbe0ca490d95923b98df6e0fa5fa75c529ed7`  
		Last Modified: Fri, 30 Oct 2026 19:45:15 GMT  
		Size: 5.2 MB (5198738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83fd7a7c6c53e116536e323e32d0348f5386b7ad002e3f2689db6ea5a049136`  
		Last Modified: Fri, 30 Oct 2026 19:45:15 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cbeaccbd985b24417d1f499c5d8b17c0e8db979763e5451d161dab5c4a27cbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142173285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74421354e77566d5685183814061d59e77218b4693643e982740b2c1a85101e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:45 GMT
ARG version=21.0.13.0.11-1
# Fri, 30 Oct 2026 19:44:45 GMT
ARG resource_version=21.0.13.0.11
# Fri, 30 Oct 2026 19:44:45 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:45 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a117c6f1dd36bbce85bcb9325a8f336d1ff085bec3ebda3d611a3b6d9664d981`  
		Last Modified: Fri, 30 Oct 2026 19:45:04 GMT  
		Size: 88.6 MB (88643969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0cb25a433c143806e9ada6de6034c100cd5825893c9141723cca3ed541a06061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48025adb13d16f40d98b89d7b6266af4e1667e29f8e1f89e1963c3a10ca7f376`

```dockerfile
```

-	Layers:
	-	`sha256:24d7fddb08b2d6962d6bab5a66989ae36ba26b812646e7bd634171a9e4d95882`  
		Last Modified: Fri, 30 Oct 2026 19:45:02 GMT  
		Size: 5.2 MB (5197541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:563d7608deb88ec3edbf609ef3e4192333578eee8d80dd0c12cb3a93a61ce67f`  
		Last Modified: Fri, 30 Oct 2026 19:45:01 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json
