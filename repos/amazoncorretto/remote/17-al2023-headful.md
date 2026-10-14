## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:f51a26432d2969b136cdd244b129c64ca31b092cdfd8f74048517825d4d6beed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fef01115f1999b795ef59b9b5964c1124ddbe75012562ed19978532fb3ffc1d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137853306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6783a0f55cf9efa172c15ab80b00490bc500b86f42d6b9c37f98bf3c16d9705`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:32 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:08:32 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:32 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919d891c12216268019096988588f193592f1996cf6270b5d839931d1e20ff3a`  
		Last Modified: Wed, 14 Oct 2026 17:08:52 GMT  
		Size: 83.2 MB (83222536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4f31df309588f668a170d72cdc3ba97893e295cb056afe2e855fb90ea8740cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3744afd87e7727d086d90ebfe2fb88bbcd0c00fd82e2fcd73d1efff517e2cf`

```dockerfile
```

-	Layers:
	-	`sha256:b2b36b5080bf8f0fae71aa5680b49f0c642888883db7c04035f23d5706ef7d43`  
		Last Modified: Wed, 14 Oct 2026 17:08:49 GMT  
		Size: 5.2 MB (5222541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce4eb26404211da60a0f8b11e4ed56d2ffda5e059ceb900c79c3293419dfb5d0`  
		Last Modified: Wed, 14 Oct 2026 17:08:49 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:71e32cd3e1e5beeed893d05b96169229d0d564588d39f0a6e3e4816141665e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136154866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e9ff171f759ad80440cdfc7ed296edb49a58fb6959e789d784fe515dd877ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:07 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:08:07 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:07 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:07 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81424c0765148cb1ac20e8862eac424f38c1f64dc9eaf30244c861fb0fcab107`  
		Last Modified: Wed, 14 Oct 2026 17:08:25 GMT  
		Size: 82.7 MB (82650468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:91ed09e98b95abea01e93c4b4ceea8cfe303681b48916871bb7233a873daedce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e839dcd1cc52d9fadafe9e28225a8bfe5b9d6ca94edfc774eb379294d3e8aa7`

```dockerfile
```

-	Layers:
	-	`sha256:43abefcac820a6547779a8cd29ce4ed9e85324fa72ce63c333c0188c69ea13aa`  
		Last Modified: Wed, 14 Oct 2026 17:08:23 GMT  
		Size: 5.2 MB (5221345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1864cd0164d08f6bcb04d2faaa67df2665a4375e900075388973adc072de669`  
		Last Modified: Wed, 14 Oct 2026 17:08:23 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json
