## `gradle:jdk17-noble`

```console
$ docker pull gradle@sha256:81625e0a64c8c9cdc1d1ac8c803700db6b549e6bd9afe7830a63622f85ab93b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:jdk17-noble` - linux; amd64

```console
$ docker pull gradle@sha256:7d6aa2573eefe777aad840a703a3ca50c9236fd2c36baaa3ac20ed7a7df776c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.6 MB (413573214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9f24c2efd0aea82e371645dd280b5ad0de47c0eaebf1a283a7a6bee206cc9b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:20:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:20:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:20:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:20:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:20:02 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 02:20:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:20:10 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 03:18:20 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 03:18:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 03:18:20 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 03:18:20 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 03:18:20 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 03:18:36 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 03:18:36 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 03:18:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 03:18:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 03:18:39 GMT
USER gradle
# Wed, 09 Sep 2026 03:18:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 03:18:40 GMT
USER root
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af03028a80be44c288c455b3e6a025208eb65d4a018f8e32e52999846ddfdd30`  
		Last Modified: Wed, 09 Sep 2026 02:20:26 GMT  
		Size: 22.9 MB (22931191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4659893a1d3eae675f0537d051a6b09ec32c08a1256932ebece20760d47825`  
		Last Modified: Wed, 09 Sep 2026 02:20:29 GMT  
		Size: 145.8 MB (145832822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f479ca88d817ca1bed10faea44654257842764811548c2261fa878fba4402c7a`  
		Last Modified: Wed, 09 Sep 2026 02:20:25 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d13fc2e377524bc08fa6e7813247de116d853b8a767b4c543ccb072affa004`  
		Last Modified: Wed, 09 Sep 2026 02:20:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc0f0e0d838d6aa1c25db9ba3ad263af96e73e44db9e437ac50cd89dbdba88d`  
		Last Modified: Wed, 09 Sep 2026 03:19:00 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d70e51b688fb41fdbb7bcff274ecd3597be8696775b186ca605f73481bfc61`  
		Last Modified: Wed, 09 Sep 2026 03:19:03 GMT  
		Size: 63.7 MB (63662380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0760353de1d6461b78ae88dd1b863dca4c2b455b1b2b335f9d41957fdf3774b6`  
		Last Modified: Wed, 09 Sep 2026 03:19:05 GMT  
		Size: 151.4 MB (151354021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425ea0221f456cba3ac5cb75b4ea569387b641248357df3f9bed714024ceaeb0`  
		Last Modified: Wed, 09 Sep 2026 03:19:00 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:f8dc85f49729895ff73d68499ff7cf048330d40badc3eeb6b1b1e3977b93c8c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7440902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b19f835e7f2a460c98ef4a76e26dd7869fdc38a99cfb779f7c225d6e462a00f`

```dockerfile
```

-	Layers:
	-	`sha256:133412bfc11cb09e5816ecedb8c0017c1f2a427c3d6c59f4289da9c2852c35f8`  
		Last Modified: Wed, 09 Sep 2026 03:19:00 GMT  
		Size: 7.4 MB (7417213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0469b02cdccac7d05e19213b26f148e0967f82b3b04cc32487d272ab794aa66e`  
		Last Modified: Wed, 09 Sep 2026 03:19:00 GMT  
		Size: 23.7 KB (23689 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-noble` - linux; arm variant v7

```console
$ docker pull gradle@sha256:7213e4e32a894cb23ea6c622b3c1cea42f2e0620d1240524f20d5d12ee3f64d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.0 MB (408958300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af2ae2e2f435aaa2f3657faa507100395d5a02c0686cb3a4d13e61779b9e173`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:50 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:50 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:57:53 GMT
ADD file:7b24dc56d03ed9c6ddefab76dfb3e7b8bc4eafa9059d2a0ed52016ba82b6d110 in / 
# Mon, 07 Sep 2026 06:57:53 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:12:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:12:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:57 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 02:13:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:13:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:13:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:13:07 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 03:16:01 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 03:16:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 03:16:01 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 03:16:01 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 03:16:01 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 03:16:23 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 03:16:23 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 03:16:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 03:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 03:16:26 GMT
USER gradle
# Wed, 09 Sep 2026 03:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 03:16:26 GMT
USER root
```

-	Layers:
	-	`sha256:2c98e8ee99c3e9905d854eff5f5f0fff270d9f9afc085063b8bc98145a2f5f5f`  
		Last Modified: Mon, 07 Sep 2026 07:57:11 GMT  
		Size: 26.9 MB (26894017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234ada998baae70dee174d2ae5b88023e2a67b1b2e55fc659f076be7d268f59c`  
		Last Modified: Wed, 09 Sep 2026 02:13:24 GMT  
		Size: 21.3 MB (21347861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76a9b02dad2dbe50b4f4b7ac853777bad9fc0adf84b7a0e7c6e34210004ace6`  
		Last Modified: Wed, 09 Sep 2026 02:13:26 GMT  
		Size: 143.1 MB (143140923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8bd7889704a9124dc7ae585c7caa1ac7a775884d00f0ab442a42c2a039fb106`  
		Last Modified: Wed, 09 Sep 2026 02:13:23 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2624b1f61b73472c1d1d38b2ffe98bd06c5e564f99a6f05f21aac9db741c570`  
		Last Modified: Wed, 09 Sep 2026 02:13:23 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8607f08dc3dd0a1425153e224f1ff5ca537a429d2f37d755ea5eeb4887fb3233`  
		Last Modified: Wed, 09 Sep 2026 03:16:46 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47339f8c3ff6d3ab9cc133dd52413e7e71c5f705d29518ddf01129f394765e7`  
		Last Modified: Wed, 09 Sep 2026 03:16:49 GMT  
		Size: 66.2 MB (66210468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7032450b9e44663c2166aa55ae54b2a721d7d33c003ea1c1a8c6d093274aaa4f`  
		Last Modified: Wed, 09 Sep 2026 03:16:51 GMT  
		Size: 151.4 MB (151353986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323b929db0ae8da9ed9b2a371ff4e2f329389b01bb416c6da93ccda246236e91`  
		Last Modified: Wed, 09 Sep 2026 03:16:46 GMT  
		Size: 7.1 KB (7104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:cc0d4cb52bf5c33402c9d1513b688c2d4fa940fd87e54540226abb33cea93099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7379554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a786d1b163bd85d083c6f9d915aa2d817554cbd4cda7c23a5336917fd5a73924`

```dockerfile
```

-	Layers:
	-	`sha256:317ece455cc747a472f737dc24e52a6d7fea094571930235d991213179909f54`  
		Last Modified: Wed, 09 Sep 2026 03:16:47 GMT  
		Size: 7.4 MB (7355747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecbd693bcc257416be03981c7999269ffc9d01f77fd013a307fa97ba8b43f57c`  
		Last Modified: Wed, 09 Sep 2026 03:16:46 GMT  
		Size: 23.8 KB (23807 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d026695fe7a6e184917647867c91d5986ed16cff8543f45b3a168a5fdbf5c3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.2 MB (412239704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2447532ab5dd124db0898fbd403729127e5f8da1bd2df623ef40406cd170c13d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:17:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:17:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:17:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:17:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:17:39 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 02:17:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:17:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:17:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:17:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:17:46 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 03:33:03 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 03:33:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 03:33:03 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 03:33:03 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 03:33:03 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 03:33:21 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 03:33:21 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 03:33:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 03:33:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 03:33:23 GMT
USER gradle
# Wed, 09 Sep 2026 03:33:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 03:33:24 GMT
USER root
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abb33c93a7d5bb9005a13a4f1a2561539b13ef808d2a1ed669f5f04cd5b9188`  
		Last Modified: Wed, 09 Sep 2026 02:18:04 GMT  
		Size: 24.1 MB (24130727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e657183995bfe5c11b885fb4dccf6d54e13d7646f148b138548ccc46a6e004a`  
		Last Modified: Wed, 09 Sep 2026 02:18:07 GMT  
		Size: 144.7 MB (144655670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85376adc4f649d62777080991fa55e8c25f155a43b4796755eaf9d414534e50`  
		Last Modified: Wed, 09 Sep 2026 02:18:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3578663931608b3b26dbe8b4d4c7eadcc83d6a51e7a581d7a1bcbd349b3850`  
		Last Modified: Wed, 09 Sep 2026 02:18:03 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25dc04a8145bd146c42b80a5f91bcbfd5879aa683f8a469ff8bb078571def51a`  
		Last Modified: Wed, 09 Sep 2026 03:33:44 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be03c7daa15401d384ceec0f3e58882eae0b0333f0bde880637e0aa79b2dd136`  
		Last Modified: Wed, 09 Sep 2026 03:33:46 GMT  
		Size: 63.1 MB (63125996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a6d026447b5fd139075b12ba5288489eff76ad22fffd1a286f5b319bbcd70b`  
		Last Modified: Wed, 09 Sep 2026 03:33:48 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48117c55acbe71811298c364e79246dd5b87a2f6b6225cef5a4d6f411f32d42e`  
		Last Modified: Wed, 09 Sep 2026 03:33:44 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:12a4cb78424933306087b8cddb1bfc3146cfea0a788d04271df837c4ae707b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7578725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afee9a4dadc8c4f96544c616e44e22fa46d522c00a8d56a27f167aba264a3113`

```dockerfile
```

-	Layers:
	-	`sha256:b4b74bfb928babd456c36c012648f94030939ff22ba58b5f6a9d43c572d41740`  
		Last Modified: Wed, 09 Sep 2026 03:33:44 GMT  
		Size: 7.6 MB (7554887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a2ed8307255a6749bba20e38407cde0a89637b349432757ab7f54c0d6084cc9`  
		Last Modified: Wed, 09 Sep 2026 03:33:44 GMT  
		Size: 23.8 KB (23838 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-noble` - linux; ppc64le

```console
$ docker pull gradle@sha256:616694899f2e19c2b65fa3d2227cacd83abd038d056b52521fb8eee912824de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.4 MB (424381446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde81925b97b7e5639c69bbfc2c762aa715939982041a8f21d4005cc524ffe33`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:45:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:45:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:45:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:45:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:45:08 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 01:45:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:45:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:45:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:45:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 01:45:45 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 05:18:24 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 05:18:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 05:18:24 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 05:18:24 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 05:18:28 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 05:19:52 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 05:19:52 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 05:19:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 05:20:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 05:20:03 GMT
USER gradle
# Wed, 09 Sep 2026 05:20:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 05:20:10 GMT
USER root
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b909d50e4e24924f6eb98fda60dc3b65702ab4a1c7803a2e7f2fad0b23130f`  
		Last Modified: Wed, 09 Sep 2026 01:46:46 GMT  
		Size: 24.1 MB (24057036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fc13a1c4921c6ce4a37607a5d2917d33ccefe5223897abd5523b652edefa91`  
		Last Modified: Wed, 09 Sep 2026 01:46:48 GMT  
		Size: 145.7 MB (145681672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e0e9fc55dffb99238add536dc8932b4a5686293da120502cdbdf382bdc4b1a`  
		Last Modified: Wed, 09 Sep 2026 01:46:44 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ab0cbd647814e65eb6ce883639ac36ef1c9a4b38e39ea39e8decf570ea9cc0`  
		Last Modified: Wed, 09 Sep 2026 01:44:33 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622ab82e50aa0757f327740554e68ced16b85f2b3afa47de842a6825335a1693`  
		Last Modified: Wed, 09 Sep 2026 05:21:36 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655cee0247816618424c2235e1245969fc9ae22db1c22bfc31d7242d775ba300`  
		Last Modified: Wed, 09 Sep 2026 05:21:39 GMT  
		Size: 68.9 MB (68907521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f2ddd2a6ef2822fe9cb1f85d1a16d747ab0aff997688c0283ac41a0931418e`  
		Last Modified: Wed, 09 Sep 2026 05:21:41 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86837009b69dc27219c8d6a7e8acbe82c43ce6f6b33ab8d82470b06cd29ba59a`  
		Last Modified: Wed, 09 Sep 2026 05:21:36 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:a0be45969bd26445dff2b8f1e32eec281ace900edf7cca7053c6b331e4cfd755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2028c9fc12d6a7285b7ef456d5d3041ed9ac76d9bdb5f3568b27666b45138bf3`

```dockerfile
```

-	Layers:
	-	`sha256:2fd046d5643d2dd2e755a9fbe3ee02c28b01b21345bd6f222810afa510dea6c3`  
		Last Modified: Wed, 09 Sep 2026 05:21:37 GMT  
		Size: 7.5 MB (7468319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7510d29f278c651520652826d2246a9a734e7b7499070c33e568fad7036d0d`  
		Last Modified: Wed, 09 Sep 2026 05:21:36 GMT  
		Size: 23.7 KB (23736 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-noble` - linux; riscv64

```console
$ docker pull gradle@sha256:2762a65d6d41d098cb23334b854c8a5cbbe076d0386c1d9f1a0415b6cf761bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.0 MB (416989189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df21d2b1d47460b1f4100cc60ccd02bb867c586d87034f89fcaeff80299e03c2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:18:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:18:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:18:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:18:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:18:29 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 02:19:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:19:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:19:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:19:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:19:40 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 05:14:56 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 05:14:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 05:14:56 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 05:14:56 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 05:14:56 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 05:17:40 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 05:17:40 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 05:17:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 05:18:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 05:18:09 GMT
USER gradle
# Wed, 09 Sep 2026 05:18:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 05:18:15 GMT
USER root
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e78829d3decd8cdda18667b6ed5330c604f0e72e58cd8d438a14db42b31349`  
		Last Modified: Wed, 09 Sep 2026 02:23:22 GMT  
		Size: 20.1 MB (20109893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1b61717d4844e867b173717b1a3f24b2df82cf40517716243ceab58ceebd20`  
		Last Modified: Wed, 09 Sep 2026 02:23:40 GMT  
		Size: 142.8 MB (142818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7827065e24b65427825642ad0ef881bc3f663654e7effc0db885339729c0b455`  
		Last Modified: Wed, 09 Sep 2026 02:23:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241f6f286a6351383bddf8d6cbbf46e2dae0b9cec5c17cdd5d9f443c18ca6e9f`  
		Last Modified: Wed, 09 Sep 2026 02:23:16 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d836adb727cf5e4139505c81b1a93385cd5f92b19272af9973831475c568cb`  
		Last Modified: Wed, 09 Sep 2026 05:23:38 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5faa4f361c875d4c5d2df1539d202c94197e7da11e026f42e20760d1734dd2`  
		Last Modified: Wed, 09 Sep 2026 05:24:00 GMT  
		Size: 71.7 MB (71652923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ba4bfe3a21baacdb11a612e4c9226baea358ed782cee808d37c0cc1de80a5b`  
		Last Modified: Wed, 09 Sep 2026 05:24:11 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013f29c4d040ececd89ef4695e5e6428addd59e29da87836faadb9042d71cf84`  
		Last Modified: Wed, 09 Sep 2026 05:23:38 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:bd6ee13da69e2aa9658ad31810a4e5c4b592b500f803d53432e218309e5384d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7542797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf31550acacb640724fb523029216d50bd30f7df3dd2f9a7ff2111304c1042e`

```dockerfile
```

-	Layers:
	-	`sha256:e937814e2a50d3dd5a5b5c7c9242065421ead367b579bcb0004d4d84046e89a3`  
		Last Modified: Wed, 09 Sep 2026 05:23:40 GMT  
		Size: 7.5 MB (7519061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cfe365efb016b1514c20cf357dbfa78a27f2e281d7082deeb6314a88737e83b`  
		Last Modified: Wed, 09 Sep 2026 05:23:37 GMT  
		Size: 23.7 KB (23736 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-noble` - linux; s390x

```console
$ docker pull gradle@sha256:ff537bbd7275d859a29a0eb8fb7e8ebcd1955d2741e527984b2669fe045c219e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 MB (404629337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66fe20860ebde333d75077256c87b26c129e00997e0219124244f071a26053c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:28:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:03 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:28:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='bc36e8044c88df9f4ec2967c5277d1c8fae572378c12c0bac44dcae15d3af2f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:09 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:40:30 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:40:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:40:30 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:40:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:40:30 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:40:45 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 21 Aug 2026 18:40:45 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:40:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:40:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:40:48 GMT
USER gradle
# Fri, 21 Aug 2026 18:40:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:40:49 GMT
USER root
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dc04c201858724655cf4ee0f3e109f672c2b0204c6b0ce4fba7e9ec2149d3e`  
		Last Modified: Fri, 21 Aug 2026 18:28:32 GMT  
		Size: 22.1 MB (22087385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccb43fb75888e2226ea048bbe969a02a4fba1732cb0590ad08167cdb2795546`  
		Last Modified: Fri, 21 Aug 2026 18:28:34 GMT  
		Size: 135.9 MB (135878261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5e5047fcfb7d37d6dce2a7b7118121a1105a0e26d09949fa00f0321a65f23b`  
		Last Modified: Fri, 21 Aug 2026 18:28:31 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acf41339d34cfd31de2651b8ec0ea180a2deba1fcdd6d4191a02e3d038abf71`  
		Last Modified: Fri, 21 Aug 2026 18:28:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e349aee32dad4ba60122331c86be611aa0108af53e9d19ed45e52d0c2f97d9b`  
		Last Modified: Fri, 21 Aug 2026 18:41:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18de82e7a084a598c28ad8eb2dbdca104159e80a9016b9d58d1f957696850b98`  
		Last Modified: Fri, 21 Aug 2026 18:41:19 GMT  
		Size: 65.4 MB (65370132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84118a468b20afbd604f7fd8696a63dc957b3123e1240bccd5c2521fcba5dea`  
		Last Modified: Fri, 21 Aug 2026 18:41:21 GMT  
		Size: 151.4 MB (151353986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff5270659dd002c69d008b8b1cf2b24f2b8ef4f8d7aec23f09d0695dbfe8e24`  
		Last Modified: Fri, 21 Aug 2026 18:41:17 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:fbecd0e65b5ad0831a984eafbf7a063e3e4133369531579823fd742fa1bf9c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ab2defaa44f937237a0392dc39d069e65ca4696ee43bf9f063704ede67140d`

```dockerfile
```

-	Layers:
	-	`sha256:b6e3755c39c02a564ff6cdce07d5f695e6681793c88378d33c46246474359ae7`  
		Last Modified: Fri, 21 Aug 2026 18:41:18 GMT  
		Size: 7.4 MB (7362490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b54b23d5eec6ef5f95debd8b450ae4c7ae5d1f3f67a274783c443daa12af5e14`  
		Last Modified: Fri, 21 Aug 2026 18:41:17 GMT  
		Size: 23.7 KB (23687 bytes)  
		MIME: application/vnd.in-toto+json
