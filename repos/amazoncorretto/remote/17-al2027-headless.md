## `amazoncorretto:17-al2027-headless`

```console
$ docker pull amazoncorretto@sha256:b5b33b4329f14fc4d52fec746e00f5660abb3ed7857d154a5b3eaf9292ed0a3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2027-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d6c6743defa4d41b8ef5aec3bcd4d622d6896cf8604e7b690f10c72ee18cd9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127112969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f018a569b4034c9300a5b4e432951b306270c4fb66eb28c2326160637c696d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:10 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:51 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:33:51 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:33:51 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:33:51 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:51 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:713da152d33274d711b748fa0018ee981140ec1ddea39655f9e477d1be7eccc6`  
		Last Modified: Wed, 18 Nov 2026 21:17:21 GMT  
		Size: 45.6 MB (45646491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a7466e1ded9a3983a3fb6e36716c97cfece638b714769a8f8f1a0d4987e76b`  
		Last Modified: Wed, 18 Nov 2026 21:34:06 GMT  
		Size: 81.5 MB (81466478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:981ee42c44f743f29366138e88c03d6418cfbda337ba07d88960fe274c3d0b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2954885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2b9babbd9bbaf28cb45e3185d6d0b4f6cec505a0efc4465c9592592a42e696`

```dockerfile
```

-	Layers:
	-	`sha256:899563a91a56e663d1b15450363e73ed0f07cdca5b079e36adee2eb1fb43b707`  
		Last Modified: Wed, 18 Nov 2026 21:34:04 GMT  
		Size: 2.9 MB (2945929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f0890931a9d349127e52cf40510ece65b91de98a8cac10cb59a1997c9db7362`  
		Last Modified: Wed, 18 Nov 2026 21:34:04 GMT  
		Size: 9.0 KB (8956 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2027-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a7d79923c3d1c47ec9488c21d360e2ec4de07d5cf3ef8ffc4397d38e5fca017e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123033550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e7fa3c52d6232ecc1e5c4f444b21cc88ab91a2fef29bd9711d337a7454d4f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:14 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:14 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:19 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:19 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:19 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:19 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:36b7d5c4fd450b30e5fc5b502fb784c91c3e88bce438c8709993b6db627bd46a`  
		Last Modified: Wed, 18 Nov 2026 21:17:26 GMT  
		Size: 42.6 MB (42641684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133d450dddbacc2db0bb1e92606cc927888b7617b8a31d8686f63d2cff670e15`  
		Last Modified: Wed, 18 Nov 2026 21:34:35 GMT  
		Size: 80.4 MB (80391866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:29a069480ca1b26ac9636c3d0322e1439ffa490640a40d2bc9c1fef87262ce71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2954289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc08c3d730561b9fc802e6d8978dc8267e47dc31f1c584aec76628e4e764912`

```dockerfile
```

-	Layers:
	-	`sha256:c4ed18813500844bf2085ab12fc2f24652cfb40229f74b557111c503dba4a8a6`  
		Last Modified: Wed, 18 Nov 2026 21:34:33 GMT  
		Size: 2.9 MB (2945253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc1e32789d79dda9823c0929789db0ae24607e97ac566436a49a2698e3d99a57`  
		Last Modified: Wed, 18 Nov 2026 21:34:33 GMT  
		Size: 9.0 KB (9036 bytes)  
		MIME: application/vnd.in-toto+json
