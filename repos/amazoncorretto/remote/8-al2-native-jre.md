## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:c2604ff67c5913cbd3769421950fe90bd775e98bb202a5be0509782947337229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1d92ff1632dcb1be7d35fa949b2098608d66f7146f9f6f3fcc3a97a2ebc5dbc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123479153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753c7b6bd6004327fd9e85d869d56de990b9dc3b773ae5c6453b12dc062a3b20`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:46 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:46 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:37 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:37 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 21:32:37 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:9729117ae9364c6d8fe8fbf58ce55bf2d18edb4f6ae553117e8edfa824ca2755`  
		Last Modified: Wed, 18 Nov 2026 21:17:00 GMT  
		Size: 62.9 MB (62929268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780874e93e230cad772dcabe5cb7c4f8ffb8b7ce60af03e3ba81cabc7f32886e`  
		Last Modified: Wed, 18 Nov 2026 21:32:51 GMT  
		Size: 60.5 MB (60549885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:98049d8ca8c3fcf3386fb6f35489dc94e1f65d1f7283f696e4016d5b1f1d8acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5983150bf1151f988cc5d048fd017cfb41e1ee29ee5fa0b7196a4081d5cfdb6`

```dockerfile
```

-	Layers:
	-	`sha256:d310866a0c5434fd9644bf3d283f929cff012a39fccb88643ca2af284982a0f0`  
		Last Modified: Wed, 18 Nov 2026 21:32:49 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2572707428eccc3440717033933817dedc9168b6d0b51e987739802fb56f40fa`  
		Last Modified: Wed, 18 Nov 2026 21:32:49 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3210c9a3413ca89311a0394cd3fc348a8bd6f12f014d5b46e835d1199e0a3aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118029140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089c75ae622329ee1f24dbae165a2521fa33e9edb98217408cc456e8f5651ba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:49 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:57 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:57 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 21:32:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:bcb24dedbad65dfb6e85c3cf0a24a8dfb1c5baea614450ec3a4859c498def7aa`  
		Last Modified: Wed, 18 Nov 2026 21:17:05 GMT  
		Size: 64.8 MB (64776056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3c76bfaa3e6e0671cfd1a78700a687b7893e3b3568b2029dfbd1a6a60682a2`  
		Last Modified: Wed, 18 Nov 2026 21:33:10 GMT  
		Size: 53.3 MB (53253084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e46db7c4a6e2700b4508a4c84629d4542ec68303726e4aa0a65dc0d503016dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe32b6d55b3ff7c28357950a65525813241b822d4016377520f1f0d2785569f`

```dockerfile
```

-	Layers:
	-	`sha256:73324f15a827119fbcf31946009b2b719986d321702cc0d843b1237c046dcc63`  
		Last Modified: Wed, 18 Nov 2026 21:33:09 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6662fc6daa9a22306e287cdf8acd35e7f93a0725a58df54fd658aa4709e406a`  
		Last Modified: Wed, 18 Nov 2026 21:33:09 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
