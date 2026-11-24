## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:411162c79452155a12b81211dd0abeeef380f6903e4d0468c06c15c4908cfc9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c4f72b56830c6c711d564dedb71a995181b72f04e47f888d350045ff02b559a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158411623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe358769ecefc5ce81b81d51e8f4adeeef0e0fe593a19da6b8c3f620244cc062`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:43 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:11:43 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:11:43 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:43 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:43 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a35db00e25b2f713a752e55b848a6887745ce0e85110f3af85b91c19989e48`  
		Last Modified: Mon, 23 Nov 2026 21:12:03 GMT  
		Size: 103.8 MB (103846454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f8ca43ef152bdd777eeb415aaefac383e8f14c96828ae133dd557ed6ee04644a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55bcb7998f8136b5049d326a66d762ccda6b05287a29a817b4309fe083a18f79`

```dockerfile
```

-	Layers:
	-	`sha256:d38cdd7a3448a0f829bc3b4e3abb1a4141909e1bd7c8e3741838fe25998b4ca7`  
		Last Modified: Mon, 23 Nov 2026 21:12:00 GMT  
		Size: 5.2 MB (5208695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359f0ac8552b68ed839ff3936c3d409dd02366f7281683d4082a40bfd3b25b5e`  
		Last Modified: Mon, 23 Nov 2026 21:12:00 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d0f2c886dde27da1dcd629db99701cc7a1157922d8a034ae5f6303dd0422886e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156205132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afdc999c32749f7874c379205b82ad2e99ad000489fb0b23d4f0f3c97114f35`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:07 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:12:07 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:12:07 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:07 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:07 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f71572c0c08967891806d06402caf6cf61a4c4efd84a21b42fdd9f00996981`  
		Last Modified: Mon, 23 Nov 2026 21:12:27 GMT  
		Size: 102.8 MB (102755548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e0bc0d28ebac6f6f9ce5e16b102332b9b0072c4bb0c36de56e2220d4e763acac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b5eec79cfd3c615575754432374eba5ba92efa9743cf624c8dfe99980fe199`

```dockerfile
```

-	Layers:
	-	`sha256:bf40ac7c192d9b7ac7a43803a798b96bfda7fb75f2f5f6219c1c27a6d61f32ce`  
		Last Modified: Mon, 23 Nov 2026 21:12:25 GMT  
		Size: 5.2 MB (5207507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db15218e465a3ad2b40f35d2e03ac972e588eeb88b39615d46dbfb599ed38d97`  
		Last Modified: Mon, 23 Nov 2026 21:12:25 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
