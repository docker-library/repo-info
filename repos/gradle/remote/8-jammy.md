## `gradle:8-jammy`

```console
$ docker pull gradle@sha256:da8592e568bd3c66c97152ae927dcc60f5da45684ee330c0ba5bbb1204a97a7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:8-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:edf4b6ee3e708fabb697ff77a73d654b9762aab54968f03b3e601453ad4676e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399465470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157b59a6f9558db9a78623427515aa9cb22b1f7e512ad976e91d1e79242367f1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:47 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:16:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:57 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:15:41 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:15:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:15:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:15:41 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:15:41 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:15:54 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:15:54 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:15:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:16:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:16:33 GMT
USER gradle
# Fri, 20 Nov 2026 04:16:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:16:34 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591c8f167e0cffab004fc01e7e2374b4ef115b32bff173d84244965639b9b34b`  
		Last Modified: Fri, 20 Nov 2026 03:17:15 GMT  
		Size: 20.7 MB (20664462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055784d6f2d9370bf15dcf9940a63f1a04ddd3fc835524af0584a7b6080f2d06`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 158.4 MB (158419765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f469838c8d13e617a33a8f28d146ec41d91cf91fc5191b365dfc41d30b4887`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccd3043e157627f1826de89b2bd620473f95a1d28cb1ec7ea746bee6c5032bd`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5baea686a9bec2bb57b70b9fd66c189d25767112fb3022d718d326e6347c395c`  
		Last Modified: Fri, 20 Nov 2026 04:16:19 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ddb0838690178239bb9b6ccbafa68aa5e46ea0396b0f061dca4372423bde85`  
		Last Modified: Fri, 20 Nov 2026 04:16:22 GMT  
		Size: 50.8 MB (50817637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec2aea7ac209875fcb604acd98ddfa55877690b7c0113a869d0dd30c7977990`  
		Last Modified: Fri, 20 Nov 2026 04:16:52 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f2146af6fcc5d59aa42f8a49ea378be665c9d940d5808ea06a429add11b925`  
		Last Modified: Fri, 20 Nov 2026 04:16:49 GMT  
		Size: 54.9 KB (54908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:9102c7cbabeab890bd1c034e175f0faeb69b241974bbfd41f1f58e3d7181742c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7873889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873207dcced1cb964baf14029ca6d1f935616dbe8655ec287f21ca2a3e1bc0bc`

```dockerfile
```

-	Layers:
	-	`sha256:8445f7efc0765032dff0fb1864364c96924fdebfe4ba5388f29dd3fbcbf5a085`  
		Last Modified: Fri, 20 Nov 2026 04:16:49 GMT  
		Size: 7.8 MB (7848881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14128a57b45e740f7cc06a0e037612b4923b5bd2c3611b22e9f64916ff1572fe`  
		Last Modified: Fri, 20 Nov 2026 04:16:49 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:376682198e47145dd526b977acacd4bd9ffa591508626b3574612407a5f7634a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.7 MB (396679079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fbda76b787bb4aa393240cb937711877efa8aa74756be5c6c47b9428005db0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:38 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:16:38 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:16:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:16:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:16:38 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:16:38 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:16:51 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:16:51 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:16:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:16:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:16:54 GMT
USER gradle
# Fri, 20 Nov 2026 04:16:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:16:55 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d5f41944e7c26ff86012725668b1f33bc6142ca773cc733a66b30ec5bbefa9`  
		Last Modified: Fri, 20 Nov 2026 03:17:57 GMT  
		Size: 22.1 MB (22080656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd48ffa453c5f5a82cdcc188709a96da68fa3cdcefe6a519550da643c91067ac`  
		Last Modified: Fri, 20 Nov 2026 03:17:59 GMT  
		Size: 156.7 MB (156699398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8af90ac559d9065b4f7dfb9fc6940d08c7e8f8b63820f49cf1a27b2dd47f3`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff75ba61adaf2a47149bae71a6f622c7f47b647be8843faa1d291bc16736f3d`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e665abcb802a08880b4ac680fc10d17a4c9a650ad14bede020cbe1d0afb77`  
		Last Modified: Fri, 20 Nov 2026 04:17:14 GMT  
		Size: 4.3 KB (4313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334cdf3747901809911e24fe303fa0aeeea376e026ae051a7a7d5b8a2fb827c8`  
		Last Modified: Fri, 20 Nov 2026 04:17:16 GMT  
		Size: 50.4 MB (50399205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a0259a925c136249a5ee1e3c7c9532a1b29770811c0daf0229906fed32322b`  
		Last Modified: Fri, 20 Nov 2026 04:17:17 GMT  
		Size: 139.4 MB (139431918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1d8282a3728e6aca14876805f0e2f62fdf743d542d47c51732529ffc9f7edb`  
		Last Modified: Fri, 20 Nov 2026 04:17:14 GMT  
		Size: 59.5 KB (59532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:490d46f9de6aa18cd267cb9741da8076b115650d65cebecae4671957b7facc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7975785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a29f3a64547743b6d719573fb0648834640ce42b7f277103e5104a9933063f1`

```dockerfile
```

-	Layers:
	-	`sha256:93d77981b7d2ee2143fbe229d0e76207b352810c6b67d87f533a5932cd0a63a5`  
		Last Modified: Fri, 20 Nov 2026 04:17:14 GMT  
		Size: 8.0 MB (7950568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:233252b41e544d9171c63a46ef2bdbf5901943d32cb65ccdba769d17b77c8573`  
		Last Modified: Fri, 20 Nov 2026 04:17:13 GMT  
		Size: 25.2 KB (25217 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jammy` - linux; ppc64le

```console
$ docker pull gradle@sha256:4df9cb460f50ebb9188bd2f6f66781f83300c25a29b8e6ea6393bec030cb35cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.4 MB (409415843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b813db2ccca6ae65f71b258fc46e1fc4f4d7416ed4d84e0a81fc609c0de0fd4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:32:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 04:32:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:32:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:32:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:32:02 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 04:33:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 04:33:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 04:33:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:33:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:33:13 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:00:07 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 06:00:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 06:00:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 06:00:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 06:00:07 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 06:00:49 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 06:00:49 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 06:00:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 06:03:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 06:03:08 GMT
USER gradle
# Fri, 20 Nov 2026 06:03:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 06:03:10 GMT
USER root
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4630d345451cde4ce300f9766946a88c3dad94936415366fb49a1cbdc49ead98`  
		Last Modified: Fri, 20 Nov 2026 04:33:02 GMT  
		Size: 22.6 MB (22552057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f1742107aefc48ab1ab9bfff6c9583d1ab533cebc4312499a43af2be92b4c8`  
		Last Modified: Fri, 20 Nov 2026 04:33:51 GMT  
		Size: 157.6 MB (157582136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300425933123e3755996386a04401be1acc7eaccbdadd0828037b64e267f0ad9`  
		Last Modified: Fri, 20 Nov 2026 04:33:47 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0db0cb2447e2aa8011b81dec4ac8fead65ec75f779d35f8ab81eff5b4ecf53`  
		Last Modified: Fri, 20 Nov 2026 04:33:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2e14706cc847f9879a2ca9b5e2a15ba920db87badc0260a34fc93806621733`  
		Last Modified: Fri, 20 Nov 2026 06:01:41 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063aef2a29cc4679a1ff7d1c91cf67fdd46f055a9a9377479826ce7339032155`  
		Last Modified: Fri, 20 Nov 2026 06:01:44 GMT  
		Size: 54.8 MB (54786097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a238d896be4e9268ed9df79ff778935829ad786810cf571d1c7969ba9aa2493d`  
		Last Modified: Fri, 20 Nov 2026 06:03:52 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9eaafdfe80945effdb62b6a30842601883819b81a26102560b020dd81adce7`  
		Last Modified: Fri, 20 Nov 2026 06:03:49 GMT  
		Size: 35.0 KB (35009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:0501e03b0ada2db38ca143bb936bdf1ca5b7adec3d5a35c6869922ba9b36d7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7903602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5657198f98484ce266b6ce0bfa997c9747cf4ab84433c88a760d31445f1bc9`

```dockerfile
```

-	Layers:
	-	`sha256:c264be553dea2c82d7d032877061964398a0f52a30c5c26f2177b9cbac06a1ac`  
		Last Modified: Fri, 20 Nov 2026 06:03:49 GMT  
		Size: 7.9 MB (7878515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3787eba86955f2a88f1703edc8a643296713094661495b58c5c306b8432e8e0`  
		Last Modified: Fri, 20 Nov 2026 06:03:48 GMT  
		Size: 25.1 KB (25087 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jammy` - linux; s390x

```console
$ docker pull gradle@sha256:41de52e4ca9585b1a099251ce2c2cd903180094980b591a36a9645a1a9e83ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385785999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383fa03e7d56a671a28ba9c67d7465b3a31f6f7c0caa0bb4aa4fd56c0b843179`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:11:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:11:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:11:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:11:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:11:16 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:17:32 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:17:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:17:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:17:32 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:17:33 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:18:49 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:18:49 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 04:18:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 04:18:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:18:56 GMT
USER gradle
# Fri, 20 Nov 2026 04:18:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:18:58 GMT
USER root
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19d14f67acffa9cec8ab2408d12ea870b6c6c40ee9b41fb85d8b52778921cb1`  
		Last Modified: Fri, 20 Nov 2026 03:10:48 GMT  
		Size: 20.4 MB (20386452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22148eee1d50969a286d3a36c753497818f430d808c61872db2e401258bab631`  
		Last Modified: Fri, 20 Nov 2026 03:11:42 GMT  
		Size: 146.9 MB (146891096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d331a65b63e996a0d0302c4beef9e8881616d402cc24dcd9bc5787f61acc3502`  
		Last Modified: Fri, 20 Nov 2026 03:11:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42def67ddde806467952a6d1746847ee71ade5fb3c52ef065fbdef344341808`  
		Last Modified: Fri, 20 Nov 2026 03:11:40 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc6a64b7ec90d78d8949698ca9f48f1574df8a66a8acea8f1f0734b36040a3b`  
		Last Modified: Fri, 20 Nov 2026 04:19:52 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862b02de83a83d80dc78020efec3a1f314555fb3a575e36cfa13d72049d1d9dc`  
		Last Modified: Fri, 20 Nov 2026 04:19:55 GMT  
		Size: 50.5 MB (50495540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7ec4cc5f3c66a0c703b08711f47ef82ac64dacf284b80a6c7d903f7042ba46`  
		Last Modified: Fri, 20 Nov 2026 04:19:57 GMT  
		Size: 139.4 MB (139431922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6805846a7f1717170639203c1001ae117aa19861ade754661bd5dfc761e69fb`  
		Last Modified: Fri, 20 Nov 2026 04:19:52 GMT  
		Size: 35.0 KB (35006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:c8bda320d4fdaa822f6de6753619da087c94714bb21283bfe689d1a27dbdb127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7796323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a853b0e36a092974253764cfb0830da97fb244a2979c5589cd09f1d8e25ba29`

```dockerfile
```

-	Layers:
	-	`sha256:250609f322f0737eca8d9cb293ba0998bbbe34237f46e708d4536f45de07bd07`  
		Last Modified: Fri, 20 Nov 2026 04:19:53 GMT  
		Size: 7.8 MB (7771315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87073c761f072ce6428a7f741624024793ab50a06bd63afd13d446afe45da490`  
		Last Modified: Fri, 20 Nov 2026 04:19:51 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json
