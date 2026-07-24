## `amazoncorretto:25-jdk`

```console
$ docker pull amazoncorretto@sha256:e2fbcfc775f590cb9eed93f0fe622f1c30aad26376163f1cee9631aed723245a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2ffa44b81bca89f9ad688bfae73e4a6d953a958efab0582b2c0b5b647f49b4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244050067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96480be678e0f0834d2e7add192f44fd1d419a390c6f759d39ceb7db78e22322`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:13:08 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964a6a5b83b71b12d012405abeb3132afef40960448d97a6a9166ab6b1482624`  
		Last Modified: Thu, 23 Jul 2026 23:13:33 GMT  
		Size: 189.5 MB (189475803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:20bb9d7ce5b82b372e69bbe8bb23835a2d596da7fa4f4bd90159d4edcc7744c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5354027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d942c05500edfc48238ace86df969efa33a76274a2cf69c6ba8fc5af842a368d`

```dockerfile
```

-	Layers:
	-	`sha256:ae52702ce5978a930c6caf3c28b7dd55579b840f9533c1b0e86258c7d6e5cc11`  
		Last Modified: Thu, 23 Jul 2026 23:13:29 GMT  
		Size: 5.3 MB (5343377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5807e14f1aed8576309a461044c7fae288e12ba73a0cdf16ad1cb4f9d739d377`  
		Last Modified: Thu, 23 Jul 2026 23:13:29 GMT  
		Size: 10.7 KB (10650 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:237f9f00a12ad5e69ce40f0c7fad407b3ee96919d00c40f0363e52c988f95811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240826101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de2bf123ab57834d1743a0d9347f2808a4e5e7a53710773829220453fcfeff0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:03 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:15:03 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:03 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921ca3cd311a0af902befa8a1430dd08383471940b496e6f90ba8db99517eb23`  
		Last Modified: Thu, 23 Jul 2026 23:15:29 GMT  
		Size: 187.4 MB (187376869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6cd6e19c16ca5900f8b3e4f4ac5c750723b68b8e07ff8436d7088ebace56815f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5353136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183b23f9a7e3b66c681390a1ef10b61d4f24948d8b163cdd40bf9cfc211991e7`

```dockerfile
```

-	Layers:
	-	`sha256:eac49fdbf16cb0fc1c37a40e0cf9da248a4fca55f43041f3178d70af5f134015`  
		Last Modified: Thu, 23 Jul 2026 23:15:25 GMT  
		Size: 5.3 MB (5342358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00195285ad5230072ac70f3c2d0fc9dc6f7b346e6a7fee12257c5c3c43099f95`  
		Last Modified: Thu, 23 Jul 2026 23:15:25 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.in-toto+json
