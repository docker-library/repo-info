## `gradle:8-jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:bdbf8925d1e3218021a2e8dbaae59a3ea24568fd3d2911d0962143012d692bfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:ab4450ae251cbb1ce79b895a885bb7cf032f58c2e39d1e66936ee46020330671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.7 MB (460704905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efda600a4efed88c373df41396683680c6d418d31ac2c3e3573c897424e119`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:48 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 19:59:48 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 19:59:48 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:48 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 05 Nov 2026 20:20:20 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:20:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:20:20 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:20:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:20:20 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:20:20 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:20:20 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 20:20:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 20:20:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:20:23 GMT
USER gradle
# Thu, 05 Nov 2026 20:20:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:20:23 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d3e70dc3985fe5155874fee927fb0d515bda360e9e1ee6a73a034c1150b051`  
		Last Modified: Thu, 05 Nov 2026 20:00:19 GMT  
		Size: 170.7 MB (170747131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5595b24912f71ef9dccc10caa55045caa0d3ab540bb761d4c5c3286feb3df5f3`  
		Last Modified: Thu, 05 Nov 2026 20:20:57 GMT  
		Size: 95.9 MB (95904230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def91e8de9e0f9ed2e68c7f4a7876507e7e993682c3382d3f49422c1166b10a6`  
		Last Modified: Thu, 05 Nov 2026 20:20:52 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4035dabe03761d7094011fd7865152193e28facd9bcfb34fa8d3ac169fe0135b`  
		Last Modified: Thu, 05 Nov 2026 20:20:57 GMT  
		Size: 139.4 MB (139427349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ffea7eb0a3820393235fee52d3d29dce337c816ebc6c2762fc91feb30c37be1`  
		Last Modified: Thu, 05 Nov 2026 20:20:52 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:4b952825e228ae65ed23ea678f066e87d63f36c22465ce4695581650881aaaa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12651618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f267220ec14a369ed5b183949e4b2ca789a505815143ba6cc0f8daf2534eed27`

```dockerfile
```

-	Layers:
	-	`sha256:a8b99ebba43c5dda810af3d3e315ef2571480156678b51f2c0738f817987820c`  
		Last Modified: Thu, 05 Nov 2026 20:20:53 GMT  
		Size: 12.6 MB (12630595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec26fcedb369656c0edd6b3d84cb72cc29213304cb2fb8d50fbcc99eb3cfa48c`  
		Last Modified: Thu, 05 Nov 2026 20:20:52 GMT  
		Size: 21.0 KB (21023 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fc93f928769958abf124ac90bd12cbca47280ab36a6ed19c82833c73ccf289bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.3 MB (457267582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0578aee0db64147ec03fed10b19ee5bba5080e19531b269aad7211d9c1a97f60`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:30 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 20:16:30 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 20:16:30 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:30 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 05 Nov 2026 21:30:15 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 21:30:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 21:30:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 21:30:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 21:30:15 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 21:30:15 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 21:30:15 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 05 Nov 2026 21:30:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 05 Nov 2026 21:30:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 21:30:20 GMT
USER gradle
# Thu, 05 Nov 2026 21:30:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 21:30:20 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745951a58971f2805c35bc1c9640873ab5043a905768d0086620ed7946d3be8`  
		Last Modified: Thu, 05 Nov 2026 20:16:54 GMT  
		Size: 169.0 MB (169018864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c399b18eaa2826a0abff241b7b84fb3c6e0b8e6974d117785424e409a54ab67`  
		Last Modified: Thu, 05 Nov 2026 21:30:54 GMT  
		Size: 95.3 MB (95304033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d0253961da458381d5e01bf4a2e2175973ad357c1bbaabc66b061d69f9b101`  
		Last Modified: Thu, 05 Nov 2026 21:30:50 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb8140922a04529ec01ce1e5c1b8fcb78b55953b579d82e5d980ec1116f5f0b`  
		Last Modified: Thu, 05 Nov 2026 21:30:55 GMT  
		Size: 139.4 MB (139427352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4000354779b1081d8a24e31fcb428c73f5320f7051c2a679e1b99288ff555a40`  
		Last Modified: Thu, 05 Nov 2026 21:30:50 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:eefce5ac8b48357ba2f1be0d07b14ebcd8300b95c4f05001a58c17fda8514163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12650768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7363225605726a9dcd46c846d7e58612a07de41a1170b87e5384d72ea605e997`

```dockerfile
```

-	Layers:
	-	`sha256:45b5e98fa7dfb2b8e6f37c75de8155b2ff98dbd785084f53b485ff0fcafdf595`  
		Last Modified: Thu, 05 Nov 2026 21:30:51 GMT  
		Size: 12.6 MB (12629574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:777f19db74f85e8eddb0a22dc98cd94138ef2b057cb35de0574e83c803677b3b`  
		Last Modified: Thu, 05 Nov 2026 21:30:50 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.in-toto+json
