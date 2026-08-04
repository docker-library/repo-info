## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:9d5d9bf34167df512541fa569770d5bccab11d2f0f52090f4093379be22276fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7f9f09945b61fd2e85f38861f78bb435f89b764690522fe526a807b85a6d10ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159055107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928ef23b3154135a5b24a96f98676ca4bc4c049ab987c0e5b1c2c5c0eaefdeef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:46 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:46 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:46 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:46 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76553fdb31d3674aa260d2766c1591905491875c7393a6f8e28c401937f54f29`  
		Last Modified: Tue, 04 Aug 2026 00:59:06 GMT  
		Size: 104.5 MB (104482427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:20eaa78e6e71386d605b95039d06bc58e1e7e9e24cb90a1741d78e0ef93d2cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7b637196fb60bf5dc70ecb209f5afbfecf6b7fd32785243e788567afc89333`

```dockerfile
```

-	Layers:
	-	`sha256:9a4848d659d069a6a31cfd3c2ed29814642f26f1a017aedffa9f3909655e141d`  
		Last Modified: Tue, 04 Aug 2026 00:59:04 GMT  
		Size: 5.2 MB (5234095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6804bb0b9599eb302f74322ec7682bbaefc1295ccd0d9ec1f2a4bd63df6eaa27`  
		Last Modified: Tue, 04 Aug 2026 00:59:04 GMT  
		Size: 9.4 KB (9367 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c85901519ce689c6005bba9084c9c99c48ac743ea2225cf47396307a227cb833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156839695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68c37886b6aaac310b243cf44ad7e90a900d70b5e9a7dbdfd35e955e2178a3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:30 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:30 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:30 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:30 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5174b3204513509c6c47337f4e2b1e043256537fc00159c4031987c8aa3727e`  
		Last Modified: Tue, 04 Aug 2026 00:58:52 GMT  
		Size: 103.4 MB (103391038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:453b66a2b2c23196063ceaaf54cbc04e5e772f9462013bf08e1597802ec58c73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee06072961d849ac6bd423385458b7762d60831ea3c6fcde95e8a1940732fd5`

```dockerfile
```

-	Layers:
	-	`sha256:251469d2d244a717db2e68267b22d14a8d47b6e928cc091885fbee73e8d48b89`  
		Last Modified: Tue, 04 Aug 2026 00:58:50 GMT  
		Size: 5.2 MB (5232910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c3787bd5cc891035929ac89e679bc1b717b8c9ebfeb6d3330126c10e273807b`  
		Last Modified: Tue, 04 Aug 2026 00:58:49 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
