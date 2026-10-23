## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:2169a1e15f36a167c9b7da4e52e872a15dc936c479adf0615845d6d821305e1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a0182a027542e3bf1280fa12129d429f3e44fc8b10b53f1c6a6dda6489af3e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (229042159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdc236d75f3def4c9a3509e0fe720bf598546a32c8fe07c4c60053f7c1ec051`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:48 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:48 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:48 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:08:48 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7ed8071670bbb066fe328884decc31cf716e3d5c6886b9413e0a446fe231f5`  
		Last Modified: Fri, 23 Oct 2026 18:09:11 GMT  
		Size: 166.1 MB (166068259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e7570d625373bbe1ef9a2ec3c14f27548bd2afd924826d5a77f46bf1fb53a933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea5d20ea0d1fb8da9f087a1caab3be3459eed41c2ce514610b073e400b032ac`

```dockerfile
```

-	Layers:
	-	`sha256:2618ec5aee4c3633c393ce9daf35d00a0035270994e0ac0777c6f802621c8caa`  
		Last Modified: Fri, 23 Oct 2026 18:09:08 GMT  
		Size: 6.0 MB (5972784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b221558fdbe5ffa27b14a9add7167250069bcc441a039282cfa5b8591e38b86`  
		Last Modified: Fri, 23 Oct 2026 18:09:07 GMT  
		Size: 9.9 KB (9950 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8a78806a835efb5849d980d0cad9b13807c192f9255689a1ad54ce5b19a5535e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221486361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2709a06ef35cdda4c96287eb3dd95641353c5d43314be8f301e8b15c6d7efd63`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:37 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:37 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:37 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:08:37 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81f7ea630d9e28d8f0596411914c62cc4dd6d0f44d7ea292f939c96c7337d38`  
		Last Modified: Fri, 23 Oct 2026 18:08:59 GMT  
		Size: 156.7 MB (156650642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f22596b39c02454e7023e386b0d85806a8d25a609b6a1ed898798f9d4cf28bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc933e3deff867e38a38676c3de48d38109ef358a883c89f93374a5f90f7ddc`

```dockerfile
```

-	Layers:
	-	`sha256:5b50f3f8ef3238a45a816e0b0e14dd6e412d684b88b716b6f785ea3a4e1a348b`  
		Last Modified: Fri, 23 Oct 2026 18:08:56 GMT  
		Size: 5.8 MB (5764655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19b05a974b7dfab1d33653445cc6902deb005b21ed1d295cbec87df73f0d53cc`  
		Last Modified: Fri, 23 Oct 2026 18:08:56 GMT  
		Size: 10.0 KB (10031 bytes)  
		MIME: application/vnd.in-toto+json
