## `gradle:9-jdk-lts-and-current-corretto-al2023`

```console
$ docker pull gradle@sha256:ed5acb673714b29b1adee1581837dfd0f3ce1de9c0bece146f5f5c57c746261a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:8dd851fa9598591b0502bb84ff5b90d28beb6ab3dfdb3a16d678fa1de9883490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.5 MB (650538329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f70067f731db7b5f01f345e21362a6acbe82e99557c4eff6afbb17eb655731`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:50 GMT
ARG version=25.0.3.9-1
# Wed, 08 Jul 2026 21:12:50 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:50 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:50 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 08 Jul 2026 22:11:01 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Wed, 08 Jul 2026 22:11:22 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 08 Jul 2026 22:11:22 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Wed, 08 Jul 2026 22:11:22 GMT
CMD ["gradle"]
# Wed, 08 Jul 2026 22:11:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Jul 2026 22:11:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 08 Jul 2026 22:11:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 08 Jul 2026 22:11:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Jul 2026 22:11:23 GMT
WORKDIR /home/gradle
# Wed, 08 Jul 2026 22:11:23 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 08 Jul 2026 22:11:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 08 Jul 2026 22:11:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 08 Jul 2026 22:11:25 GMT
USER gradle
# Wed, 08 Jul 2026 22:11:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 08 Jul 2026 22:11:26 GMT
USER root
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30759067ad66ecd429df30137323b3668fc76bb7b927d7ea9d784c4ce31b844`  
		Last Modified: Wed, 08 Jul 2026 21:13:16 GMT  
		Size: 189.4 MB (189412272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502a7a40f7a148e8eb5e9cc65fc09d543f812b2a234b8d6883fdbb127cdb5035`  
		Last Modified: Wed, 08 Jul 2026 22:12:06 GMT  
		Size: 179.2 MB (179247434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c07ccb2f0877062b654bf6526674184ee353bb1a5283ff0a00114d865c61927`  
		Last Modified: Wed, 08 Jul 2026 22:12:03 GMT  
		Size: 86.7 MB (86681046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738f3d8297822e0cad0055738d5f78fbcdbd085dd9a6ecdb1665f5e311e4cff6`  
		Last Modified: Wed, 08 Jul 2026 22:11:58 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b7d8476e806940f469b147447348318f17ec378d1e626799d4da49021f6a46`  
		Last Modified: Wed, 08 Jul 2026 22:12:06 GMT  
		Size: 140.6 MB (140596020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62283bd04e71a64f86f8e0da32771c587011e78c3f28e6de08ec39a8f05a2360`  
		Last Modified: Wed, 08 Jul 2026 22:11:59 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:035184468b722e080fedf584d20e9f8f41b662f3758239bc1d18acd7de3ba63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11591910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3483253a53fb27333d11387ccad370fac7cd4dd8c0f11953b956aea08a319bb5`

```dockerfile
```

-	Layers:
	-	`sha256:e1d4c815886a15fd8a38ff7c9e5271236e0e5d588a7f0a00489335ebc2fa1150`  
		Last Modified: Wed, 08 Jul 2026 22:11:59 GMT  
		Size: 11.6 MB (11562402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed6e40223cc21fc22740e52d7b3f2d405af06498b2ac09f7589a62cad13b664b`  
		Last Modified: Wed, 08 Jul 2026 22:11:58 GMT  
		Size: 29.5 KB (29508 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:74cac228171ce1a2dd7b6328a46e1f6fa64aabcf3d65834a20bb1634b1ac3ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.6 MB (644571889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d480104b16eb7ded8754c7871c97383aa9c4174529010eacca6aee0de09ad908`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:31 GMT
ARG version=25.0.3.9-1
# Wed, 08 Jul 2026 21:12:31 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:31 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:31 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 08 Jul 2026 22:11:01 GMT
COPY /usr/lib/jvm/java-26-amazon-corretto /usr/lib/jvm/java-26-amazon-corretto # buildkit
# Wed, 08 Jul 2026 22:11:26 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Wed, 08 Jul 2026 22:11:26 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-26-amazon-corretto
# Wed, 08 Jul 2026 22:11:26 GMT
CMD ["gradle"]
# Wed, 08 Jul 2026 22:11:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Jul 2026 22:11:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 08 Jul 2026 22:11:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 08 Jul 2026 22:11:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Jul 2026 22:11:26 GMT
WORKDIR /home/gradle
# Wed, 08 Jul 2026 22:11:26 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 08 Jul 2026 22:11:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 08 Jul 2026 22:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 08 Jul 2026 22:11:29 GMT
USER gradle
# Wed, 08 Jul 2026 22:11:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 08 Jul 2026 22:11:29 GMT
USER root
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ef5bc9cda6c7cad92de2292346db94e27bced3681e5cf903c11d23f764c6fa`  
		Last Modified: Wed, 08 Jul 2026 21:12:57 GMT  
		Size: 187.3 MB (187326186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74aaf3eada7086a1cadc82bdc479b82e02eee93ea46ee1105228c9062d0e170e`  
		Last Modified: Wed, 08 Jul 2026 22:12:10 GMT  
		Size: 177.1 MB (177119289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3caceef2a55ef060c9bf1359776c41c35df5aedb8c92011351ef239f041cad7`  
		Last Modified: Wed, 08 Jul 2026 22:12:07 GMT  
		Size: 86.1 MB (86050337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f475d7f82c8dee66261c7c66165100cfeabe77e7ab819048cf2380c3c393a2`  
		Last Modified: Wed, 08 Jul 2026 22:12:02 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd6ec778fb25bb1b797ff6378aa6fac95943e859bda90ff90d2d70a9b1008b1`  
		Last Modified: Wed, 08 Jul 2026 22:12:09 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d0fc74ecc39a1a5bd739c3b4c8ff45643bb675c8950f702794b3e196bd4b9f`  
		Last Modified: Wed, 08 Jul 2026 22:12:04 GMT  
		Size: 29.3 KB (29328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:f02459a6f3df455d9ecc153a4a1ee6c2528c5b3cafef68e9269e52bf2db505ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11590701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06bb897cb7a0ae9148450ca11e26ee218f77c7a92fc417fd49e5be99b949304`

```dockerfile
```

-	Layers:
	-	`sha256:ccc10be2905a3fb59fe9ce23415a70320b1cf8a1d9957513e6953685bd00fd5a`  
		Last Modified: Wed, 08 Jul 2026 22:12:03 GMT  
		Size: 11.6 MB (11560872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ac3bfbb47594a5f06eead9d6f0e9bb2ade8cbfd49cb57531c9dcb13835ac177`  
		Last Modified: Wed, 08 Jul 2026 22:12:02 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
