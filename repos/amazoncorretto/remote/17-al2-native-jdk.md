## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:6874dccb4a881efcb9f97f896c081c29d34016e3f6c8a451919d267eb35534e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a18f916c46d986492af163c63aa53de9de670c85d1f0e1ce352dbfbdf6df840f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229921593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bd9297aa4bfdb96c14bf604e1d5dd5822dea80c44b50396aaa954d4738c681`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:52 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:52 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:52 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:44:52 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c126c1f399eb8bbf968f8119d5f6b97cb6c1a5cbbad73b69f9a1cbec960219`  
		Last Modified: Fri, 30 Oct 2026 19:45:14 GMT  
		Size: 166.9 MB (166947693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1a6bc3f9f185a39daa1d6a5c30f32898f88d73b41a85ce7c9cfc4994c98307b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049888b8f0f9e857c2de9a157b06088a5fe88f052bcf6d3ecc01718ec383a0b5`

```dockerfile
```

-	Layers:
	-	`sha256:943f5c9e351b7194ad1096654944b2710b9964c6f01d2d1ad299fcc2cda3e906`  
		Last Modified: Fri, 30 Oct 2026 19:45:11 GMT  
		Size: 6.0 MB (5972784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0aa0fcdbbc6962c2f7ceedd110fa318c795e1c658befeaa4831fe3e35f2437`  
		Last Modified: Fri, 30 Oct 2026 19:45:10 GMT  
		Size: 9.9 KB (9949 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6608c37aaea1db251a9eb9124a721c7259411cd83be4cdb5263f38543315a824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222365123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0c1a790b1d68c82b5b3a06ba2c4358bdd77fba141bbe9f57fdbf5d3cf591aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:40 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:40 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:40 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:44:40 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2feba236fdbf2b5ccc0b1257e981a27b8a55091e715624c6746f35dc5297112`  
		Last Modified: Fri, 30 Oct 2026 19:45:03 GMT  
		Size: 157.5 MB (157529404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65ae28cb955c2b755a5d30cd6ae01db0ae32b4319e3d46b507feeb9b220741d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c29ce8ad9b19bc31412f0e1b2afffc50c4bc3d6511f485b86e4155f611ee5d6`

```dockerfile
```

-	Layers:
	-	`sha256:04591513437bb97a6adb27bb432ddddd816e8737c505df3fc9953865d7a15c16`  
		Last Modified: Fri, 30 Oct 2026 19:44:59 GMT  
		Size: 5.8 MB (5764655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff2e6ae306248d5dd0af1b3bf3461d8c55fd70b5e45cf3d0ed2e424f85c8c6c`  
		Last Modified: Fri, 30 Oct 2026 19:44:59 GMT  
		Size: 10.0 KB (10031 bytes)  
		MIME: application/vnd.in-toto+json
