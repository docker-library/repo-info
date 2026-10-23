## `gradle:8-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:6e581482bb1d21d15e81a01b751d8bb713d4e7aa3adb6e836833ad944b0396d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:49a40b73cf0c94b08f7e4ef8fca38e990813770f09323b0cdc594fa59bae2daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.5 MB (443471157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4a33c3b19f3b3c68db17fb3beab9c879715911b4665c4cab5a0b6f58663fec`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:50 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:50 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:50 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 18:20:38 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:20:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:20:38 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:20:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:20:38 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:20:38 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:20:38 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 18:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 18:20:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:20:41 GMT
USER gradle
# Fri, 23 Oct 2026 18:20:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:20:42 GMT
USER root
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cdf13232737ea23018f769b58a91e67ebcac774b5a3e68b96168c430205496`  
		Last Modified: Fri, 23 Oct 2026 18:08:12 GMT  
		Size: 153.5 MB (153540316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d0b1bae978c77382313e3658945e30f0f3f093d0602e9b7a9ac95da0f7bec3`  
		Last Modified: Fri, 23 Oct 2026 18:21:15 GMT  
		Size: 95.8 MB (95797997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bf7d906a419bc015e042ce025c5714c0b72dce836c75eefc0682e348e82d19`  
		Last Modified: Fri, 23 Oct 2026 18:21:10 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb8135760832c64e90840803b8f56f36c919e5dcd29a8bb01d6f63f883c36fd`  
		Last Modified: Fri, 23 Oct 2026 18:21:13 GMT  
		Size: 139.4 MB (139427340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb4dfa10b3e3be01a26f07eeab68d8b1f5a9d0ea36c373033c34218befb24d2`  
		Last Modified: Fri, 23 Oct 2026 18:21:11 GMT  
		Size: 54.9 KB (54905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:de93a492b0a60497ecf69a03a829aa43a136a1a461199ddc6118d7a5c74db7b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcdcf67c57613f7beec3f04d2f809fe925a762535efbaeb013cc7facad0868c`

```dockerfile
```

-	Layers:
	-	`sha256:335356f5f5ed650012984197eb37d233c98ce86ace7594cc73b1815dc1953a98`  
		Last Modified: Fri, 23 Oct 2026 18:21:11 GMT  
		Size: 12.7 MB (12652808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:337fb81040cc413c3ced51f6033b7869b7fa5529f01e2d8f5809e9933f392238`  
		Last Modified: Fri, 23 Oct 2026 18:21:10 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:acd5428a20d766009bd3f46a583ca6e7c49e96e08ac9102e658fb8963d57c9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440356115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23772d3ad8966a910e06a42d9da8abef4123330162bfff3e553a66664262a0d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:51 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:51 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:51 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 18:20:19 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:20:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:20:19 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:20:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:20:19 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:20:19 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:20:19 GMT
ENV GRADLE_VERSION=8.14.6
# Fri, 23 Oct 2026 18:20:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Fri, 23 Oct 2026 18:20:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:20:22 GMT
USER gradle
# Fri, 23 Oct 2026 18:20:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 23 Oct 2026 18:20:23 GMT
USER root
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061cac72722a6f12ac230f39d106f99cd2e7ea87aeee474d0e7621a017063d3b`  
		Last Modified: Fri, 23 Oct 2026 18:08:13 GMT  
		Size: 152.1 MB (152123166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02de9a971526e25b98bc4a831038b97ffb23c281b028a52a47dbaa1a9e211dbc`  
		Last Modified: Fri, 23 Oct 2026 18:20:55 GMT  
		Size: 95.2 MB (95215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d683e325175cdf2b90249391bfb14a602866b5f10096673a3c4bbbfd62251398`  
		Last Modified: Fri, 23 Oct 2026 18:20:51 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3c683b38fd940c14ff7afe780195788bf7b6d5853a8e1b8d1317b0fb214817`  
		Last Modified: Fri, 23 Oct 2026 18:20:56 GMT  
		Size: 139.4 MB (139427348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba865c6e71919aeebbf46556414893657a3230c850c619bcc7c92ff496f9edd1`  
		Last Modified: Fri, 23 Oct 2026 18:20:52 GMT  
		Size: 59.5 KB (59529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:e4b3b776d132d7e3a395feefe3ac4f89bd40115937065592e5bce94de7015bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12674513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585f9a52b982aaa10a832adaf6073ace86abf3ed135bcebefc643024c099a509`

```dockerfile
```

-	Layers:
	-	`sha256:e2388fade40b58bb869ed81339ce7ac3b5b0925450885ed7b50166e88b738be9`  
		Last Modified: Fri, 23 Oct 2026 18:20:52 GMT  
		Size: 12.7 MB (12652651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:061ae11781518d8cfe82f233a3a466951d61ca904698be13b70ea9aa95e559ca`  
		Last Modified: Fri, 23 Oct 2026 18:20:51 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
