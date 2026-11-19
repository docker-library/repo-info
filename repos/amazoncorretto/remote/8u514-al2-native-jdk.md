## `amazoncorretto:8u514-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:28712dcb5926f1f05e195496f7c18be72a5bc6372203a60a3991dc136e978232
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u514-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8483986cf0b3f84c02d8ef9703d27132629b18f93d792e73aa8af92e75f0c916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138117614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003f36779bab38b087f2520f608bb2e5e413181953c24a35089f7400abb546f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:46 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:46 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:48 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:48 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 21:32:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9729117ae9364c6d8fe8fbf58ce55bf2d18edb4f6ae553117e8edfa824ca2755`  
		Last Modified: Wed, 18 Nov 2026 21:17:00 GMT  
		Size: 62.9 MB (62929268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c59a713872919102b7aee161e94c9c6579c4a80371c30160373b671accc525a`  
		Last Modified: Wed, 18 Nov 2026 21:33:05 GMT  
		Size: 75.2 MB (75188346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ec7db6c3e8c93c850f48c62d1e0dbeb0c4f08eece3bc47f8619054aa474c477a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7d757d4e365e2ff5c354a67b98c821912348daf59b1934f61fbf341658a209`

```dockerfile
```

-	Layers:
	-	`sha256:48b2e56c433f3e4c5dd54bf96afd0938365fdafaf8bbc17dbb42c7b07f7651c1`  
		Last Modified: Wed, 18 Nov 2026 21:33:03 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24546d0c2e1cc5e195952aff371ff799f843e697b91f7eb415361427669eb588`  
		Last Modified: Wed, 18 Nov 2026 21:33:03 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u514-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:06a82aa423bb0ac335b045d1e1d5cd96cad4c001029bc775d78e8758edd4ce6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132741606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b394b9c0d948e02283ebd2200272931d8df4049386061b8f8e9820b1ad4191`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:49 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:10 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:33:10 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 21:33:10 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:bcb24dedbad65dfb6e85c3cf0a24a8dfb1c5baea614450ec3a4859c498def7aa`  
		Last Modified: Wed, 18 Nov 2026 21:17:05 GMT  
		Size: 64.8 MB (64776056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d49ea24a1db9248964b4647e95ebe045f2e1966336ae693047a466742a77aac`  
		Last Modified: Wed, 18 Nov 2026 21:33:27 GMT  
		Size: 68.0 MB (67965550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1ee739c9172b3d071bbe494935cb113f90ee2dd522ee1551a4a105f1c284ab18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41adace451a1df0fbaf4f0b565c05242a0fc4398c05e15e7c5252fa4635d306`

```dockerfile
```

-	Layers:
	-	`sha256:e2d93dd2a2d4d7120754608027abbb993af0ca3fc44ea23ad374ffc04950b82d`  
		Last Modified: Wed, 18 Nov 2026 21:33:25 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b445e83addffbf72f3458dd5647d2b8e6c231ab6c27821f032a7cd11e085eb42`  
		Last Modified: Wed, 18 Nov 2026 21:33:25 GMT  
		Size: 9.9 KB (9916 bytes)  
		MIME: application/vnd.in-toto+json
