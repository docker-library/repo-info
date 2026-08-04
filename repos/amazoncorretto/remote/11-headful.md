## `amazoncorretto:11-headful`

```console
$ docker pull amazoncorretto@sha256:ec304d29bde6e7a5cb9730b91dd23e5ffffef7d1499022100ca36958cd3756a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f3b0dc95b21845fa4c2e38e4230de84a8104f2f1a3605d4cd8ee452f8fa50848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131335836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3cd80e9264e10e015e5a1e0f4a607682a57a0c14e9bf8a2773793a47168832`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:20 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:20 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:20 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b35d604580e424b2acdf8c4ef3347122a1507f37aff0a0a492dee0f49a554`  
		Last Modified: Tue, 04 Aug 2026 00:57:37 GMT  
		Size: 76.8 MB (76763156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84f139a67420ee07ab9220060e49f08a6e7254a3dd26bd82f7536c1f88b5c85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d45bdc7e8ac1d93c2d1fee36bfb2b028ed9d115570e8ca3a90329dd8df162479`

```dockerfile
```

-	Layers:
	-	`sha256:a40e8189229f1703db1f4187de86cd35f9afc48f102b584103c4aa16424d88ce`  
		Last Modified: Tue, 04 Aug 2026 00:57:35 GMT  
		Size: 5.2 MB (5235634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a47aa15fc44ee5b62c97b5c4aff253088b3bfbe9ab26a25e52a25582dc87d43`  
		Last Modified: Tue, 04 Aug 2026 00:57:34 GMT  
		Size: 9.2 KB (9228 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:30a3742fcb2a1bc774cad3e190f2738aa775263254c0393303e2cc8e4b52ac37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129465095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502f1415eff2edbc7ea5e59d801bf89d7a711fd3fdfd23f94e91f66ac25b0c74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:06 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:06 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:06 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61980bc3399007ec3663fab1ccbfd6eac1357190acc2bcdbcc4b670c39ec762`  
		Last Modified: Tue, 04 Aug 2026 00:57:24 GMT  
		Size: 76.0 MB (76016438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:64d23651c28f719b65d523fb811c3f80693ff49a4edaa6c5629114a2720ad234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119a8d5420a46f62895ead4c9fa3d0fa4b0c759cd5198fff3fcfac30a699d8b8`

```dockerfile
```

-	Layers:
	-	`sha256:306b3b41989cb3be4a9feeb6a5f886dd146805689dce57471aaec260d1035c9c`  
		Last Modified: Tue, 04 Aug 2026 00:57:22 GMT  
		Size: 5.2 MB (5235267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6c537c2366894b973ddd4bd50b427065ce33c903b2d04ef25dbecf5c483f1f3`  
		Last Modified: Tue, 04 Aug 2026 00:57:22 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
