## `amazoncorretto:21-jdk`

```console
$ docker pull amazoncorretto@sha256:a36b300f5edf951dac11293b6f090ff0b29f2856b9e72582a2353c87aa6ae715
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2ad39c11801f32d55a7f20b40bc985c6f3e5e920662d684ed17a886c65d4fbc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.1 MB (225092700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbcd268a3070e8065790a56c538c2b696d09362c787b695e301f54b16be6ff1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:46 GMT
ARG version=21.0.12.13-1
# Wed, 21 Oct 2026 23:28:46 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:46 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:46 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69e771ce941f5b6eecd0935a142528c16f1b8296b2ebfb3659b930364109a4a`  
		Last Modified: Wed, 21 Oct 2026 23:29:08 GMT  
		Size: 170.5 MB (170461930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5dd196044a251926786fdc01393dd55d66d30f107b964f56b23525a3097da236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a945757c813b3e8eb445bb8cef9b470f376b60190f4311a96f8ca9f8c1a316`

```dockerfile
```

-	Layers:
	-	`sha256:5bddb96e86744eb36837d6d1ccd71a54a970559eb6cb739e197cb632448a362e`  
		Last Modified: Wed, 21 Oct 2026 23:29:04 GMT  
		Size: 5.3 MB (5331911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c18fff1051dbe5cbe03803c78f92a3624e027ad8080d702632f441083a85bf7`  
		Last Modified: Wed, 21 Oct 2026 23:29:04 GMT  
		Size: 10.7 KB (10659 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e79039d5685d5160b7f951cac36ca3341c432024d5610eb92989026cc25e20b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.2 MB (222249790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef4977accef3e536eb1f07b146680adb31a2606ca5417563b943206da2a788b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:31 GMT
ARG version=21.0.12.13-1
# Thu, 22 Oct 2026 00:20:31 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:31 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:31 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542142d6f6c0a5c14eb4a5ffd8afad7a596be76567755ce16e9d35c214b9e9e3`  
		Last Modified: Thu, 22 Oct 2026 00:20:56 GMT  
		Size: 168.7 MB (168745392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b2f2b48cfa533a4a163fe49ca99811ad7bd5ef2592bd58902b2df4da41b0ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63155417e98f2de83652494279a1fb5707f10fd1ce8c6e6dd4eb7150907258e4`

```dockerfile
```

-	Layers:
	-	`sha256:97c4a95b3e3e841f35393cce2720dbd24b5d5a5f96b7e13d524eaa1a940053a5`  
		Last Modified: Thu, 22 Oct 2026 00:20:52 GMT  
		Size: 5.3 MB (5330881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a5afd28264b0c02e9c8ade2103fefecf10cf93fb72979e7f38f67a1f8cd7283`  
		Last Modified: Thu, 22 Oct 2026 00:20:52 GMT  
		Size: 10.8 KB (10788 bytes)  
		MIME: application/vnd.in-toto+json
