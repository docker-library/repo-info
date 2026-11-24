## `amazoncorretto:21-jdk`

```console
$ docker pull amazoncorretto@sha256:fe9b50d12d33a499fb382d47370017a8dee73a2ab80ea6d5aa9a30ee72c82caa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1ee7cf7ade230d6d9cf4cd9d7c8164b0ff5f24fbe52636e72a4cc24717f361eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225305461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e85faee67dc01571cbb626e7c2b1732669364f044d82537a9f51e3fab77aaf0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:10 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:10 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:10 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:10 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e73054eee66204c4cdf6fd0bc50066ac938949202dc045d51a5fb24558d98e`  
		Last Modified: Mon, 23 Nov 2026 21:11:31 GMT  
		Size: 170.7 MB (170740292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4f66df985b80e2f8629a2c3a900daa143cf8ef2aeb05ffb6f94bb7e9217787cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d7144b527ee480129e027959fd9a6bb914e68a1165cbd8d525cf93158062c`

```dockerfile
```

-	Layers:
	-	`sha256:296954faeced747ad7c61f44afb0e9fa7d00fa6f727ae32b789f42496a6ca3cd`  
		Last Modified: Mon, 23 Nov 2026 21:11:28 GMT  
		Size: 5.3 MB (5331927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e97069666f680e7142c06f0dafda284a2ce93271b4d103f98b67231868758dbf`  
		Last Modified: Mon, 23 Nov 2026 21:11:27 GMT  
		Size: 10.7 KB (10716 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:27868d865ef6d25f23301e83b4f93cb5ad49c0b030589da9968be31b019dea63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.5 MB (222481269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9355aa7b82be9bbeef82f3b5c398270efb38852c15c8ea35a8b399ab76b20ba4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:33 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:33 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:33 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:33 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:33 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c5906de93097486d58f51f3713562f2ab1fdaaf15d9ffc6925f4d84d7760b6`  
		Last Modified: Mon, 23 Nov 2026 21:11:57 GMT  
		Size: 169.0 MB (169031685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7e98f5ccfd3aa2d04f5e5efedbe9fdb09c9e81b6ef9123dbacd91cde8c72ff7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facf515d85464e212769eabd8969ab4f8ad23fbd8660b1c9d9b47e4dff90b890`

```dockerfile
```

-	Layers:
	-	`sha256:74df9a7a974a6171095ec7d1fffa90a1b81dcda4346dcb0e7e86241046cbd69c`  
		Last Modified: Mon, 23 Nov 2026 21:11:53 GMT  
		Size: 5.3 MB (5330897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1890c7534a2e89fe88e1f0ff6cacb7b59ca24919c18705eac37ccd63ef2032`  
		Last Modified: Mon, 23 Nov 2026 21:11:53 GMT  
		Size: 10.8 KB (10844 bytes)  
		MIME: application/vnd.in-toto+json
