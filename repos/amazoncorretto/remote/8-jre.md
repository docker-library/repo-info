## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:e5df5bb4a1b9906b32f0f166c2f8730fe1d0481165616922815b856abc63afb5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:48e00d519fbfd0c1d5a12abb7fca54346c12c2fe554330f73fb311b60060756b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109314246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f31eb0b1099a6f3aa105807e0009c2799b0fe307610820c0a42c69e587b90a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:16 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:16 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:16 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109b3b23895e8c516eabdcf3bdafb37dcb6540448dad263d2b19ee246129dc82`  
		Last Modified: Wed, 18 Nov 2026 21:32:30 GMT  
		Size: 54.7 MB (54745155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:875fc1800844396fdaabe12e7ff7683c888b57c36e725adf5910c06308604508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9f3b86be84f83d7771fc645f7afbe338f887118b986a9ca30e2db655c1ecc3`

```dockerfile
```

-	Layers:
	-	`sha256:7fec5fa4ce138fe019acae8a05c20ab9996e54b297c7c934463ec280f5b16878`  
		Last Modified: Wed, 18 Nov 2026 21:32:28 GMT  
		Size: 5.2 MB (5218277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a22b27b21e6c191e9554b8dd0193f7de0dd7b4ba33ba02440e9db108be6be1f1`  
		Last Modified: Wed, 18 Nov 2026 21:32:28 GMT  
		Size: 9.8 KB (9787 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:95be6e81fb0f89c6fb145829c5bafdc46d53ef4cfc42e47d20312d367346b508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107936664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a91883f6919873b18bb38d8512c74c04b98c915a08bc976244cbfe363c061f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:41 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:41 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c83efe1fc1980d24c651b1e33d7ecea72cc2d3285a668caf4e45b318572acd2`  
		Last Modified: Wed, 18 Nov 2026 21:32:56 GMT  
		Size: 54.5 MB (54483114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ff64065ed868a10faf11eb963d770247441f04aeb356e6bb6671cf738b9d734e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f4694227233631ee73770990074d9f3081bf32a64cd133b069167239c7a36a`

```dockerfile
```

-	Layers:
	-	`sha256:a6b4aa78ea81fcb8ec380bf6d0f2d8dbc3e8562e89f6c5e87b4df01bcf587086`  
		Last Modified: Wed, 18 Nov 2026 21:32:55 GMT  
		Size: 5.2 MB (5217970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10fd6551d0dd97d1840a1f3975b960ce99433899906fb1b8907a28f891933538`  
		Last Modified: Wed, 18 Nov 2026 21:32:54 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
