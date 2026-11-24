## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:b0dbefbe2636fa2595248db2a356a0be62d5f5423af1b22df5976abec6003488
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f8e28ff6694f63e19e15ea44f52492661843f6b1396cee56d9e115de4417336a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130656030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187c2e7382086050a895ae8860de7780fc55ed57fd5738a891f341762dbe839d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:30 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:30 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:09:30 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:30 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e5caeaec28dbfc9d2b85db9877f1e60982668a3ed99d39abe7f788aa3fd592`  
		Last Modified: Mon, 23 Nov 2026 21:09:47 GMT  
		Size: 76.1 MB (76090861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c499b1efc06fdd0697d89bf002abb0c35afd93785a29758f304dd9d87c2ef80f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05abc7a74844e4c9649b4c2860e848fb6fdd59b22c2cc3c6643f73cd958615a8`

```dockerfile
```

-	Layers:
	-	`sha256:33618bbc29b6ce140d800c981bd2ef369e1a959d67f6c4bbc6cce7351f298d3f`  
		Last Modified: Mon, 23 Nov 2026 21:09:45 GMT  
		Size: 5.2 MB (5210236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:581ed5f4a7f9fac3d5aee04b045674ef1b9bba454b1e22d4e2552cfa6350af3a`  
		Last Modified: Mon, 23 Nov 2026 21:09:44 GMT  
		Size: 9.2 KB (9162 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:62e881471bb40a2c9d73945a08215000aed78099c9dd85bb16b8ba8e1d13cb9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128795893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05365abcd301599fe072ad44cc71634b65017543ae57dacb84ee3913794b127`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:40 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:40 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:09:40 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:40 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd6941e24c6665922506f576cf7337229062715f9d8b9dc26c1ad6fad12c073`  
		Last Modified: Mon, 23 Nov 2026 21:09:58 GMT  
		Size: 75.3 MB (75346309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ac37e5571fa9877de54486d734817b44697649422e3fb05316965135b987bbb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e211ef41ccc8369e7a33c52616c1bd8eab6d5328636c9483e6b57a16e1a23b07`

```dockerfile
```

-	Layers:
	-	`sha256:cf8ee257134fca87059ae7a13d922ac7bef9645fb69988f0366c36cdb77cdadf`  
		Last Modified: Mon, 23 Nov 2026 21:09:56 GMT  
		Size: 5.2 MB (5209866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0d199491c89bcfad395aff713a2e47a221ec444fd5033371bce1aad6f26d8f`  
		Last Modified: Mon, 23 Nov 2026 21:09:55 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.in-toto+json
