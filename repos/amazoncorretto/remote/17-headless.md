## `amazoncorretto:17-headless`

```console
$ docker pull amazoncorretto@sha256:6b3e02d0a9d66747988a015dee13bdd8735d7830752cd25270bdbea91d575480
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8e73fc5339b03678757daa7430066be73351131c120f79652085e2a7ca5b8359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137133599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1971e5829c9ed60be35b9fc4a61283fc0afc48939ba8f8bdcace3cbd1644457`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:03 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:03 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:03 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10aeeb97292684532fc8965c1750c554aa802dce7b2f51985a870a2bb4a5babb`  
		Last Modified: Fri, 23 Oct 2026 01:10:26 GMT  
		Size: 82.5 MB (82484679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4832e76551a025e306b2deb077de281d28278bb92eb8b81f87e384a8088ac09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbf1e30b487aafd65b9315cbfeae73df6e47d6f1adc1cf4858e96ff1cb55fb1`

```dockerfile
```

-	Layers:
	-	`sha256:cdfbbe3680f84fafc0ff94f3cc13cea2b2f07126655efec9a6a8248e79b0ab8b`  
		Last Modified: Fri, 23 Oct 2026 01:10:22 GMT  
		Size: 5.2 MB (5197112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:387928ef6e6b967e4dc414d4a92892a3f8a93068592cfad4aceb1726fe53a2de`  
		Last Modified: Fri, 23 Oct 2026 01:10:21 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6618cf60559065ab43adff1b25924d3c24ac237956f90f9f2ea521854dc84094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135438905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4122822b2c3230edf497bfd5fb6363f9c4980d2488d60c945edf0d53be25d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:04 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:04 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:04 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:04 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3011fca7ae2d24f0c368ffdd39cd61cb493f04882fc897f5fa844a84b2e0384e`  
		Last Modified: Fri, 23 Oct 2026 01:10:23 GMT  
		Size: 81.9 MB (81909589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fd0e3a0e31dee0bb6c12be4489c3ee043e3cdb341f695a20eff58f3c801e0c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eea19a7133fc92f885d2751eda453729624c90f6170cb2d9d92eff6aae73d90`

```dockerfile
```

-	Layers:
	-	`sha256:cf1baf178c1d123e378ced7c7ef7868dfbdad86ebf6364f5f642af426d2d0ba0`  
		Last Modified: Fri, 23 Oct 2026 01:10:21 GMT  
		Size: 5.2 MB (5195913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c56ee676badd935a844ebc3fc6e34048772485bc1314c50cd8979297a796da1`  
		Last Modified: Fri, 23 Oct 2026 01:10:21 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
