## `gradle:7-jdk11-corretto-al2023`

```console
$ docker pull gradle@sha256:7750441592a81f1b96a9c4ec543d5322d0dbbf767cc76352ac3e51a4758fc42c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk11-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:49e14e3bfdac74be8cb629c13b5e1b19c7d94a14d18a034139010a56940b412e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.5 MB (432513151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f067444f2b3a80c96a47c89aee812e9c4c6d60f8ec3042ba3c3a35f19ea276cb`
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
# Fri, 23 Oct 2026 18:20:45 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:20:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:20:45 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:20:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:20:46 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:20:46 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:20:46 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 23 Oct 2026 18:20:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 23 Oct 2026 18:20:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:20:48 GMT
USER gradle
# Fri, 23 Oct 2026 18:20:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 23 Oct 2026 18:20:49 GMT
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
	-	`sha256:91e7f36c73f877a6a9a06342ad8d7c87f22a50124f270b5bec3edd365fdbe5ec`  
		Last Modified: Fri, 23 Oct 2026 18:21:21 GMT  
		Size: 95.8 MB (95797860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4eb94ead7a9e8b8fd708d88f4a59d0e74d91436bf66922fccfa8fd75860c2c`  
		Last Modified: Fri, 23 Oct 2026 18:21:17 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690541c5542d054101c4cb8b220db99f0e46c4159aca3947f53fd1451f90ad7c`  
		Last Modified: Fri, 23 Oct 2026 18:21:21 GMT  
		Size: 128.5 MB (128469466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3c64a385ce86af69bf310a478db5a2d062819f5ad439f5f387876cdf13aa33`  
		Last Modified: Fri, 23 Oct 2026 18:21:17 GMT  
		Size: 54.9 KB (54911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:af4b265b8719503cce59f785e7f07af750ce4a9084c8c28f1aa685c37f9dd8bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12584844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c4ecf16285277cc8f1c9885d07d684e5997b9f90dbd97872dbdd423d8d6e8e`

```dockerfile
```

-	Layers:
	-	`sha256:2760b06a22d5b0b53eed0e18141eb579e6073d259f1442b8044e96d50688498c`  
		Last Modified: Fri, 23 Oct 2026 18:21:18 GMT  
		Size: 12.6 MB (12563974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0be86ae755a4abeb80b842267c3f29e0e20024316256281b3ae18312d9cb498`  
		Last Modified: Fri, 23 Oct 2026 18:21:17 GMT  
		Size: 20.9 KB (20870 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk11-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fe084e9da8c88f7064a1f93850f787ae7b6ad1d35d01dac8293cd5980acc3b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.4 MB (429397788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687b5efa761224bdc34eea2fc6d6f30a53281244a19a95c9ec97c9f0d0d8d63f`
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
# Fri, 23 Oct 2026 18:20:35 GMT
CMD ["gradle"]
# Fri, 23 Oct 2026 18:20:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Oct 2026 18:20:35 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         tar                 unzip         wget         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 23 Oct 2026 18:20:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 23 Oct 2026 18:20:35 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Oct 2026 18:20:36 GMT
WORKDIR /home/gradle
# Fri, 23 Oct 2026 18:20:36 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 23 Oct 2026 18:20:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 23 Oct 2026 18:20:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 23 Oct 2026 18:20:38 GMT
USER gradle
# Fri, 23 Oct 2026 18:20:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 23 Oct 2026 18:20:39 GMT
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
	-	`sha256:17719c5ba46f95904ea51ea6187d36d79964b58158f7a7112e8b4f52db5279b9`  
		Last Modified: Fri, 23 Oct 2026 18:21:12 GMT  
		Size: 95.2 MB (95214680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337dec942e135259d547e24fad4757b911f45961f5e830a600aecfb366e2a82f`  
		Last Modified: Fri, 23 Oct 2026 18:21:08 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54290fae9087d93748de5d05deb35305ce3f9625a42f7caf9f9d3b4102c6ba3d`  
		Last Modified: Fri, 23 Oct 2026 18:21:13 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ab0a0584046d22251b21f6787471f98c6c0317406b212ca99c64b60a715709`  
		Last Modified: Fri, 23 Oct 2026 18:21:08 GMT  
		Size: 59.5 KB (59534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk11-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:a07fe068eba52a669e0e43d54fc29364a1c379028c38852b164989e19a2fe307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12584837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ff17a9db40c48a4cc163a474c4b5fd4f247b39ba582adc1eff8ead85c90cca`

```dockerfile
```

-	Layers:
	-	`sha256:8f22211ac4002dc3bf55256a0366f0d5909fe85c1e8c33a420deea405c07b77f`  
		Last Modified: Fri, 23 Oct 2026 18:21:08 GMT  
		Size: 12.6 MB (12563793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4803c041119f8faeea58a8ec6ea1fb6cc3cb262fbf1487d31a2e841f2a8abf3`  
		Last Modified: Fri, 23 Oct 2026 18:21:08 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json
