## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:036e6ebf3025f44224696616476fc7f16920dae6d7450a418d6e8b723fbefce2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ce2133358847d34fe5ef2173d2b24651b0a981a588875934ff101109ba8dc42e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131431106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7827a00d290863faf33b7f686791518aad7c5772b22435df69972475e15c8833`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:00 GMT
ARG version=11.0.32.13-1
# Fri, 23 Oct 2026 01:10:00 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c2b209c2855d727f6e876e43d0ccb66f008d9e74415398950fa09873b4d800`  
		Last Modified: Fri, 23 Oct 2026 01:10:16 GMT  
		Size: 76.8 MB (76782186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0d5a544f062dde30df2dc05f7fdba5e03d36a1d1d69d7d27a9de9a6a86c1f4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64865a32ae2ec439057dde545a44302669430e918ea61cd49f958bb1e9390ceb`

```dockerfile
```

-	Layers:
	-	`sha256:186a8311ec744466870c4beeaddbdcaafc0c8835022fdf28fe8acce2eba04343`  
		Last Modified: Fri, 23 Oct 2026 01:10:14 GMT  
		Size: 5.2 MB (5235645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d77b88f63fba2b03cf4c974599c67e4e64b4b7ee0a8840c4a8987835c658cc56`  
		Last Modified: Fri, 23 Oct 2026 01:10:14 GMT  
		Size: 9.2 KB (9228 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0a01b3fb243490f9b46e3cc1fba37027fb4df03408d48c733e8d78fe3a818d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129559629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2f39de3d7a4277076e508595e6007773030d70265f157b308060b1c0f87918`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:48 GMT
ARG version=11.0.32.13-1
# Fri, 23 Oct 2026 01:09:48 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:48 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a28a6c0025243477b1aef1c38bace412768bbb3a59f8b75e8e957c7662a3ff`  
		Last Modified: Fri, 23 Oct 2026 01:10:05 GMT  
		Size: 76.0 MB (76030313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:838c83fba1ce5b34f1c9fe6ec06a515834f6b23cd3981bc5557e9de500ff518b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6314d7755cc73fd892c6f0bba951a375dd880035fc47f57255a471e353e06de`

```dockerfile
```

-	Layers:
	-	`sha256:48b8a68ee8529734009605be042a61624d75f448f68589fa102eb8563cd45a20`  
		Last Modified: Fri, 23 Oct 2026 01:10:03 GMT  
		Size: 5.2 MB (5235278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aa60f9a5339803b1738a68a2e2012febe53bccd6cbe6b0e442fb5d9708935db`  
		Last Modified: Fri, 23 Oct 2026 01:10:03 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
