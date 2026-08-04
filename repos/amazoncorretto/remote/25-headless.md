## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:f388f9e66b3ba56109683d63539ee7b65797ad35ae191753ea98435c9d5f18f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:80d1c046b2648a0fdccc1dcc0e9d363277cc961545a39f371164163c3b37b286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158330381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35724c1eb7a0396278ba9d3bc0fdaf10f9fa86bc0156875a0048d0cc3615e168`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:43 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:43 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:43 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2170e51f29e37b537ee2fdd9ea2a6d0fa626e21d4e1a1e9873a7bcca14c1680a`  
		Last Modified: Tue, 04 Aug 2026 00:59:01 GMT  
		Size: 103.8 MB (103757701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c2a941c2c22a98090d828968dfc509217ca6a80ea255af086a15cd58f4e36188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0beeeaf3916fdbc950d6fc6f871cbc99cd4c3d4c437a8aceb79552d05b6313fc`

```dockerfile
```

-	Layers:
	-	`sha256:129fe2aa17e7f81ae4533a644d34836e93d7bcad80c07866ef90c801c0448ecd`  
		Last Modified: Tue, 04 Aug 2026 00:58:58 GMT  
		Size: 5.2 MB (5208670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aca3a36a6940626a6007bea0febaeaca3ef82b5bb08e88d13074606eff8a497`  
		Last Modified: Tue, 04 Aug 2026 00:58:58 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:58e0c32b04bd716e680a51b947f1faf254bace4154b5b03f508e8fffe8dc4a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156135857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5782f6bf27d4799804c5ff944402e76109edf858d3271d677da2e5eb9ec64a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:20 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:20 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:20 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:20 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5820b3da33fabbf7585f8a1b57714f4951b14d1a9db066b997841d63cc544ac`  
		Last Modified: Tue, 04 Aug 2026 00:58:40 GMT  
		Size: 102.7 MB (102687200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1985472e075828df0d2b5c205103b809fafb9626d3bb6c09bd227b9331168efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306a74d187d9667a1fb39530b4ebb0895a83be8eb13dcf72fb4b5f17458f2d8d`

```dockerfile
```

-	Layers:
	-	`sha256:23998d9db48988a0e6cbfc74a0e87051adb945677d2d1c6994130c343976ba81`  
		Last Modified: Tue, 04 Aug 2026 00:58:38 GMT  
		Size: 5.2 MB (5207482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2f5b3e7b095c7a6c2c6fdb1c924e331597ab787ee331e085ac892687691348c`  
		Last Modified: Tue, 04 Aug 2026 00:58:38 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
