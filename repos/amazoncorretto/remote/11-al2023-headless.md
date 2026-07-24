## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:1bacfdfa7de51dd4de19c1ac70c31fc1a2b3d4e86eddc8ed6ff5ab2dafa8a1ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f68c530145f1f1b38b1a61452e6ab6704c5847c9355d800868eb4440c0abbe4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab6867c5eb488c14191783fff2841524dab0c3f73d18584a79a1b18ac741033`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:11:24 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:11:24 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:11:24 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71df0672d1f8e3a0dcb53991161cc7c038d34b5441956251786ca2264ee087c`  
		Last Modified: Thu, 23 Jul 2026 23:11:40 GMT  
		Size: 76.1 MB (76066035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:729ca9e86236fab4840a2a1a5087ff1731b5b9684a9b74552931c23bb023a062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9a06587e0e1f0828d67b10a14b64f5a0140947fd58d34697b54e821e76e2bb`

```dockerfile
```

-	Layers:
	-	`sha256:28e3aee5e98667b54493905cf38856d922ec3b1ab3c211334360db3b9b81bf6d`  
		Last Modified: Thu, 23 Jul 2026 23:11:38 GMT  
		Size: 5.2 MB (5210135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f6911632a695f4e9d51bf50f142992d8f6e35db0fc97edefdac3cebdcbb292`  
		Last Modified: Thu, 23 Jul 2026 23:11:38 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9f3539e43da81336b993f1de804f3a88f7f2a95c69906097b6d14efcc94f6ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128760203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16a2cb75f5c38898b4072a8c3cad0fcb3e51ce07f974b242ba12951df96e727`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1535af8975c9f7810623bc507a17fe6542fefa271a961f9084a35f14c6f0b19`  
		Last Modified: Thu, 23 Jul 2026 23:13:25 GMT  
		Size: 75.3 MB (75310971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:df6232c7bca8b3c25f6b966083bf4b6e61f406c0c66a1f2d0054debf2d9ff114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5218959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8cb2352583014d0e249812a3aaa3142ba07fd525cf8445fddea649c769b0b1`

```dockerfile
```

-	Layers:
	-	`sha256:a3b96f235edd6346f32f03117ca4fd28a7083ad159214869476dbcda3b583a45`  
		Last Modified: Thu, 23 Jul 2026 23:13:24 GMT  
		Size: 5.2 MB (5209765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04aef5654898b4462b82afbe2be1037872fe38c45172651c7417a6ac9f5e5b93`  
		Last Modified: Thu, 23 Jul 2026 23:13:23 GMT  
		Size: 9.2 KB (9194 bytes)  
		MIME: application/vnd.in-toto+json
