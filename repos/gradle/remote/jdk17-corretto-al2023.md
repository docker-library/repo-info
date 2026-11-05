## `gradle:jdk17-corretto-al2023`

```console
$ docker pull gradle@sha256:0562a7ac036144c3e3c11f916d0432e85e9bd560ae9a0cb14bca9cb99f1bef1a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:1ded22ec7f9ca27294cc63cbd3dff787f514328ba1734bfcdffe707a746febff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.5 MB (459469268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f302cdc03632c52d60c9c1c2171a2c9ed0b382b2d12c3e10b0944d09c98593e`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:19 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:19 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:19 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 05 Nov 2026 20:19:38 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:19:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:19:38 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:19:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:19:38 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:19:38 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:19:38 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 20:19:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 20:19:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:19:40 GMT
USER gradle
# Thu, 05 Nov 2026 20:19:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:19:41 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249fe1f1aa0ad3732a040d863e872ca4873ccf20d111100e5bb3a876c5d66a9d`  
		Last Modified: Thu, 05 Nov 2026 19:59:39 GMT  
		Size: 157.4 MB (157424999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6e93e4ee6beab2d0603f9d784a90a6d931310ce28a11ffe21f55b67331ea46`  
		Last Modified: Thu, 05 Nov 2026 20:20:11 GMT  
		Size: 95.9 MB (95913762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68130ac1eab2982a8ccd4c0b1931662768c38af794be7163edb7c248168aaef`  
		Last Modified: Thu, 05 Nov 2026 20:20:07 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07113cc2450ea3d5a5f474a6105ef5446e36bae92b4350e67ab1ba50c10bea96`  
		Last Modified: Thu, 05 Nov 2026 20:20:12 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab9459a49d58f8f9e17b36cabf49de92bf86fa315658a9ce7992cdde8238d1f`  
		Last Modified: Thu, 05 Nov 2026 20:20:07 GMT  
		Size: 25.6 KB (25603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:3063d61148de0f460356683467ba37459302271e7d4a450cbd032a0aacb20011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12683090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be51096b649b282220bd20758431c956917431aa3bfd0dd616743f1365c35f3`

```dockerfile
```

-	Layers:
	-	`sha256:0783d7c4e34bf44df01d177a66997237f3b31143005c002812f64e8c32d05723`  
		Last Modified: Thu, 05 Nov 2026 20:20:08 GMT  
		Size: 12.7 MB (12661593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:618ad8493d6c83c1d7eb9eff35036305a63ef0055095d0ed2af90a9c97259bee`  
		Last Modified: Thu, 05 Nov 2026 20:20:07 GMT  
		Size: 21.5 KB (21497 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:810875a2229c5505c02357e4b2eb15ee385c521d61733f3089fb5fb06fc0876f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.6 MB (456622394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a66a31ff5542a63e12c4745e6e95e53ab05859813a903b07610870756bd49e`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:54 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 20:15:54 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 20:15:54 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:15:54 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 05 Nov 2026 21:29:36 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 21:29:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 21:29:36 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 21:29:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 21:29:36 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 21:29:37 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 21:29:37 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 21:29:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 21:29:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 21:29:40 GMT
USER gradle
# Thu, 05 Nov 2026 21:29:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 21:29:40 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5e572b3ce80875f9b5e4677a0848e92223659970767dabbe9908c53ee27e1d`  
		Last Modified: Thu, 05 Nov 2026 20:16:16 GMT  
		Size: 156.3 MB (156294790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281bde576d8e09b9aebade8ecdd1f58604e26b3ba9286e363ad410caf0f8ec60`  
		Last Modified: Thu, 05 Nov 2026 21:30:14 GMT  
		Size: 95.3 MB (95306862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c56187e364466fa5807ca5edbc80042f834e435960bc920d71dba19e3f470`  
		Last Modified: Thu, 05 Nov 2026 21:30:11 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d803d2edf4dcb085e4029c61cf4913e9f63af09b72116b8e70143ad4d88192`  
		Last Modified: Thu, 05 Nov 2026 21:30:15 GMT  
		Size: 151.5 MB (151533616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903c1f2cdd2e8a52722c97d49ca0355aca38371f093ff56e638a463fcbe19fb7`  
		Last Modified: Thu, 05 Nov 2026 21:30:10 GMT  
		Size: 29.3 KB (29328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:7f3f9fe8cfd7cc4a5de15f3a7cd7beba5047260a782d82f4006a9bc60c695383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12682287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e87fee4833a45a0803333757040b51578b5940bd0b642ede43f7d8a5d813b0`

```dockerfile
```

-	Layers:
	-	`sha256:71f06583be447dcdd92f682c65cfdfed91547d2e76ec18f0e65aca248e625ec5`  
		Last Modified: Thu, 05 Nov 2026 21:30:11 GMT  
		Size: 12.7 MB (12660593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc239b95649ea7cb7e439cd0aa6149cd7197fd43e79584e5bdbffc02fbd0d2db`  
		Last Modified: Thu, 05 Nov 2026 21:30:10 GMT  
		Size: 21.7 KB (21694 bytes)  
		MIME: application/vnd.in-toto+json
