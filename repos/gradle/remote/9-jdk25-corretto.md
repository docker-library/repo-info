## `gradle:9-jdk25-corretto`

```console
$ docker pull gradle@sha256:878aba4064a8ff4e59018d804d324a8fc1217670379c35cc525418d699d7f0ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:a52e1225ae14d846b1d32f00d3355e6b0f7cac51d89a840aea0aa8e393e13fdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.7 MB (491670791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5c587ef2715826d700330f066a4eab6cab117886c723cbfd51895395c2cea5`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:04 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:00:04 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:00:04 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:04 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 05 Nov 2026 20:19:23 GMT
CMD ["gradle"]
# Thu, 05 Nov 2026 20:19:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 05 Nov 2026 20:19:23 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 05 Nov 2026 20:19:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 05 Nov 2026 20:19:24 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 05 Nov 2026 20:19:24 GMT
WORKDIR /home/gradle
# Thu, 05 Nov 2026 20:19:24 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 05 Nov 2026 20:19:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 05 Nov 2026 20:19:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 05 Nov 2026 20:19:27 GMT
USER gradle
# Thu, 05 Nov 2026 20:19:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 05 Nov 2026 20:19:27 GMT
USER root
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9334640a845dbaaf881b7f899922e1bba1bd1bc75d150d0b3e9ba0548aa0ec`  
		Last Modified: Thu, 05 Nov 2026 20:00:28 GMT  
		Size: 189.6 MB (189627364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63478fef0eccb3d1b20771ceb38fa98726a1009a39ac70c3b8777f400baf436`  
		Last Modified: Thu, 05 Nov 2026 20:20:05 GMT  
		Size: 95.9 MB (95913004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a3b22a6feb65d7ea3c6b57dff02f6efeef5c5d27bc8091f4fb2292e9afceca`  
		Last Modified: Thu, 05 Nov 2026 20:20:00 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e66b62d97f719715e2c55269c301cd240c9df2b588bfa39f364891fa6f8995`  
		Last Modified: Thu, 05 Nov 2026 20:20:06 GMT  
		Size: 151.5 MB (151533522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff3de17923fb6fbd4426e98af4e2b1e8c1ad4d5a1acf1a7419a9b4b314febe5`  
		Last Modified: Thu, 05 Nov 2026 20:20:00 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:1b4eed0056917214f8b0dca6b3c4d9a95fcb82a3858a1ccaaa59185b654e65f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12698467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3be895c628d8046aa69107138df13bd47bd3cc7ae4a5b92ebb2b7ed35e6c`

```dockerfile
```

-	Layers:
	-	`sha256:da0fbcec046aed86aa420d853df75cf18f8d952ced8ac396766ee6de1ac8b394`  
		Last Modified: Thu, 05 Nov 2026 20:20:01 GMT  
		Size: 12.7 MB (12676198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fde31552bb1f6621e095d8f0aedcb0d0f71f69c6a9992beb463a36941421580`  
		Last Modified: Thu, 05 Nov 2026 20:20:00 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3759df14b5cab0930e8542ad8be8c5ede9d9cc9f8d32e774fb5bd8c02e7b8b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487853329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8da61d9c25daac9ef940df66703260e92a6931d3aa656d02576b3fd33fb792`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:21 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:21 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:21 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:21 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 02 Nov 2026 20:44:14 GMT
CMD ["gradle"]
# Mon, 02 Nov 2026 20:44:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 02 Nov 2026 20:44:14 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 02 Nov 2026 20:44:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 02 Nov 2026 20:44:14 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 02 Nov 2026 20:44:14 GMT
WORKDIR /home/gradle
# Mon, 02 Nov 2026 20:44:14 GMT
ENV GRADLE_VERSION=9.8.2
# Mon, 02 Nov 2026 20:44:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Mon, 02 Nov 2026 20:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 02 Nov 2026 20:44:17 GMT
USER gradle
# Mon, 02 Nov 2026 20:44:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 02 Nov 2026 20:44:17 GMT
USER root
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa55293fe3e3a8406c108f2b07eb8eb149cb9f5968a7772bc81606bc9fd2a247`  
		Last Modified: Mon, 02 Nov 2026 20:11:46 GMT  
		Size: 187.5 MB (187523723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74196d0f7a9891df2474027f4c91c911a6132f8735a6e9a29d360ea6af16ccd5`  
		Last Modified: Mon, 02 Nov 2026 20:44:52 GMT  
		Size: 95.3 MB (95308856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60093fe49b8b5ca316b9345c56eef464a124f8e660d85125ffc8caaa83646cc1`  
		Last Modified: Mon, 02 Nov 2026 20:44:48 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08c7a0cb1f218739f2963765c6c1eba3b3a255d9baae32dbd13609ffaac6d5b`  
		Last Modified: Mon, 02 Nov 2026 20:44:52 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee29150f474eeb57cf16fd5020f93ce5323ac5ae78ed065c7cda0ca133b1511`  
		Last Modified: Mon, 02 Nov 2026 20:44:48 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:a668d0b56863232b82d6bdb279d70fc8707ad133722829620872f5469abd7ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12697725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04ec32e5e021c7d897697de3396e071739d314fdb937b2267d423eaacc223c2`

```dockerfile
```

-	Layers:
	-	`sha256:e02127e80493bf48c6cd2745a0adde85ad94cf744f024177808519b0568bdaf8`  
		Last Modified: Mon, 02 Nov 2026 20:44:49 GMT  
		Size: 12.7 MB (12675236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d90176fb6252ec876cf1162d1f2f0f4bae15eb4395c6ad5ce8617cfd612dc8d`  
		Last Modified: Mon, 02 Nov 2026 20:44:48 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.in-toto+json
