## `clojure:temurin-17-jammy`

```console
$ docker pull clojure@sha256:b826d5bf677faea7942d7f0fa27e450613d618905f8028b4fbf5273e680599da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:e2f88a926541f5e8fc592294b79cdc93b0026c0d78195d265d65c44ff2037658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244740026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672038b5ded7b50549907095affc425259044f14668537803f9b65e91cfde518`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Fri, 20 Nov 2026 17:42:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:42:45 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:42:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:53 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:08:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:08:41 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:08:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 18:08:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:08:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:08:53 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:08:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172b9069a7e8b39b6dfb00304aa3ff3b0738d5508384aea320f3c169b1441bc4`  
		Last Modified: Fri, 20 Nov 2026 17:43:09 GMT  
		Size: 20.7 MB (20664406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aaa706f3146551c0755d15ca6c737657ff9c856527766b40113bf6a7e653671`  
		Last Modified: Fri, 20 Nov 2026 17:43:12 GMT  
		Size: 146.1 MB (146120383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28081938e8e9d5db2259e8ea99e5c1fdd931cdc74ed41eaafac97b43e691a9ba`  
		Last Modified: Fri, 20 Nov 2026 17:43:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3726a5b5b5824d046fb68cc3f247eeb50aacfe68529c078b67cf21ed0c85bc53`  
		Last Modified: Fri, 20 Nov 2026 17:43:08 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20b5a99766f0d047779b1b81b9422e720422b04a2dc548004623ff6594be317`  
		Last Modified: Fri, 20 Nov 2026 18:09:08 GMT  
		Size: 47.9 MB (47881256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6f0c8ec1a3810f1f68abd375427fc06df7dcf3ead945241f6ca408a3b3237f`  
		Last Modified: Fri, 20 Nov 2026 18:09:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f9420814f59faa99a341c1dc758971bdc22c7e77250c5e5968cf06b1f8213a`  
		Last Modified: Fri, 20 Nov 2026 18:09:06 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:dd33ebbd4cff8cf821f954e2743be30ba3203b4754416f5bc6b1827bfc910eaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6460335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700da4326ba81f013bd3b24036213160c412d2ed32d8847022ed3b987bddfcab`

```dockerfile
```

-	Layers:
	-	`sha256:2f15baab1a9040fdec54fcf6dcc521cc1ba0480c3b93f4f74a90ee712ffa0797`  
		Last Modified: Fri, 20 Nov 2026 18:09:07 GMT  
		Size: 6.4 MB (6444790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d54376c841ebc50f3cc0838c02a965874c8c5852ced3a6ad1ff9426f43bee32`  
		Last Modified: Fri, 20 Nov 2026 18:09:06 GMT  
		Size: 15.5 KB (15545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:895d19cf70927cebf978aa67fa56360311f1bfb00129830c83043bc307d5ba57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242938069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af686ef1ad9ef9f1b42866b191648b4c9201ae87c9a793c52ad1206f050df759`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Fri, 20 Nov 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 20 Nov 2026 03:16:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:00 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:40:34 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 04:40:34 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:40:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 04:40:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 04:40:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:40:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:40:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb3651b0412a707feec155d00bbb62a65d6db7475fa2cef82aee5835748855f`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 22.1 MB (22080597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c900a8e3a522595b3082f3e7b5fa43473e8477db408e88ff271782cabb92a1f`  
		Last Modified: Fri, 20 Nov 2026 03:17:20 GMT  
		Size: 145.0 MB (144967790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2ed6a35713e34bdb1dec3c982915ae9c8dc299bc1aa345689d0b40e5e076a1`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d852158187e54e7625fcf79e37932ca744947162e9c40146a4966ddf124e4b03`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce442130314ee768862b2c2b7440060fdd5fcef82ba30694283a8f4797f663d`  
		Last Modified: Fri, 20 Nov 2026 04:41:03 GMT  
		Size: 47.9 MB (47884108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9363c4d0a2768f856bac243534da8ce55f92fefc9ebbe25b38382e151c1b5a`  
		Last Modified: Fri, 20 Nov 2026 04:41:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1a03ba2eab5ce065d41abc79d3327ad739f6171725afa8c92e36dacfbc7754`  
		Last Modified: Fri, 20 Nov 2026 04:41:01 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:32cd59bfa0ea6c9d45eae48bf8c971114e245267066f087d1a4e5233394aab33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6561986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20085f7531e56f1dfff2219a9531d747f4d99b501b69fcdc7388d9732b4eb95`

```dockerfile
```

-	Layers:
	-	`sha256:2e5afdf520b645d97d961d7773da83a4e776fa0e59083dfe51ae15ce2fb26513`  
		Last Modified: Fri, 20 Nov 2026 04:41:01 GMT  
		Size: 6.5 MB (6546350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e57b0d9932262896f0711d7213ae725346912bade490431abe5cda4e953dc93`  
		Last Modified: Fri, 20 Nov 2026 04:41:01 GMT  
		Size: 15.6 KB (15636 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:11089dbe778a1d3666c71b9edab4c90d69edaee5a7b1764be656a7bcfe923237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254312833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc595bb5ea1f493c9a9206aed54cd5a96cb42951232d186822ad5256df67c2c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:47:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:47:28 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 19:15:13 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:15:13 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:26:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 19:26:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:26:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:26:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:26:22 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:a5bb7085b9b349d380442ee0485c6fc228c77f4cc98493713e90d256d85036f7`  
		Last Modified: Fri, 20 Nov 2026 17:48:13 GMT  
		Size: 144.9 MB (144900261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b056cb91b3c9b98598c1ddbcece839b9b956c228142445da14dd5d9d72f723`  
		Last Modified: Fri, 20 Nov 2026 17:48:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6178db04815f6434839f60f7885195971ae39efb74731378a09435ae63a5f5b`  
		Last Modified: Fri, 20 Nov 2026 17:48:10 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231aea4094fa9ec4e08c63d538de5e26d783ca86149b90ae7bebeead706681cc`  
		Last Modified: Fri, 20 Nov 2026 19:27:00 GMT  
		Size: 51.8 MB (51834683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62016bda892f197e09819bbc93052aca94b6f586ed1c36f0ad511061304ea370`  
		Last Modified: Fri, 20 Nov 2026 19:26:58 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b271e06fe3f95ae893bab0954536cbe372a9dd393fc83b29f1cbb06390b0117a`  
		Last Modified: Fri, 20 Nov 2026 19:26:58 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:8969bcdc736529072af3342249b6db390092fc79c4ca513b39800755470245e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6489741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e9abf4d31d502cf80762b0da23feba49b6ca764c4a5a14093cbf0855694ac4`

```dockerfile
```

-	Layers:
	-	`sha256:fd018d046a03b4d46c5828d1ce791bf122359bb1ffb9d7f58dbf65675f4302d0`  
		Last Modified: Fri, 20 Nov 2026 19:26:59 GMT  
		Size: 6.5 MB (6474157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c81c25f1a0fd90211aeb63b93512877d167306890c9ad0b78fa16d4e396e544`  
		Last Modified: Fri, 20 Nov 2026 19:26:58 GMT  
		Size: 15.6 KB (15584 bytes)  
		MIME: application/vnd.in-toto+json
