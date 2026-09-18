## `gradle:9-jdk17-corretto`

```console
$ docker pull gradle@sha256:c34387b7a33fdf0b9c5fdba2329ff1b96b8ed8e4b0e2b9a275f649acd56123cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:717250706395152b5065937e6fc3cdabe02c294f9bdcf176eb57d3e5f195c2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.0 MB (449991633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22c48fddd4747df78b7edfa59866d28f206ee14f720577bc2a8029ed4d7bb8a`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:08 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:08 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:08 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 17 Sep 2026 23:21:37 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:21:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:21:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:21:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:21:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:21:37 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:21:37 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 17 Sep 2026 23:21:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 17 Sep 2026 23:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:21:41 GMT
USER gradle
# Thu, 17 Sep 2026 23:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:21:41 GMT
USER root
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a410bbbb64f05c7a2fe656c5316d43d139e3c4f15d9616eaebc721f36de3c7b`  
		Last Modified: Thu, 17 Sep 2026 22:22:29 GMT  
		Size: 157.1 MB (157139807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b5348056cde155d10385a3e7e90c469ffda7989767e5c3f3ef4bd9a71ed9c2`  
		Last Modified: Thu, 17 Sep 2026 23:22:12 GMT  
		Size: 86.9 MB (86884242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62575a4907ee7eef736c94f240b2810047cd9c4dcca7ce805bd2bf7b7cd9d26b`  
		Last Modified: Thu, 17 Sep 2026 23:22:08 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78472ea1be890934bc088708d94a8dabfe3f07be5d2105376f853ccd24b93ab4`  
		Last Modified: Thu, 17 Sep 2026 23:22:13 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f311838c96970d8ddef6786ad4159263758d5fa192e888b0663e353854d0d3`  
		Last Modified: Thu, 17 Sep 2026 23:22:08 GMT  
		Size: 25.6 KB (25603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:ab3c9fdfa0d64225dea61c43f70cf284829d74a6e7ec156513c2637dd11165b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11413457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9b52cf54455bb74122b86ab2aa35f578576ce30eedfa4dc4dc27533b1044eb`

```dockerfile
```

-	Layers:
	-	`sha256:619e2fe5ed6b38ba0cece5126232cb01756f56a54ec21d6c66dd5ed0f0ebe275`  
		Last Modified: Thu, 17 Sep 2026 23:22:09 GMT  
		Size: 11.4 MB (11391960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be49f4e06db4d39bbea04ac8b0c1106831ceeebc41dd2d2fa8c8ba7c47ecfe23`  
		Last Modified: Thu, 17 Sep 2026 23:22:08 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9d4502cea053d127426bc7b401902779da84c21562974cfe15b91fceac71bf30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.0 MB (447039148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0084b49252df2498c9fee59076a85556ea633ab915fde238e446acace163ab03`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:33 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:33 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:33 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 17 Sep 2026 23:24:19 GMT
CMD ["gradle"]
# Thu, 17 Sep 2026 23:24:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 17 Sep 2026 23:24:19 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 17 Sep 2026 23:24:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 17 Sep 2026 23:24:19 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 17 Sep 2026 23:24:19 GMT
WORKDIR /home/gradle
# Thu, 17 Sep 2026 23:24:19 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 17 Sep 2026 23:24:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 17 Sep 2026 23:24:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 17 Sep 2026 23:24:23 GMT
USER gradle
# Thu, 17 Sep 2026 23:24:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 17 Sep 2026 23:24:23 GMT
USER root
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff79e1d5af020f98faf12385f3d8aaea81dafb18e71b354d73027f091e09984`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 156.0 MB (155950320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3d40bd72123fe4acab68eb79b266ee831eae83614ece3789160c9d39c15ec7`  
		Last Modified: Thu, 17 Sep 2026 23:24:56 GMT  
		Size: 86.3 MB (86251230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8192c3a33f9accc23f6f55b1be44a4399c398a96326325b2a8068d1566ff555`  
		Last Modified: Thu, 17 Sep 2026 23:24:52 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d84d2018c2e11fcc9e8df809e4b7a3da5287b36dac6d9bf73ae628495139e98`  
		Last Modified: Thu, 17 Sep 2026 23:24:57 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cb0d09849cf70cba09ec1296bfc254ee6d33ab2bfdc884193a91a19f119a80`  
		Last Modified: Thu, 17 Sep 2026 23:24:52 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3a750dc0a2580d18d062c0581e56a589a324f20b184ba775bb7837ff67b49d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11412654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d76075f2911a7ac7e82537fde24c1addc9f4f0507ca1249df7e6609b154d0e`

```dockerfile
```

-	Layers:
	-	`sha256:0099a63096da6e092f1924e487c4c518b6e5deaa1f825e9187f18da6e81b8713`  
		Last Modified: Thu, 17 Sep 2026 23:24:53 GMT  
		Size: 11.4 MB (11390960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a38b84674e60e9da818964a12f589892f1ed5cda41d9ceb027bc87a672c5b4a7`  
		Last Modified: Thu, 17 Sep 2026 23:24:52 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
