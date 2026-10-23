## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:b772d9c9cec949eff23ca17a3f9a8566147f14a47d40d14e488c517639e97a9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dabb7c6933d76d8627468d232b512415b609648027d217f39a7ba013dca9a4f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158411680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62272c9b5fcd1ed740aaef57dd4067e88019e042ead3ddced6a42d511fd719c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:55 GMT
ARG version=25.0.4.11-1
# Fri, 23 Oct 2026 01:10:55 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:55 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:55 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c24d6d7062a83853c392e6f1a1b08293c99fe6b954acd4c74f2f3f88d1d0b843`  
		Last Modified: Fri, 23 Oct 2026 01:11:13 GMT  
		Size: 103.8 MB (103762760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ec217b3ad233547fb9130856205f7b8d09090f5878478256c9b26c0a4e5529fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc74be946155dc431116aeb3bc2215567b44e6560bd0e2f288bb88dcfeeb3f33`

```dockerfile
```

-	Layers:
	-	`sha256:c3002655057f86201425d5baf0d95d1d1f23bb0b86036434e3b510b52d10cab1`  
		Last Modified: Fri, 23 Oct 2026 01:11:11 GMT  
		Size: 5.2 MB (5208679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4f998d16722158ecfdc2dce049bdd84ea4682f7c66b9107f6f14a29db89b725`  
		Last Modified: Fri, 23 Oct 2026 01:11:11 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5a91bc13650375e83fd2c09ff9871c5e2d9a5785b1ec2ecbed17c38ac9182355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156238737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c0a64da60d29fde255d17148ea5f7788a3787f6042a72ebff32675bfbf460c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:57 GMT
ARG version=25.0.4.11-1
# Fri, 23 Oct 2026 01:10:57 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:57 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e299f250fcbd36fb62c4b7d14cf6e12ca1d7f369d3baefa6735b73aad11d09c`  
		Last Modified: Fri, 23 Oct 2026 01:11:18 GMT  
		Size: 102.7 MB (102709421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc184f30b27b48ae30cd3ea1646cd1368a6cfedf45076852bc7627df8df89b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568e4103931d3c180a4e9cb9b131647bd0edb60a0487457c317332c12c408342`

```dockerfile
```

-	Layers:
	-	`sha256:038ac8954ee6953b05561c67735d400bea14c32b65f3855119ce0d0f169eaf7f`  
		Last Modified: Fri, 23 Oct 2026 01:11:15 GMT  
		Size: 5.2 MB (5207491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ec24a1a087b44c325eb82eea8a990d2316df4067178d5334850c42a19249786`  
		Last Modified: Fri, 23 Oct 2026 01:11:14 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
