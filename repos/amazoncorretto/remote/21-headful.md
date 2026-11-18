## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:db97f9363d927cb1699dae89470a168836aa2a57c158a6c0c7087dcb8b9657e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1eeb087746e9e08d4182b622dfe62441815bbe4a7623e6c5276610aa58509fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144814296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0829ff131ca4aa47c61e67e0fabf647db7bf380cfa2bc5fc9bedd6ff5d313e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:13 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:34:13 GMT
ARG resource_version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:13 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:13 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:13 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aed1ee076b5850163be5bcb0661d13fbd0eb1bbd56621147cc7fe53087d34f`  
		Last Modified: Tue, 17 Nov 2026 21:34:30 GMT  
		Size: 90.2 MB (90245003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:665fbb5bb232655b746922386299be09ef8aa5e3646d75040376bd5308a18419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa748820ad56216718a2058363da2fba2605e309459f11714d78a600f82a19fc`

```dockerfile
```

-	Layers:
	-	`sha256:e316830c812c37652ad0447aa4aaf3fbc714985d8b98ba4c3ab984a8d1190ed9`  
		Last Modified: Tue, 17 Nov 2026 21:34:28 GMT  
		Size: 5.2 MB (5224183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:466afb61da87ce46ca28963d02827a83ac548b91f6b37baae0542fc915f90d4f`  
		Last Modified: Tue, 17 Nov 2026 21:34:27 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cebe2391fe36cacc6b1d87f1088dc6ca3bfac896bcba7b3da7939a9034d0020c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142835682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6670a413996b1435760c90595ffe86d38ddc0936fa8941ff6aa110b32d647d38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:16 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:34:16 GMT
ARG resource_version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:16 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:16 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:16 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f895941d9e993c9dfe3de78878ca73b5b99b87372dd0feedacbbb0b4bea099`  
		Last Modified: Tue, 17 Nov 2026 21:34:35 GMT  
		Size: 89.4 MB (89382605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6e5b27ec687e9b38c23ac36abbb74cea3fe24739491247b39020f0063e4aa275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffd2bc98d944425dd62a4e93fc004cd533cc11405c6736a9288a31a4e33052f`

```dockerfile
```

-	Layers:
	-	`sha256:110be982a8624e4860c597c4c9e0b0a0e1bcf2b4f8f04d3e6e49f29cb48959a0`  
		Last Modified: Tue, 17 Nov 2026 21:34:33 GMT  
		Size: 5.2 MB (5222989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d2e667769a4f8eadf16536135b42ea473938900d36d422f8797d92d17c18d12`  
		Last Modified: Tue, 17 Nov 2026 21:34:33 GMT  
		Size: 9.5 KB (9523 bytes)  
		MIME: application/vnd.in-toto+json
