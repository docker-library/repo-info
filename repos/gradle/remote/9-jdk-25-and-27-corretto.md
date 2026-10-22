## `gradle:9-jdk-25-and-27-corretto`

```console
$ docker pull gradle@sha256:2b203030f9bf8e16d89e826917dabb72c4e326701823b2771ffcad6da82097c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-25-and-27-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:c12f70e89110b71a99bbb008a38495f7bcb53a894f3aa3cb73b8bb10c9d33e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.9 MB (668891334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57da2f78ffa53f05e4a4e6e7882a2df77c1c0ccbc5a193913fd4686742f2515`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:05 GMT
ARG version=25.0.4.11-1
# Wed, 21 Oct 2026 23:29:05 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:05 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:05 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 00:16:00 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Thu, 22 Oct 2026 00:16:25 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 00:16:25 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 22 Oct 2026 00:16:25 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:25 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 22 Oct 2026 00:16:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:26 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:26 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 00:16:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 00:16:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:28 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:29 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4e6708bb3c2eb8b1ac23333e7d4d26ff5097ca6cf894aaaab1211de7796a98`  
		Last Modified: Wed, 21 Oct 2026 23:29:29 GMT  
		Size: 189.5 MB (189508297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610f87a175d7deaaaeeb85d41d8031296ce99b7682ebced19498120dcdb99b74`  
		Last Modified: Thu, 22 Oct 2026 00:17:05 GMT  
		Size: 177.4 MB (177401918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b119eb608b33bbba08ab418f3b0fc169f8a0b046e3ff69348fe95b1bbe632fe1`  
		Last Modified: Thu, 22 Oct 2026 00:17:03 GMT  
		Size: 95.8 MB (95789346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f4315ff2a69f0230f04c4e8e2042559bc0cd0df216b6f84e9430d44e234fbf`  
		Last Modified: Thu, 22 Oct 2026 00:16:59 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ba6ca4d7694ed36e1852ec35ff0cf4dfe16b2ad12128d6d8e732b1fbefc618`  
		Last Modified: Thu, 22 Oct 2026 00:17:05 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a056f1cf6d5c0fe193fea2f35e44f966f3aec94c479add12534388ba1e9cbaaf`  
		Last Modified: Thu, 22 Oct 2026 00:17:00 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:f6e91d3ffd940f1d9893f09e9003d184c301fbe9eb9b5976fd588c51893e6457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12866037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf52edaa78ef320bcd7b933d9c0a376aaea9524bb50593e6371f9247afd44604`

```dockerfile
```

-	Layers:
	-	`sha256:b59d6ff71ee959ac5baaa6b5b05355143fef45367bc374bf72ad284f9de27c27`  
		Last Modified: Thu, 22 Oct 2026 00:16:59 GMT  
		Size: 12.8 MB (12836527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2ce9488d01ea628e17751331d353552adc10971de90afb2a53a2bcaceb7c645`  
		Last Modified: Thu, 22 Oct 2026 00:16:58 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-25-and-27-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e0dbe5fcaaca05ebe91b1dfd83bd372974573e7171848694ad89324d504f23fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.0 MB (662983362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da88c948a1c92ab57c97530625b23dfac891c2be86746722006cf96fa9164005`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:46 GMT
ARG version=25.0.4.11-1
# Thu, 22 Oct 2026 00:20:46 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:46 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:46 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 01:18:06 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Thu, 22 Oct 2026 01:18:40 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 01:18:40 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 22 Oct 2026 01:18:40 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 01:18:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 01:18:40 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 01:18:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 22 Oct 2026 01:18:40 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 01:18:40 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 01:18:40 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 01:18:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 01:18:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 01:18:43 GMT
USER gradle
# Thu, 22 Oct 2026 01:18:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 01:18:44 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6e3b261ba217527ac9253acccf80a9908628bb2f3f5544d4577bd2bd04011`  
		Last Modified: Thu, 22 Oct 2026 00:21:11 GMT  
		Size: 187.4 MB (187405145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380d7979429f75be2e45889884b54f547371e376a620762af36f90a6b8a32a9e`  
		Last Modified: Thu, 22 Oct 2026 01:19:24 GMT  
		Size: 175.3 MB (175304629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99fdab771c07da0ace4853d63e645c5ae41138398e7ef69a6483cc2d2ae4652`  
		Last Modified: Thu, 22 Oct 2026 01:19:22 GMT  
		Size: 95.2 MB (95204457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1239622216028b9612ebe3eefa1834532fe51aaa40ab18dcb41a89ac9b6062b8`  
		Last Modified: Thu, 22 Oct 2026 01:19:17 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c49c13af9a36c19c3dfe7f3e950ff10b988f231a5375640d8f5b2a33aecf1b`  
		Last Modified: Thu, 22 Oct 2026 01:19:24 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d1a4360498b95efb5aa98b460f81fe6386d951aaeb48bd9e4d332211ff4168`  
		Last Modified: Thu, 22 Oct 2026 01:19:19 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-25-and-27-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:b67c0f23e17efd296785f2760e9fb9dbfd46ea74cec55ba35775950a856a91bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12864826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14e614fee62033ad5e0b3a88f8095b82eb422e17b18f0e0322f108969aa29fb`

```dockerfile
```

-	Layers:
	-	`sha256:04d5841ce0b4fdbef98b57ea5d89c0b3f4cd5f881b28781de8596393dfeb9ac4`  
		Last Modified: Thu, 22 Oct 2026 01:19:18 GMT  
		Size: 12.8 MB (12834997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e25738e89d0f5d3f72002d2aec8dc653578362e9ff321e0cce18637046fc34cf`  
		Last Modified: Thu, 22 Oct 2026 01:19:17 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
