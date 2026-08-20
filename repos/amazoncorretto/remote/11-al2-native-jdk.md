## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:440e5daa46bfa768c15a4117557c1228975c81679c5f675957001aaec2f3ef41
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a2fed823db8e415df7bc42e9ca2177e77f18ecd50b20a67e2855d617ad540eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.7 MB (224685945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0b9b0e10bd740ec2d20770e3f478bd9619a9818396a68a21b33fc58311267e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:44 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:19:44 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:19:44 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9676bd4df87b8431c68aa5a0b63eec434db2038685a61903db834ca49beb031`  
		Last Modified: Thu, 20 Aug 2026 17:20:05 GMT  
		Size: 161.7 MB (161711929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:60acaafd6c55cdfac2106e57a76969182e8ee72d031a6b25b91a4d9fad5554c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13065c0ac9d72ccc8b0e6a305982504e1442415997eaf54f6e0a805a50d83d35`

```dockerfile
```

-	Layers:
	-	`sha256:115d4b3995e1b51cd84cf277fc7ddecdeca2df5c4c9d8a48db3cebcce33028cb`  
		Last Modified: Thu, 20 Aug 2026 17:20:02 GMT  
		Size: 6.0 MB (5995209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0936429c7939e993d329bd87ec507233e778cdf13feee45a42548c56e4dbc1`  
		Last Modified: Thu, 20 Aug 2026 17:20:02 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6e886bcabc885233ebb854380c83c3924bea8c15c1f12702b7039b55e56fef9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216485144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b67659d8bd98c3f5ce8f7914846e1048283371bffc4f5f940deeee0660abd0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:29 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:16:29 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:16:29 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d1629bcb91f4df73a178c1a604a07109f2cf66dc717d2655d5b17f6dfb93a1`  
		Last Modified: Thu, 20 Aug 2026 17:16:51 GMT  
		Size: 151.7 MB (151696028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fa50921ebd0158b84f1504fc60477d7216298dffa415683755f1645cffa7f153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10feb3d2de8f8b6fac373f1c871360be624cb95de68c21546042e50b97aa6728`

```dockerfile
```

-	Layers:
	-	`sha256:4e015c894594679461a1bb498df674ff66130aa53fc99c0508e084c44e4a290e`  
		Last Modified: Thu, 20 Aug 2026 17:16:47 GMT  
		Size: 5.8 MB (5787923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61c6e27abe4f5ce3d08a8570113354a6e0bdc287f90f0dabaf4d203d6bf493dc`  
		Last Modified: Thu, 20 Aug 2026 17:16:47 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
