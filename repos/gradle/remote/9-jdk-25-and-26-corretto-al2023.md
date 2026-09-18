## `gradle:9-jdk-25-and-26-corretto-al2023`

```console
$ docker pull gradle@sha256:f661b4294f48b3fc0ea75a087162f620f671386b0b61ef1b450b741183bda839
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-25-and-26-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:84f6d626d6bf516576b061e5f3d8525a7889f9ac5bd4961344fdd6f40ec861ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **661.7 MB (661743070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ff80e89338cca73200cf3f1c1bdbc292223954500ae84c1b9aacb20a967745`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:58 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:22:58 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:58 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:58 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 17 Sep 2026 23:21:31 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Thu, 17 Sep 2026 23:21:53 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 17 Sep 2026 23:21:53 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Thu, 17 Sep 2026 23:21:53 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:21:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:21:53 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:21:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 17 Sep 2026 23:21:53 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:21:53 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:21:53 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 17 Sep 2026 23:21:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 17 Sep 2026 23:21:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:21:56 GMT
USER gradle
# Thu, 17 Sep 2026 23:21:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:21:57 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb04d3a954a7cce9c0c8848251964ca12ad6dd45bce3b0832c52f22620f55838`  
		Last Modified: Thu, 17 Sep 2026 22:23:20 GMT  
		Size: 189.5 MB (189469570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa4926375429de0d26996b0dd0991eee4a7c3166dbef33c7c6ce48e47b41228`  
		Last Modified: Thu, 17 Sep 2026 23:22:36 GMT  
		Size: 179.4 MB (179421778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9285dd97b6d37494117acd2390e91755ff76c27027136bbfea1fe1a2f7efa01`  
		Last Modified: Thu, 17 Sep 2026 23:22:34 GMT  
		Size: 86.9 MB (86884025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cb0cea7aa8d70dcdb4cbd1ebe230b36ce4abc513cc032fbe4bc230dfbb28ba`  
		Last Modified: Thu, 17 Sep 2026 23:22:29 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a11e4c807432156e116a57617347ba5d60237da43854eeb7021762e45e607b2`  
		Last Modified: Thu, 17 Sep 2026 23:22:36 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0464bc9031d20b99a28b9b49ae8ef2f1396c5e182ed8e49ac1e21ca370c08417`  
		Last Modified: Thu, 17 Sep 2026 23:22:31 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:4f5b4a668e08162b1f0b491e5dd44f4cc2525e705a79e12ac1aad293d1af5bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11600462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c62fa9aa16790e8f59740e23afd19f5cbdf909ec1d6d6de8d82c32b2355fbba`

```dockerfile
```

-	Layers:
	-	`sha256:2ad11234e1c866046c0183a2fd409757a71e50f68ac2ff6e882480657bead6e7`  
		Last Modified: Thu, 17 Sep 2026 23:22:30 GMT  
		Size: 11.6 MB (11570953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f3170728ea8110d085040cb20c56a58b2152e632aa4076506cfe8b6b43a44de`  
		Last Modified: Thu, 17 Sep 2026 23:22:29 GMT  
		Size: 29.5 KB (29509 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-25-and-26-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:4aa314430e9276d7673f317e095629c4fc4e7128af7b69e81fa216059c867499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 MB (655765998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e6db689600940c18f4c0c4a884b268879c66fb58bbe40748f8efd226d31ae3`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:22 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:47:22 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:22 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 17 Sep 2026 23:24:10 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Thu, 17 Sep 2026 23:24:36 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 17 Sep 2026 23:24:36 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Thu, 17 Sep 2026 23:24:36 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:24:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:24:36 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:24:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 17 Sep 2026 23:24:36 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:24:36 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:24:36 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 17 Sep 2026 23:24:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 17 Sep 2026 23:24:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:24:39 GMT
USER gradle
# Thu, 17 Sep 2026 23:24:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:24:40 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ede0990d45aba19c1b3aba4d86361f0ab497c8e65c5019e492496449a8a5aa9`  
		Last Modified: Thu, 17 Sep 2026 22:47:48 GMT  
		Size: 187.4 MB (187380240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16308fbe3fcb46ba3fe5fb5d637ff43127f41bb214c9d482b1a81be1f6e73068`  
		Last Modified: Thu, 17 Sep 2026 23:25:19 GMT  
		Size: 177.3 MB (177298179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e569fab2ebaa350de31ae6cc9eda79b3c4ff5bec96598f157732dfa115fec628`  
		Last Modified: Thu, 17 Sep 2026 23:25:17 GMT  
		Size: 86.2 MB (86249846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44ac0fc1e7aca28f77d3372d21633ae3e7b7ada92a24f9da74fc4370751a4a0`  
		Last Modified: Thu, 17 Sep 2026 23:25:12 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed015ffe59c436e1af34bbb5459acfd428832714e7230d0de47ec8ac418e5a0`  
		Last Modified: Thu, 17 Sep 2026 23:25:19 GMT  
		Size: 151.4 MB (151354036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caab60f8f0273b49042966e45cd25e0d3d3bf8a7afc93adf14485740c11df573`  
		Last Modified: Thu, 17 Sep 2026 23:25:13 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-26-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:65ab2a06d2cd30f0a9baebf9369c9bf2ef57d9ab2be11adbf4d641eedb965bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11599252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc19d615d5de9139028caa93b4a142fd7988eacb4b9534620029a543e41d8870`

```dockerfile
```

-	Layers:
	-	`sha256:6432278dcb405f5731463184e5da21e4af49041df643e91809bf6af22938fa78`  
		Last Modified: Thu, 17 Sep 2026 23:25:13 GMT  
		Size: 11.6 MB (11569423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8666720ee9efc05938e8367d52b9485e9f185fca76df4133abdd26c60007cc9d`  
		Last Modified: Thu, 17 Sep 2026 23:25:12 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
