## `amazoncorretto:26-headful`

```console
$ docker pull amazoncorretto@sha256:fdb6ff7762fc4bbbe00ba0f535fd54fdada3801d0e6b572f18face2aa2944b48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3977684e619308627616a8de1c43a7e76bd94350d3a8345731ce9a0b16053542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161198792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733d5bff6907608303e89b2892feb68483ee81a11e62697c83a12c4f954ec7a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:36 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:13:36 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:36 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fe129e258f1e244659803bf4b5fa96c21916fbcd5daa3970680e83e89689c6`  
		Last Modified: Thu, 23 Jul 2026 23:13:56 GMT  
		Size: 106.6 MB (106624528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ca5b87a5bc76d54ee0ab757c0e279f60103e9664a36b32c865326aad2aab72ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd505666d2839de7784b89fba80f280a3d8ee507b23a656c56143e4ced263bc`

```dockerfile
```

-	Layers:
	-	`sha256:54596aa84404ef3a02d6832d0196636f2ce41f55e4162584fc93a438d9fb743a`  
		Last Modified: Thu, 23 Jul 2026 23:13:53 GMT  
		Size: 5.2 MB (5232383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9fee807e52b31aecf8a6f67d2749041d0b9ca28656ef273bba464e7067c2633`  
		Last Modified: Thu, 23 Jul 2026 23:13:53 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6bde2c1a0c8b10dead93d636ff379fc3fce57c3fe952e88c7db14b616bda1e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158975508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2262db87876e42b1c48b5d6153ec5c7fb3df9d21cf05372e17c014638226d872`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:30 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:15:30 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:30 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:30 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2b6c979a1a7d2af5d0d48f85c1fa4a2399ca91434ea2bb2c04a19782843cbc`  
		Last Modified: Thu, 23 Jul 2026 23:15:51 GMT  
		Size: 105.5 MB (105526276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3c46f27f578c0c6937fe8e7b28bddda9d34d7b1c01e71ecd5d994d6bfef80488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547c76446fd858d01f104fc4a2e6d27b50f8f2a9484b9d517da43be11e409e14`

```dockerfile
```

-	Layers:
	-	`sha256:0578ea0590ae0cf8caeb2ecf9f5880bd8991ec30b69b7bc435828bf1ac241505`  
		Last Modified: Thu, 23 Jul 2026 23:15:48 GMT  
		Size: 5.2 MB (5231196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94e62062c4cbd234858849869161a096e3d8975de6933ce24a062552f9ab0da1`  
		Last Modified: Thu, 23 Jul 2026 23:15:48 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
