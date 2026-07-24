## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:a82e9b8a0de1ee538bce44b7782fe48002b82356973417472d25ad33bf6a1ef7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d0955748ec9f644fe1f0a99317901ccd03fd9dcc177e832cb80d73d3652a6398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159057630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d61ecab3908134aabe236cba6f13e17c0ee0b389376819e43f5e94cb343980`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:10 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:13:10 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:10 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:10 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223448f44d10cf334df60359b6a797f846f7a4ce8c038a53beffdd4ebe2883de`  
		Last Modified: Thu, 23 Jul 2026 23:13:29 GMT  
		Size: 104.5 MB (104483366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:97084b5d10d01d9c5c582db58fec7403b684546d9a2861437db4537476bf7f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d766ba7ebaf1277c385e27b91e5dba7beaf42f988ee07c1cb5af963c7ca954f`

```dockerfile
```

-	Layers:
	-	`sha256:ab073f3b85671c0862429441ba209268fc778799ea91ef7b88ae9a538330d051`  
		Last Modified: Thu, 23 Jul 2026 23:13:27 GMT  
		Size: 5.2 MB (5234019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8f264b87b4137b79893e097cd9e3026dd5edf45bc8ff60907ca16cbe92a95a9`  
		Last Modified: Thu, 23 Jul 2026 23:13:26 GMT  
		Size: 9.4 KB (9368 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f8b558d784e78eabda37c879c74c519911e4bef2e6ec73e17ed81d4591801b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156842242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b184af99e0fa6261e2be3047504645b4487272df203d5716373d6b94ddf128`
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
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
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
	-	`sha256:2e78c0058b763cb4ae246051a0e6c044e9aa57e715014ee192d8e6928d5f30a8`  
		Last Modified: Thu, 23 Jul 2026 23:15:24 GMT  
		Size: 103.4 MB (103393010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:72c25ef53754d5343f4dc728d1ae07a27859fcb6525ba5f3b20e5e7340bf55fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76928d03b9080fe66e3e0fb61a09bffaf1e03fb6e68a0a7b0e2c3a34394fad2`

```dockerfile
```

-	Layers:
	-	`sha256:ee1e64099a935cc46aca222150e6391bb7a55cc659671ebdd1e3ff8abc48b97f`  
		Last Modified: Thu, 23 Jul 2026 23:15:22 GMT  
		Size: 5.2 MB (5232834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35881ee3d081113c0324868622ce1841c84f85df59e8e7734c7bb5582ed6cd64`  
		Last Modified: Thu, 23 Jul 2026 23:15:21 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
