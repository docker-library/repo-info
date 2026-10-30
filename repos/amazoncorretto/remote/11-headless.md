## `amazoncorretto:11-headless`

```console
$ docker pull amazoncorretto@sha256:a1093ef437e682e0e6b03739af13dd8a1e47969559a8096ceb850d104d1973de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dafda78eb7125d59fbea48f78d2a7420d62de98dd79026fbdda6e45f6456a526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.8 MB (130752358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629b38851574418815fcdbc08d9487e01f720eb7561ebb0d8f7d5bd3b542c1ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:01 GMT
ARG version=11.0.33.0.10-1
# Fri, 30 Oct 2026 19:44:01 GMT
ARG resource_version=11.0.33.0.10
# Fri, 30 Oct 2026 19:44:01 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:01 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66238c5f77d17a3034852b4f5e6eb77419eeebfc01243e201347af57f45437c2`  
		Last Modified: Fri, 30 Oct 2026 19:44:18 GMT  
		Size: 76.1 MB (76103438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b57ade55ac34caa1f36259c4d36f2eddb0569fc97ee5d6562d28cb97c0983d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073a9f63694f63a1de1f1ff6ecef81e0601e53a3695c53bbc4d5358d152535f9`

```dockerfile
```

-	Layers:
	-	`sha256:e973daea43597e045423266d9a87a927d82afc46c6b3a308646a1c79112168ca`  
		Last Modified: Fri, 30 Oct 2026 19:44:16 GMT  
		Size: 5.2 MB (5210220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38390310cf720cc082ba28680f009eb39157e42f98b11277db5a2eb0dff25250`  
		Last Modified: Fri, 30 Oct 2026 19:44:16 GMT  
		Size: 9.2 KB (9165 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:472b92af08215ac7ecf3047499a517dceb344fd0ce87bb551a785eef47520c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128884965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a78eb1a74588a730bb2dcffc178cf41ae18437edc012612a3dec5de1b8f526`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:51 GMT
ARG version=11.0.33.0.10-1
# Fri, 30 Oct 2026 19:43:51 GMT
ARG resource_version=11.0.33.0.10
# Fri, 30 Oct 2026 19:43:51 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:51 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adba981b3ce12e2b341a0c19f6d57da13cd2eda5fc066865fbc750cb1d015784`  
		Last Modified: Fri, 30 Oct 2026 19:44:08 GMT  
		Size: 75.4 MB (75355649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2bc52d00a691d081c177c7a9e12d3896f733cc6c52db74099223ae8280f23997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb2c993247462983f5e3e4abe57321ccf9d94bf1bb1531a99955656c4b81d49`

```dockerfile
```

-	Layers:
	-	`sha256:e4f4a3586d503d18d7a05ce37582b4cb3414975a31694485bb4587facb964941`  
		Last Modified: Fri, 30 Oct 2026 19:44:06 GMT  
		Size: 5.2 MB (5209850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a4248ccd1a78750a682760b90644f3e8cc3e38051bdaec59008031bef1570f9`  
		Last Modified: Fri, 30 Oct 2026 19:44:06 GMT  
		Size: 9.3 KB (9257 bytes)  
		MIME: application/vnd.in-toto+json
