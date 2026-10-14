## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:ae78530106cff63837610aa2c0c3d55afd9ed7ac025585b0d7ab5efe6aa7e045
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0662c0cdbfce9f6cc4124bf3823c38478bf6b15d03644fca2496aa850867c7c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109354952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa13b67d1fc6e6c68a08402a0487810f1174823e7f9dc1c2fbf36dfee8e907f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:28 GMT
ARG version=1.8.0_504.b05-1
# Wed, 14 Oct 2026 17:07:28 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:28 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4b4c4fa9fabac19d1254c651a419b61c733472e8da448c2640556215f12ddd`  
		Last Modified: Wed, 14 Oct 2026 17:07:42 GMT  
		Size: 54.7 MB (54724182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c2e8adeb38bd6dfbe9d7c7ebe71d4b1215d32b32974d4fbc8ac8efbe50b0fad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2207addc4cba173f72d7bad4780637a3eee1e86c43229d880cae1c80a672f94d`

```dockerfile
```

-	Layers:
	-	`sha256:2931552979881544ef277266799ac3045cc0ecc02ae80235677560290e6ea955`  
		Last Modified: Wed, 14 Oct 2026 17:07:41 GMT  
		Size: 5.2 MB (5218261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1acaa530d8e00c6b3fb94d2d6cb7b2b6af546d77b198e661e2083c394c5d89d`  
		Last Modified: Wed, 14 Oct 2026 17:07:41 GMT  
		Size: 9.8 KB (9787 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:530342b674fba73853ac56fd84073dbfcc83953960a22146b9e96fc200b56447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107959917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf396f3b1b8d5ef5353499fd2583c34e1ef66fdc06edaaa2cae6f45cf28bb48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:08 GMT
ARG version=1.8.0_504.b05-1
# Wed, 14 Oct 2026 17:07:08 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:08 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a30770cfe8840da3cb3aa6f3d5bfbf7e31b0385929e21dfccc807d3ea48b0bb`  
		Last Modified: Wed, 14 Oct 2026 17:07:23 GMT  
		Size: 54.5 MB (54455519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ebddb40f38bf9e1ddc6628592d0fbaaef5a2ab4026a6d26854fd1bdfe9732fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e521ece1038acc68e3b589128fd869153b14a99fdccab16da0e6c9a1e1ccb29`

```dockerfile
```

-	Layers:
	-	`sha256:085698bb2a182290ee77941795b342adb68748677d4bb273351593e7c9b981cb`  
		Last Modified: Wed, 14 Oct 2026 17:07:21 GMT  
		Size: 5.2 MB (5217954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fdd76cf5106abf0eb2a371d3f11ec79109d6deb3c8010a0db8d35dfd87638c8`  
		Last Modified: Wed, 14 Oct 2026 17:07:21 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
