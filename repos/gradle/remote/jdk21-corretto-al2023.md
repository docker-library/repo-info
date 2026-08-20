## `gradle:jdk21-corretto-al2023`

```console
$ docker pull gradle@sha256:ee2b60c3a79b7dcef13df75efb1d1d22edd0ccebe86bfc8d89a03ac4f9e704c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:762ee995f145ef7921200f17d2e4df1b72bfdabcb2f11a4b15a9ff4b5ce281eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.3 MB (463282613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd3f7aa4beb9626f1b891aef499e9eadc18fcc5f0184bdee9cfb79db1ea5113`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:53 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:20:53 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:53 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:53 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 20 Aug 2026 18:00:19 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 18:00:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 18:00:19 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 18:00:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 18:00:19 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 18:00:19 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 18:00:19 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 20 Aug 2026 18:00:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 20 Aug 2026 18:00:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 18:00:22 GMT
USER gradle
# Thu, 20 Aug 2026 18:00:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 18:00:22 GMT
USER root
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7443020b403141e1f17fca248791abf7bce88cad1fbf13bf52b35819044cb757`  
		Last Modified: Thu, 20 Aug 2026 17:21:14 GMT  
		Size: 170.4 MB (170436187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74dccf15b2ed1156a7743ca399303a81a5307e05c93cd8f62d82cf3abb838368`  
		Last Modified: Thu, 20 Aug 2026 18:00:56 GMT  
		Size: 86.9 MB (86881273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b1809a83ba9edb4451f90659343d2ac7fc444d527626e3db0e8c4d3f9e38a9`  
		Last Modified: Thu, 20 Aug 2026 18:00:52 GMT  
		Size: 1.6 KB (1649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ac53c30e49ad26a85e2d6a3953f6153b3625e05ff33f5dcc0075adfe4e316b`  
		Last Modified: Thu, 20 Aug 2026 18:00:57 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13b80e4fa876e766f8194e19ccdb7730192982483d28040c523b58108d102cf`  
		Last Modified: Thu, 20 Aug 2026 18:00:52 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:605f9df44b6a3332918038d03f27611a3c6d50037299104ddb08ef92a79af684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11415709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8dbed8f6a8a61a64fb271a27750f2bd633d70173b0fee9a61d72ae0d066426f`

```dockerfile
```

-	Layers:
	-	`sha256:8a80cde87ef66d7595a113fb27a0966a50e176fe0fe090c1e0774871538b7999`  
		Last Modified: Thu, 20 Aug 2026 18:00:54 GMT  
		Size: 11.4 MB (11394058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ffb7b2cbddf2495045e10e7192c997c2a2449dd592af64859e41dbec3808769`  
		Last Modified: Thu, 20 Aug 2026 18:00:52 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2fb1860303b1e719caf8357f8a01c60826c5c7a3d9200d3e29b828496a3edd1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.8 MB (459773253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5795898d05465cdee2fa246e58f016e992ce08e5541c82bd3371c5eb35eca5f`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:58 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:17:58 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:58 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:58 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 20 Aug 2026 17:58:06 GMT
CMD ["gradle"]
# Thu, 20 Aug 2026 17:58:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 20 Aug 2026 17:58:06 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 20 Aug 2026 17:58:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 20 Aug 2026 17:58:06 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 20 Aug 2026 17:58:06 GMT
WORKDIR /home/gradle
# Thu, 20 Aug 2026 17:58:06 GMT
ENV GRADLE_VERSION=9.7.1
# Thu, 20 Aug 2026 17:58:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Thu, 20 Aug 2026 17:58:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 20 Aug 2026 17:58:10 GMT
USER gradle
# Thu, 20 Aug 2026 17:58:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 20 Aug 2026 17:58:10 GMT
USER root
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a82bf7ad78016387234a023b428081248669526a23fc20057cf2e4b0c105b6f`  
		Last Modified: Thu, 20 Aug 2026 17:18:21 GMT  
		Size: 168.7 MB (168685777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99abc45eaafec6264b5601ff2dc584eb89ffd9a92389397261f149c60674f20`  
		Last Modified: Thu, 20 Aug 2026 17:58:42 GMT  
		Size: 86.3 MB (86251555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d98d46e5e8b1cd835503ca861b0623d88c151b00d0c5694031e8ef906a7e9e`  
		Last Modified: Thu, 20 Aug 2026 17:58:38 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3589534486b91a2d35b7f6c20d643a5154129e1106c46df5e861fcc2b5d2fa`  
		Last Modified: Thu, 20 Aug 2026 17:58:43 GMT  
		Size: 151.4 MB (151354020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff66a97e0d0ca44e83b23770180280ffd57bd8349d090947ddb2bedf4e3fbd10`  
		Last Modified: Thu, 20 Aug 2026 17:58:39 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:22f3b5bf5b38ea39631acd80e69061e63f489fdb08641d64de17dfaafaca7de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11414907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e561f202db85e024fbf8456d37b54b33439edac0a08106b546affd1d1ea78b5d`

```dockerfile
```

-	Layers:
	-	`sha256:c6bc8efb24e0841bde61d20826c1857de71dda78bc1f4f2296750e8fe167156c`  
		Last Modified: Thu, 20 Aug 2026 17:58:39 GMT  
		Size: 11.4 MB (11393061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12ca0a9f7ff2697fd2ec7b3b7c07cd6a35e47a63a6f14a5f870f9a8eb950974a`  
		Last Modified: Thu, 20 Aug 2026 17:58:38 GMT  
		Size: 21.8 KB (21846 bytes)  
		MIME: application/vnd.in-toto+json
