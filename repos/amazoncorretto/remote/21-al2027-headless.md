## `amazoncorretto:21-al2027-headless`

```console
$ docker pull amazoncorretto@sha256:5ea5d744226f4a3ca1dcd16deae8f659db5510ba97239a0e16e924cafda4c2f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2027-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0b9c2f4bf892730e61d97a573e5b9af58897d01ffeb53379a6784e1ccf853fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134081242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9421accffa2d54c2e6e5e3ecd74e967599a9177c707c3aaee7f0ccdcfd29139`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:49 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:49 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:02 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:02 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:02 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:02 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:02 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:bdceceab54920e1a52dc75125e21a5666f649ffa911a955836eced3738f0159b`  
		Last Modified: Mon, 23 Nov 2026 20:29:01 GMT  
		Size: 45.6 MB (45644195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbc8eb6d0ccd8b166879b49b80e1d5e2cbaf08e61e3713d281836d5a341b630`  
		Last Modified: Mon, 23 Nov 2026 21:11:17 GMT  
		Size: 88.4 MB (88437047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:038840d97462d4e31b65b0d7a0939921cfdcc206c19de275cb7c57a6d668f7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2956511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d64a0d1a85956ebb444b11a5d585f812a3b3553e22c5e310995107d5727962`

```dockerfile
```

-	Layers:
	-	`sha256:944e5923292965261bd87e20325f1322c370270e531dac31c2ef5edac26e8d95`  
		Last Modified: Mon, 23 Nov 2026 21:11:15 GMT  
		Size: 2.9 MB (2947555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:668094a01c2eafde2895d170fd3c0e3652b96651a9a9c69500c583afaf3c8c73`  
		Last Modified: Mon, 23 Nov 2026 21:11:15 GMT  
		Size: 9.0 KB (8956 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2027-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e475942982fb5dfa27c8f0ef7353e377ffbdbce972d66dffa429abdda8cc5b4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129641905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0252f3e0dfbd73a33c47a99b8b2cc114e11309af54bcd3cf9cccc003eb8d2904`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:51 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:19 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:19 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:19 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:19 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:19 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b3916e2369ad5254dc0f14f340f147be4b3ff439fa2e783b908d3db25e969e4b`  
		Last Modified: Mon, 23 Nov 2026 20:29:03 GMT  
		Size: 42.6 MB (42646231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ef5f147ca15dfb645e6aca0c84e3204adb85c6820f94f6d74ecd6c0ba23d90`  
		Last Modified: Mon, 23 Nov 2026 21:11:35 GMT  
		Size: 87.0 MB (86995674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:050dea8a4b7f6dc86fadf327379885383477200331dcb61726f3ef67eedb02c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2955917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3efbd6f13bc1c56a852334f54220b724870a4a0c2063606672c9927bc36794`

```dockerfile
```

-	Layers:
	-	`sha256:9547d2fceb5fc6e346512d7346f45434b1799f791720cf0071fc673290d53564`  
		Last Modified: Mon, 23 Nov 2026 21:11:34 GMT  
		Size: 2.9 MB (2946881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7899d5b6f5ff12c3c96777f2b1d46f37f47f0bbb12b60acdc672eae60ad82510`  
		Last Modified: Mon, 23 Nov 2026 21:11:33 GMT  
		Size: 9.0 KB (9036 bytes)  
		MIME: application/vnd.in-toto+json
