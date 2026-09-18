## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:b160d82c64af32b4ef1c6d3ac18fac67d3192d24f13471d359b10bb7eaabb81e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2f470265fa2642b986e9fabc9e716500a5fc4061ff10f77fd61861b948c94f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137770734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53683762c6d4992bf2dc8cb3806c7c31fb5a4afac75255e5b10d8d78965fd43c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:18 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:18 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:18 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97a9e33639df5c70729a2e639de30f151de76b9934f53b5fe745015bd12c9b2`  
		Last Modified: Thu, 17 Sep 2026 22:22:35 GMT  
		Size: 83.2 MB (83184452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b0d0bf7deb9a9511af8a7406040a07f9172325da0668f10fd312703c4529a933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90710f4bf7d1548bf8db52f50bb0f5a450870f9010190de291683e3dad4f303`

```dockerfile
```

-	Layers:
	-	`sha256:8a37ee0ee307adfb1d9cbdf1923848114030b459ad82e02a0b6b80c3d03cb0d0`  
		Last Modified: Thu, 17 Sep 2026 22:22:33 GMT  
		Size: 5.2 MB (5222540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d438c17842d59f08be486b98c67008869f57f3f9e6d7b283eda71321b92fa4`  
		Last Modified: Thu, 17 Sep 2026 22:22:33 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:19e107ed05082aba8036fafee90c5cccb0b847ad87302ca6a8ef703e8fb8495e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136067589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:895704d9068273af8dbe803e2f022052be7e58b5345257c598e7f4418332b70d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:35 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:35 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:35 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:35 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1a3b7eb57cc801f5eb6ff53b571dfd69edffa66d2998635d59951d6d407c71`  
		Last Modified: Thu, 17 Sep 2026 22:46:53 GMT  
		Size: 82.6 MB (82615016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:551c979138173f0f6b648c8c2ee19ad31a1e50a1b214964a5ea4c1ab9e8a298b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e7dbb54f09da51398fa2a976f11b4db527b8378d5585d30163453d6aa89a87`

```dockerfile
```

-	Layers:
	-	`sha256:cb69d80e304f028ecf9e5966bf02d34fb75f34c50df4bafbfde8d5460b6fcc44`  
		Last Modified: Thu, 17 Sep 2026 22:46:51 GMT  
		Size: 5.2 MB (5221344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21a3f670b124f90c0886b2152f975e6ff35794bc80d890691ef16e31ff731211`  
		Last Modified: Thu, 17 Sep 2026 22:46:51 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json
