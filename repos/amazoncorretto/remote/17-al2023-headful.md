## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:1db658d339f617690bf89a07cfbba7a9c5864de9345e606a186a9e3633b9ff58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:205f34d8e06c00c95954a5461449f66608d8ade0b795652786293c74a706b29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137765437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2602f9a70e7ba5fe12cc81c68bba047296e86bf8c9a45f3e549867aa18b17201`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:04 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:12:04 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:04 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:04 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c324986eb72cf181a67e5e278ba38fa41c5f2ee0c3c3b9aaaa79c5951cdf03`  
		Last Modified: Thu, 23 Jul 2026 23:12:22 GMT  
		Size: 83.2 MB (83191173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6a338e1bd662d51e199ff74b373ab0e8a9bdd6037f132f788dbc8d6f1fe5b58f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0c7402341ea4d8aa6b8d8aec8d9fe13d609d9255f5aeca6884f60ba89b79f3`

```dockerfile
```

-	Layers:
	-	`sha256:7568fdf992fe1ef2de4cf6b52a6c635265af9f228615cf2157086fd17d4537a0`  
		Last Modified: Thu, 23 Jul 2026 23:12:21 GMT  
		Size: 5.2 MB (5222454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f856e3bb6a79bbd9931aca4f674917ef204b3453a4f531ccf5935bc04ccfa061`  
		Last Modified: Thu, 23 Jul 2026 23:12:20 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7a5a6096a30dc74be748f9509744dd3e0a079efc3b0206d646d7f189281286a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136068408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2948a844f141956a1d52c521aac9f692d7187907200b11ebe6a61eba421ddf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:47 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:13:47 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:47 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e582d26e2e05a36c0553485c7f430569e89a8932ee828df652c3ba1a98bef5`  
		Last Modified: Thu, 23 Jul 2026 23:14:05 GMT  
		Size: 82.6 MB (82619176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ff7abfe5ff3e4a1e86562396414d574ff09f3436ac8d54f294fe3dbd5d05982e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c3ab8bf5013b45e5992a484c93bef689d0c3a599ba9ef1400a958990927e75`

```dockerfile
```

-	Layers:
	-	`sha256:58b44eba91aa91cfc88a68fb3e83d0c0c1a87af037a783623a1ac05731d64492`  
		Last Modified: Thu, 23 Jul 2026 23:14:03 GMT  
		Size: 5.2 MB (5221258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c0ad49d100e3621c8df61a22d48492f03f78c62b9f1e87645e29084e3d09233`  
		Last Modified: Thu, 23 Jul 2026 23:14:03 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json
