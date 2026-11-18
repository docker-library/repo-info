## `gradle:jdk8-corretto-al2023`

```console
$ docker pull gradle@sha256:62c81ec22df7ead7a10da625718803e70b8c44bb9f6e48bd25039d0581121570
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk8-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:3737ac1a5cb3366b85f2524485ad37fd886b7fa2dd71108cd72c6e23f6cf6312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.2 MB (408190879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822d6b5b744121ccc4550d5ec22992d035fdfd377fd9f4bdb0977df07d3fef22`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:35 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:35 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:45:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 18 Nov 2026 03:10:16 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 03:10:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 03:10:16 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 03:10:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 03:10:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 03:10:16 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 03:10:16 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 03:10:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 03:10:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 03:10:21 GMT
USER gradle
# Wed, 18 Nov 2026 03:10:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 03:10:21 GMT
USER root
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fc60c0f2c350f0d96ee308c4b2add78ad18dae70551a4d964b70beba18104d`  
		Last Modified: Wed, 18 Nov 2026 02:45:53 GMT  
		Size: 118.1 MB (118131272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b992354f6bd67afc8e65ca222d3fbb03a575c0f02903f4f81928ed435054d31`  
		Last Modified: Wed, 18 Nov 2026 03:10:56 GMT  
		Size: 96.0 MB (96001817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb532799e242a5502c4aa0112d848589c595a3c187df0ba80a7d632573cfc3ad`  
		Last Modified: Wed, 18 Nov 2026 03:10:51 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502a5ec2fc91ac5296228986783c3228afb475c99cd24100f710947ce78b1f66`  
		Last Modified: Wed, 18 Nov 2026 03:10:56 GMT  
		Size: 139.4 MB (139431919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60225e99dc11faa803f8e1e1cab07eb1132673e92eb5475c526dfee726a4bd0f`  
		Last Modified: Wed, 18 Nov 2026 03:10:52 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:3d21a0517ed6108b85381cb0e2ee4a98e07dff63cd241270cf5d90bed7e321c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13031683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad55164f886ff15095bdf998cacf5fe5bb441c45d3010263cee82303350349c3`

```dockerfile
```

-	Layers:
	-	`sha256:59d20c919edf3861e8ce7b7946f1e24f2b96468c0353e4f48e2925f6c9a9ebd6`  
		Last Modified: Wed, 18 Nov 2026 03:10:52 GMT  
		Size: 13.0 MB (13010029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ebe4a3e8ea50c808ba4f28494596a0b45b409c8ab3fe3eb78348f9af07da4c4`  
		Last Modified: Wed, 18 Nov 2026 03:10:51 GMT  
		Size: 21.7 KB (21654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6f2143bc5f6b8ad11c60ed5aad35ba4f1710ee5d698e520e03d93f10a830167a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 MB (406371209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0f6b665d0cb24361a27f5323bd443d42837122938021c85a920d563594563a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:47 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:47 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:45:47 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 18 Nov 2026 03:10:26 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 03:10:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 03:10:26 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 18 Nov 2026 03:10:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 03:10:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 03:10:26 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 03:10:26 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 03:10:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 03:10:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 03:10:33 GMT
USER gradle
# Wed, 18 Nov 2026 03:10:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 03:10:33 GMT
USER root
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d90dbeb83f3f614bd6bc5f1b645776b96e53d445c551d82a24481448effa0`  
		Last Modified: Wed, 18 Nov 2026 02:46:07 GMT  
		Size: 118.0 MB (118017642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fe35b4e41a1901aca61c09507008361b061da14010edd1e81b70609895a9f`  
		Last Modified: Wed, 18 Nov 2026 03:11:07 GMT  
		Size: 95.4 MB (95407361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35686f1d3018627f44e70c902ef78602ba9143f60d2b668121ba2918ee26116`  
		Last Modified: Wed, 18 Nov 2026 03:11:04 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f753791eade504fc5b18904d59a866b0b182149b2fb48e20fcefb4855148c4`  
		Last Modified: Wed, 18 Nov 2026 03:11:08 GMT  
		Size: 139.4 MB (139431925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306521490559bcd2d8776b453fe3cc8602e01a67427126e0343c910b52675ab9`  
		Last Modified: Wed, 18 Nov 2026 03:11:04 GMT  
		Size: 59.5 KB (59528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a8d7267546be66a6cf6e611073588087e27b97b44d2d512c55b912ce6311b6e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13032203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433d8a4f8488f166cf0934a266a3645db52cde74a82376216a967f3dda39edea`

```dockerfile
```

-	Layers:
	-	`sha256:f986a2d61f929b039fcd9a05f46acfa040cea7ae92e9cdab43cf707510b64d17`  
		Last Modified: Wed, 18 Nov 2026 03:11:04 GMT  
		Size: 13.0 MB (13010352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4adb057f48aa6ebf0ea5016f2b79e3156aa708c0fbfda736da55e96bac9573cc`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 21.9 KB (21851 bytes)  
		MIME: application/vnd.in-toto+json
