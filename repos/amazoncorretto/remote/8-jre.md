## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:0219b8004144865326b60acbef8108b889552a472c7f5174a565ede4bcaefc43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:72bdcd6047de50b824fc7262cae4689a2084bd306f3db68b50bf3d7868fd8812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109314577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b493995771d2a5c183ac677ddad6e76da399cf22345a1eb5168d8a17ace79058`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:35 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:35 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:45:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc637919de34b2a2de655d7df9a1e1d9164e280cd9fa7239a878f365b86d7`  
		Last Modified: Wed, 18 Nov 2026 02:45:50 GMT  
		Size: 54.7 MB (54745284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:010dfd69a1ac52df43d1d942209207ce55c3a72b3b1c0b5495d73307d0daeeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c619064e525475c6cb4b973b2b0d8fe64387040589aef68046a01340fd5844`

```dockerfile
```

-	Layers:
	-	`sha256:d6ed315cb6f17668c898cdeb8313e9f4c967a8607736c1a45ffd35028c1def88`  
		Last Modified: Wed, 18 Nov 2026 02:45:48 GMT  
		Size: 5.2 MB (5218277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de505278ea445e5567decf28fd22a25c64812b167057c84484a8013782cdc502`  
		Last Modified: Wed, 18 Nov 2026 02:45:48 GMT  
		Size: 9.8 KB (9786 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8b1a111f83c551ea3df25c990b5ae5a3485aadb17f7d3d3c81f0f47830a5dfa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107936320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d440469a604d4218f78158691f6e32f8a51b21237f8ed62338e4b22a35cb53`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:49 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:49 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:45:49 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7f3badb45438429cf2879239878ec83949ff7635bcf49ede25ab85b03f0c49`  
		Last Modified: Wed, 18 Nov 2026 02:46:04 GMT  
		Size: 54.5 MB (54483243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5d31262ec4ebe93bb7b7e5fe96a5f226600b7d6fc4760c5c99d36e2707293d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a40ca26a3c3910c27b53d767d4fd6e2011360a1a58c89b9a69519eda223a2e`

```dockerfile
```

-	Layers:
	-	`sha256:893578fac9a8c39615cd29ed9d6a8606b1a4b1d242b1ca9d1601833d2a7aca76`  
		Last Modified: Wed, 18 Nov 2026 02:46:02 GMT  
		Size: 5.2 MB (5217970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df0c2e0a0fb3fdd4feb29dae10a7d04da3884aa70a76e32cb124e7ab250b6eaa`  
		Last Modified: Wed, 18 Nov 2026 02:46:02 GMT  
		Size: 9.9 KB (9878 bytes)  
		MIME: application/vnd.in-toto+json
