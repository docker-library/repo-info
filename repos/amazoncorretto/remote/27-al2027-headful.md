## `amazoncorretto:27-al2027-headful`

```console
$ docker pull amazoncorretto@sha256:15587f1e11ba992d6e34d4fd4374c3a7f06a8f41813a3060f80382740c959fb5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2027-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:40f3160e61648ba3c54c7a0eafdf47ca1e9789ea0899134789bc88d99ef046f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151782164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1b20e7e3c4a9184e5fdeabccf84510edbb6b344911022061b2c96b5fa7dd93`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:55 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:29 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:29 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:29 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:29 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:e43bb5ece49fe4502c2841836cf4ffad1dc6120de0f227b756223e07266ab90a`  
		Last Modified: Mon, 16 Nov 2026 22:29:07 GMT  
		Size: 45.6 MB (45615971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7321af9b1662c02f0419a728a7ff0334f574ad451ba58a81b38e01df806ae0e9`  
		Last Modified: Tue, 17 Nov 2026 21:35:47 GMT  
		Size: 106.2 MB (106166193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:561bd254ca5acb8b916a941e7d008c00faa701e04e6b467a80253ee6006e4fb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d1b9b62f4b0d00cf2d6f14fb19c0af031a23b32770d5fb5ab15ab765e3c14c`

```dockerfile
```

-	Layers:
	-	`sha256:6ac31219a4e81c2ff5473d5a37c13fb45f9a7aa61097edd93ac300a0102bab3f`  
		Last Modified: Tue, 17 Nov 2026 21:35:45 GMT  
		Size: 3.2 MB (3160231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ac8ed3eacff34a3e218c71924411631e00dfa12fdfd6c8cc5cba98c879a0e90`  
		Last Modified: Tue, 17 Nov 2026 21:35:45 GMT  
		Size: 9.1 KB (9124 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2027-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2d867011da853fcbbb2b3f101275496fc53689db9dc50ce03d12a7730ee3fa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fb2797edf3c2968b0ae2bb56061c5cb995bde99f3a0e719a3f4105aac27032`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:44 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:33 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:33 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:33 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:33 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:eab53fa5f0ecf83b375accc23bd73cb37261345918b500ae2e5236dada25e73d`  
		Last Modified: Mon, 16 Nov 2026 22:29:55 GMT  
		Size: 42.6 MB (42618927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517364839e0f2aa3b32642ee69fc7cd691829ab8a47c8f5b623f30eeee25782c`  
		Last Modified: Tue, 17 Nov 2026 21:35:53 GMT  
		Size: 104.5 MB (104464039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d12ed31b3c6b4523a8478cdc4e9516256b581f9da83371ede27e6af09454bc85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3168769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186b5285a98dce577da61999fabde7a5d199597fe76150b92b2409b5dcce73ad`

```dockerfile
```

-	Layers:
	-	`sha256:d5dcbf3a1eb7a39daa3314f02b05bf3d35fddc46a41c370f44e1c4ecf96fccc8`  
		Last Modified: Tue, 17 Nov 2026 21:35:50 GMT  
		Size: 3.2 MB (3159565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00403b470b674bb0cd9dcd1adf2bc9cf363f2261220992bbd4f66d2f3c3613ea`  
		Last Modified: Tue, 17 Nov 2026 21:35:50 GMT  
		Size: 9.2 KB (9204 bytes)  
		MIME: application/vnd.in-toto+json
