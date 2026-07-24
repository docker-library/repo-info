## `gradle:jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:09ac3b9b84257c36c86197e4836d03beb7f31ab83fe8af67f879a764e3eb4392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:f2e9218691e086ce4a81c31d02433050baeab9122797fcae3a2bade93be09f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.3 MB (452319578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75c36828ae2d5f3bd9ca52936f423e9b776c1bb6a438148c1c02fd4c60d780a`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:47 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:12:47 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:47 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 24 Jul 2026 00:11:49 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:11:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:11:49 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:11:49 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:11:49 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:11:49 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:11:49 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 24 Jul 2026 00:11:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 24 Jul 2026 00:11:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:11:51 GMT
USER gradle
# Fri, 24 Jul 2026 00:11:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:11:52 GMT
USER root
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06e2a0bbbb294b15c57ade0204a3c4e6a1af3bb85dfee1a263948d6a37c396e`  
		Last Modified: Thu, 23 Jul 2026 23:13:08 GMT  
		Size: 170.4 MB (170443195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561fe73319ba1807c47e789f2b7fdf22e7fdc55c086f71dd4854c79a30d4122b`  
		Last Modified: Fri, 24 Jul 2026 00:12:22 GMT  
		Size: 86.7 MB (86678798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d57a15780b3af69e8a79a8a3fd0a241b5925b633ae498af2c9ce05cf6a2d2e5`  
		Last Modified: Fri, 24 Jul 2026 00:12:20 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fa95080722f86055ac1178a6b80ba70b5d9e3f1c8335f4db66046fc7da04b0`  
		Last Modified: Fri, 24 Jul 2026 00:12:24 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a0f28a46b239743f3445b142880234e6f39b5b479ae82cc2113e5cdaaa6145`  
		Last Modified: Fri, 24 Jul 2026 00:12:20 GMT  
		Size: 25.6 KB (25617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:92f8a35cafb7459066c52b8e2edae0eab20792de80e802f11e156ac446132f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11407486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d180a55970e063085c760546a1c58741c74882b28bdd515a2124dfe358573e2`

```dockerfile
```

-	Layers:
	-	`sha256:6e0cdde5c056842b2911bc1f714833ad243b957737adf4d055f1c7472ab2542b`  
		Last Modified: Fri, 24 Jul 2026 00:12:20 GMT  
		Size: 11.4 MB (11385835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:776ac99609e2190fda8bfc3512fb6de3d856f170ba64017b59cb187b22efcf18`  
		Last Modified: Fri, 24 Jul 2026 00:12:19 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:8c8c6dcda3f083e1834d0f42005c2edd4edf0b974519be6a101b647db09955df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.8 MB (448815928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5535623919f5aeb66a5f44b5d689396a26a8961dc827d76a89dbd59369ca764`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:14:36 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:14:36 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:14:36 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:14:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 24 Jul 2026 00:11:28 GMT
CMD ["gradle"]
# Fri, 24 Jul 2026 00:11:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Jul 2026 00:11:28 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 24 Jul 2026 00:11:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 24 Jul 2026 00:11:28 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Jul 2026 00:11:28 GMT
WORKDIR /home/gradle
# Fri, 24 Jul 2026 00:11:28 GMT
ENV GRADLE_VERSION=9.6.1
# Fri, 24 Jul 2026 00:11:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Fri, 24 Jul 2026 00:11:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 24 Jul 2026 00:11:31 GMT
USER gradle
# Fri, 24 Jul 2026 00:11:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 24 Jul 2026 00:11:32 GMT
USER root
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b854219e2e5d48c3335eb51ff302705e71608fa34b13c8775f414cc912dcb`  
		Last Modified: Thu, 23 Jul 2026 23:14:59 GMT  
		Size: 168.7 MB (168689095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6dfda0252f5471e37039986c3a90a9001b22e24db3e34d20799b3bb01deacf`  
		Last Modified: Fri, 24 Jul 2026 00:12:04 GMT  
		Size: 86.1 MB (86050552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a4228680063eb5d55df086fe5db7a080e562e7255b365ddf50f6e2b3c868f7`  
		Last Modified: Fri, 24 Jul 2026 00:12:00 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfd6152e97825a21bf33b3debbfdc6957544ecef83c47ac2bf281efdd4b7ecf`  
		Last Modified: Fri, 24 Jul 2026 00:12:05 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebe5c85929b3e252dac423d68c631a4a872e0064bd22f99355b2272ebd83bfd`  
		Last Modified: Fri, 24 Jul 2026 00:12:00 GMT  
		Size: 29.3 KB (29347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:76e31c1009727f435b7ffdda405a22c2e2b80d70f43b461282f5e54cd273ef99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11406686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871e921cea3c50de6098433b2a42beb0e4c50b30cdb7273af159ac4cd7421e01`

```dockerfile
```

-	Layers:
	-	`sha256:fd2c38cc8dd213935aa403ab4a8808a20407b9d84a7eab368e4153441b448b46`  
		Last Modified: Fri, 24 Jul 2026 00:12:01 GMT  
		Size: 11.4 MB (11384838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15f6552227063c89b85aea847bc2ac5ee28dfa4e985de98f01468eb6e1d532fa`  
		Last Modified: Fri, 24 Jul 2026 00:12:00 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
