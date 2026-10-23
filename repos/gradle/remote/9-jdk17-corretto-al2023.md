## `gradle:9-jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:92e607497cf64cc538328b971f855d4894c73bd2143adfcc0af6acfd1bd274cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:e2a1f80eff49f2fd3c813c24e9085df21d8749ca0875a7219ce8f16af134d2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.4 MB (459430291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1b6138ad252166cd95022f73ac1c0f49a4f3b057ed6768a94bc9ef090c15bb`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:31 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:31 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:31 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:31 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:31 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 18:19:32 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:19:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:19:32 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:19:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:19:32 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:19:32 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:19:32 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 18:19:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 18:19:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:19:35 GMT
USER gradle
# Fri, 23 Oct 2026 18:19:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:19:36 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c5208209ea9a86a255f1eaa0ce19a9eddf8d9c7f1f8311ee5e16b1af43f12d`  
		Last Modified: Fri, 23 Oct 2026 18:08:51 GMT  
		Size: 157.4 MB (157424961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:217d92030eef1a1a0741da1f761a6c03d8b5b76e75a82ebb58f4444f4eb0c11c`  
		Last Modified: Fri, 23 Oct 2026 18:20:06 GMT  
		Size: 95.8 MB (95795512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04413c75496ea502ffafbb07fdd4b677d3b7cbbe622137b93a9f049241db317`  
		Last Modified: Fri, 23 Oct 2026 18:20:02 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500db8a12860f1981554d4887af5ab1169f817adc935bc408f09f309a6f91b17`  
		Last Modified: Fri, 23 Oct 2026 18:20:07 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd5e60b39ee50527a06ddeef2b2872e84d4e2ac8e31440b5d62824a94be260f`  
		Last Modified: Fri, 23 Oct 2026 18:20:03 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:b0225bf559b25d9a0e259edd6346b34a60cba80ec72da8817700490814a07a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12682406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aefe2c3e66a355175d80985e121f57cddfd22d41357bd97fa278f0d19f34f0b`

```dockerfile
```

-	Layers:
	-	`sha256:44005d7a666a883df0d1a8f2fb707995f937665adc70b0db41c83797cb3fbfaf`  
		Last Modified: Fri, 23 Oct 2026 18:20:03 GMT  
		Size: 12.7 MB (12660909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef2880f1e3f5a496c811a85a158c80c9f6014480774a4b739f79783e14291dd3`  
		Last Modified: Fri, 23 Oct 2026 18:20:02 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:4ea398ac5890f537e5f76510938e677c0c471c575b72e9ff672b4b0058b4aba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.6 MB (456587798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3210e24391d496f83942b5180d606835fc7ca812eb371d6b60f04b7c08e33e8a`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:29 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:29 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:29 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:29 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 18:19:18 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:19:18 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:19:18 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:19:18 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 23 Oct 2026 18:19:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
USER gradle
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a510a982617e16fea7c5332d3e2f68e230e2192abecc0c0de21e3ae09f4ee0`  
		Last Modified: Fri, 23 Oct 2026 18:08:53 GMT  
		Size: 156.3 MB (156283977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32cc90f3a32cb875e4cdcce3424e0bf4839f1e19a3e51f26928495d6a39743c`  
		Last Modified: Fri, 23 Oct 2026 18:19:55 GMT  
		Size: 95.2 MB (95209890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8a0cba3307a676c9814f94aeab12ad4dd279b93ab04f0b2296ec2cd4a79c93`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7ebf29a90cb67873f7d0cfb0ed8791acd4d0166fa6c4545904fcf6d4424db8`  
		Last Modified: Fri, 23 Oct 2026 18:19:56 GMT  
		Size: 151.5 MB (151533610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028425d79b793b9e26890b13dbb1af496520efc00df21b7ef75679c8ac28c9fd`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 29.3 KB (29328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a68b971f4d4dac59f62efa51f8b786ca8e61a96205819d9fb2c633edf1434dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12681603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51214d1636e328d617c9ef452d24025d4dea47a432b8786a821912574736334a`

```dockerfile
```

-	Layers:
	-	`sha256:e59f39672e2c62ee025457e3007ccaf9271a62736085936a91a9878b7a1364a5`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 12.7 MB (12659909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84e296dc031a9cfa5e463b00223bef5ff2c65e38bbf777f237f1a23d60301f65`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
