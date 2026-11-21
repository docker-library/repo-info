## `gradle:8-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:63042745c1299cab0643c33f2a1d19c28c43202dc1eadc67a6e4fbb8fd45cf3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:836aa8e85fbdced4bdbcfa1c045d58446dc8c4eaf63adc93dbd43486b0cc6eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.7 MB (443664244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d32b99eec9f584de0dcd4c5e25f72c6732ef6ef3310db9b8051a6d54eaf6dc0`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:00 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:00 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:00 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 20 Nov 2026 20:05:46 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:05:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:05:46 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:05:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 20:05:46 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:05:46 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:05:46 GMT
ENV GRADLE_VERSION=8.14.8
# Fri, 20 Nov 2026 20:05:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Fri, 20 Nov 2026 20:05:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:05:49 GMT
USER gradle
# Fri, 20 Nov 2026 20:05:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:05:49 GMT
USER root
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5c9660bde8c253ee142cba4a690993c2cc3042ec916c6ec00770dc6b0f6ac8`  
		Last Modified: Wed, 18 Nov 2026 21:33:20 GMT  
		Size: 153.5 MB (153546249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab3d166c95609c2c3bef07f455e1d22f1ea82ed8efb3d15eb6ba7836870d57`  
		Last Modified: Fri, 20 Nov 2026 20:06:20 GMT  
		Size: 96.0 MB (95993012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a218f1f3d0cebc0135ce6043dfcdf69e391058582f7317df2991aaa004c97`  
		Last Modified: Fri, 20 Nov 2026 20:06:16 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9752c2a968fd7047d271cf9d09b3b662f3e224b8c3af0ff93f3d7c362c3749dd`  
		Last Modified: Fri, 20 Nov 2026 20:06:21 GMT  
		Size: 139.5 MB (139499311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ca40eede3fd3b240169c7922a5f3803c67acffb5e1ccff5fdbc998f421a0f6`  
		Last Modified: Fri, 20 Nov 2026 20:06:16 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b10e7b802be357d1fed28d3b6518bde043e96a70d26b77c1a961d44fac1425d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12679966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7dd3de7779f35c1530d45025b69bacf236a9a409154d943d2bd08189e22882e`

```dockerfile
```

-	Layers:
	-	`sha256:44df569c358b6d4f6fd84e196ec0776be57d072c894a3c788f907206dfefbf00`  
		Last Modified: Fri, 20 Nov 2026 20:06:16 GMT  
		Size: 12.7 MB (12658301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d10a4cff1d8613c31eb08c96b413bcbbe2ad51233a5b2ec0003710d78ead3637`  
		Last Modified: Fri, 20 Nov 2026 20:06:16 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fbec09977d85eb6376e14b03ffdd1ce491f62c1a7038ac17cbb8b8a5a707144b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.5 MB (440548953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5697b5131c91bcfc86520e55ce7c4cea8d2b1a8260b93512be74b116db5e554f`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:41 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:41 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:41 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 20 Nov 2026 20:00:40 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 20:00:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 20:00:40 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 20:00:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 20:00:40 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 20:00:40 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 20:00:40 GMT
ENV GRADLE_VERSION=8.14.8
# Fri, 20 Nov 2026 20:00:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Fri, 20 Nov 2026 20:00:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 20:00:43 GMT
USER gradle
# Fri, 20 Nov 2026 20:00:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 20:00:44 GMT
USER root
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dde512d23b04084e430e74d8700bd2484e6073568d2b0270cfd43a8b8de212`  
		Last Modified: Wed, 18 Nov 2026 21:34:03 GMT  
		Size: 152.1 MB (152135882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee0bfd55e2c2acbb00b718d558d723bcd35f3a6b2d1cbce55951e67d9568e97`  
		Last Modified: Fri, 20 Nov 2026 20:01:16 GMT  
		Size: 95.4 MB (95399007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d754929297a74302f200e2e0cc38afc5cf83a91541e51f975d691bd26a60b47a`  
		Last Modified: Fri, 20 Nov 2026 20:01:12 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478545d0dd5bb3a9be8a55bd79af5abd1b1d988d9e8a7d899c8039f8a43054a0`  
		Last Modified: Fri, 20 Nov 2026 20:01:17 GMT  
		Size: 139.5 MB (139499310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98eba7a0ef396a13c7433a51e921d938173f2549fc462cd44d612941f60ae412`  
		Last Modified: Fri, 20 Nov 2026 20:01:13 GMT  
		Size: 59.5 KB (59525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:2bb8147efa8e3f36e74d06bfd813a3578580cc0c4b3f538505891941aac3b6c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12680006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3751707f6c0e88702750deeb5e800b0214eb0b923386bc8640acdf4ce457012`

```dockerfile
```

-	Layers:
	-	`sha256:028b3c3891fc5d1fda1bfa1dd1630e06bab170d41e3993655609c5d76f42c9e7`  
		Last Modified: Fri, 20 Nov 2026 20:01:13 GMT  
		Size: 12.7 MB (12658144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f549b069aab432828c115532734790e771e76e2c402ca4d00272a472f50b85ab`  
		Last Modified: Fri, 20 Nov 2026 20:01:12 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
