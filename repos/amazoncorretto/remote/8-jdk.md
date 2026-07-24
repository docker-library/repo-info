## `amazoncorretto:8-jdk`

```console
$ docker pull amazoncorretto@sha256:05dabefe8bce54996eeecd3285cf0ac3629ed5fed378cd71c9a5503d07f00ce7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ce3d1beb03101523a5af83d2ba27f8f118c64a3b01f893236c39e9c2b8538118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172653662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25af33a20020f7f57d715658fed3f1c20d12782e8086f907669282609d1dd545`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:47 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:47 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:10:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe57f5f97fde731751f395e310a2724bdce42a4757204a447a89e087c3e4198`  
		Last Modified: Thu, 23 Jul 2026 23:11:06 GMT  
		Size: 118.1 MB (118079398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:28acf5c47c0594dc0204ecca7776a1ecc544f9e39e51030af1c1ab130fdb3e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe052ca7545b5c61374fe8261e77e23919ffc76d48d37a682e1141a9916a304`

```dockerfile
```

-	Layers:
	-	`sha256:eafa89798ef358260a47107d6518382020a94f7965ed322b0cc0ce94fbf3e71a`  
		Last Modified: Thu, 23 Jul 2026 23:11:03 GMT  
		Size: 5.7 MB (5706141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e115c69fc27415dfebe7047994fa22ac58d420a16e597f12b547e7f9820fde`  
		Last Modified: Thu, 23 Jul 2026 23:11:03 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:365e9250d43d252fde42453ccf84fec8f5692946cb9e5fbaaea35068ca63a647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171414921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6800a8d6ecea0c09002e9b0d6cff97ef46024b271507b9baf6741f1aa7a8a2a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:25 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:25 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e6fc3bc6b9cb04d504bc7d30c32ed9dcdcc8250eb8cff05726547a63efcbee`  
		Last Modified: Thu, 23 Jul 2026 23:12:45 GMT  
		Size: 118.0 MB (117965689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f6193484d19e8ff9fc138de2ab1e32f075efb7334c74f252a806a8de1e057244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20f190e74fac3b5306c529bec25c7541573f3bbcf4fc63d0b61f4db60ea1e70`

```dockerfile
```

-	Layers:
	-	`sha256:40a596ffa89cd152a877820a37488ce2b436098107f02d084d30cf4a5f16508d`  
		Last Modified: Thu, 23 Jul 2026 23:12:43 GMT  
		Size: 5.7 MB (5706443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81dab62d2db78fa3825f87671cfe2bca6ee9c573ec912b0ddbb49fc754a332fb`  
		Last Modified: Thu, 23 Jul 2026 23:12:42 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json
