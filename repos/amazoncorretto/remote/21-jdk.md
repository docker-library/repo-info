## `amazoncorretto:21-jdk`

```console
$ docker pull amazoncorretto@sha256:c25aab9ac791b5af25a995d2fb997762b3abc546b9552af815b4b20d79eff2c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e55a08687a380307ad196337131f6f7696546be747d5a0199148393cfc34d8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.1 MB (225092708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad37326a816a5abfe88a1eff1beacddd21b388f14cd3f25c1f7432d52007d2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:26 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:26 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:26 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:26 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6584a5c3a7909ba4c18b6d037cae759229ad37eb6e00ec036d91269a0056827`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 170.5 MB (170461938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:311bcab49abfeccbeb0350ab72aaf0bf4a6a02db01be1902b1e9bd5c29778b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac0003fff49ed0c7d7aaa71994b44596ad80564904a21538fc6dc5faecae1ed`

```dockerfile
```

-	Layers:
	-	`sha256:02295d10ea1d7355d100ee7e164a750305e356f845ce2491c2c94a79050a3993`  
		Last Modified: Wed, 14 Oct 2026 17:08:44 GMT  
		Size: 5.3 MB (5331911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fc698ab23ead384bc0e1d5c89a83b2134627b83c7bde859cabe4519381d209b`  
		Last Modified: Wed, 14 Oct 2026 17:08:44 GMT  
		Size: 10.7 KB (10660 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c7be90ab8061b2360d35912f93101e14476d56ef1a38a392c42a81b6862bef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222250054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727cc4eb9f6889c7652cac5bd016183456a8ed7b171fe468ef625d447411df43`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:25 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:25 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:25 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:25 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca7d2b9a32ce878e9a6c9c4e2beb047fcb9a3c39d653ebcc56c7e27564da16e`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 168.7 MB (168745656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c56ffff8a2b45077412419a547168bb2df957a27fa8d9de28048ee11eea416f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7bcedede8cc674df1b4b3a7449072d67c7a2e97dfad2647382737191eee719`

```dockerfile
```

-	Layers:
	-	`sha256:852e9df7d3ae6a89371f48471f7d1353558df666f40c7d4e6c2e3193475a7914`  
		Last Modified: Wed, 14 Oct 2026 17:08:45 GMT  
		Size: 5.3 MB (5330881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c31569b6da02a164132af79fab35a1e955fea1cd378ab0eeea0e461a70728f0d`  
		Last Modified: Wed, 14 Oct 2026 17:08:45 GMT  
		Size: 10.8 KB (10788 bytes)  
		MIME: application/vnd.in-toto+json
