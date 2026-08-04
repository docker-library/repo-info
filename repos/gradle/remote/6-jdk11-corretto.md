## `gradle:6-jdk11-corretto`

```console
$ docker pull gradle@sha256:2b54341c3b0881e05b1602d1540ff7905f54367927d972d394df4d558b5ba410
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:6-jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:7bc8cdbdc6842a18d9d273a3d83247cbb4c39b379c2d38b50deee5a51126742a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.9 MB (402851122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95aed764a6bb3b30cafb76373bd4dd363d13ec03e14c8e01f85efd78d78a0892`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:25 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:25 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:25 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 01:33:05 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:33:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:33:05 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:33:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:33:05 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:33:05 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:33:05 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 04 Aug 2026 01:33:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 04 Aug 2026 01:33:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:33:07 GMT
USER gradle
# Tue, 04 Aug 2026 01:33:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 01:33:07 GMT
USER root
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65b4d939eb36e1b241115abf3fd2b8e59a07310c0aea8ee5d768bb7bbd9565d`  
		Last Modified: Tue, 04 Aug 2026 00:57:45 GMT  
		Size: 153.5 MB (153470096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7175a05a7a99754b898d323d38cd0e59cf6f8b0dbe5b8bf9c915e2670beb9f58`  
		Last Modified: Tue, 04 Aug 2026 01:33:35 GMT  
		Size: 86.7 MB (86678732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d7e43938867a93443b64ca298b420ea9beed85dd08934ba4bede3cacda215f`  
		Last Modified: Tue, 04 Aug 2026 01:33:31 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5aab8d14ae7b9b530919e063889121185c3bf96229139c8ce21120732b0199`  
		Last Modified: Tue, 04 Aug 2026 01:33:36 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65bee09fde1e72937e9a29da9d8bcf219e64c9ff7aa87f27046b1b8e7732ec8`  
		Last Modified: Tue, 04 Aug 2026 01:33:31 GMT  
		Size: 431.3 KB (431271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:377d349ee7245812e88d3c4a21838670219694d1ab21500ed9eeffe9ebc9e91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea27f6032a7b63c1f755685e90ac6db031c1db00cdb2696f3bc433346140c23`

```dockerfile
```

-	Layers:
	-	`sha256:476dfbf7dc36195fca4083e6fa95077d1b9d75b03d2f73a0fd3322e50e78b067`  
		Last Modified: Tue, 04 Aug 2026 01:33:32 GMT  
		Size: 11.3 MB (11273775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b38ba576f2d698853067dc39fcf870056fd9c4c8d9bc87b95747618a164a5c9`  
		Last Modified: Tue, 04 Aug 2026 01:33:31 GMT  
		Size: 20.9 KB (20872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:482c9cd8d80b99f1279c9f6db7b9ace4e7236019b67cc1a14cd4e22ae41c1e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399658256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd47b8b7c7deee9f7b0e503dfb504dfdc5fda48c64424a187896f6d76132836e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:10 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:10 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:10 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 01:33:24 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:33:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:33:24 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:33:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:33:24 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:33:24 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:33:24 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 04 Aug 2026 01:33:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 04 Aug 2026 01:33:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:33:26 GMT
USER gradle
# Tue, 04 Aug 2026 01:33:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 01:33:27 GMT
USER root
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a3d81687d5a8e482e74098568a47768bea8f87d5d4f7b4bdd67670d0f7e84`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 152.0 MB (152043082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb480fd83cf75b0e2aa63dca9298f8888ffbd125e9d1b515220dcd287cc3d31e`  
		Last Modified: Tue, 04 Aug 2026 01:33:57 GMT  
		Size: 86.0 MB (86043141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238483f7489605b080300189d113e395e5b15ff889f81382d4e7b8173abf9737`  
		Last Modified: Tue, 04 Aug 2026 01:33:53 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96747f1494b7c017fe8f88ac524e26177b0f1ee748981a77547515dbda7f965`  
		Last Modified: Tue, 04 Aug 2026 01:33:57 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf77ea37c9ee1a13423bfc9fa6b0a0a88e95a7329682bb2dad90efe9a885b11`  
		Last Modified: Tue, 04 Aug 2026 01:33:54 GMT  
		Size: 425.0 KB (425031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:999ac5385158b3f1e904fb50079fbd849856e0e45296acff967a4da3dd0e5835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11294639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8a07c3d912c47d099a2eb16a3d56046af1df7109e13fbafcb71c072d151d17`

```dockerfile
```

-	Layers:
	-	`sha256:32db60c87bbb70867d9730e74351046cb5525dbcb4566e09a98c69f3a78b9942`  
		Last Modified: Tue, 04 Aug 2026 01:33:54 GMT  
		Size: 11.3 MB (11273594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fffdaaaf1ec5406e8ba433d874300ce8f9062a153f6d4ddd1e474d4df5d247c`  
		Last Modified: Tue, 04 Aug 2026 01:33:54 GMT  
		Size: 21.0 KB (21045 bytes)  
		MIME: application/vnd.in-toto+json
