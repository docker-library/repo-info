## `clojure:temurin-17-lein-2.13.0-jammy`

```console
$ docker pull clojure@sha256:cd3f652b098001168d166b1e25731ee97a047bc714e76065e8061bec26e6655a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:29422bd7fc603bb88fd85b5bdb732be0b3604198eb76d20cab9de14a79c7536a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216230873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f270f97ee4d2537b783c818ec43d5d6d8ebb85c0b8ea83bbbcbef74099f4eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 20 Nov 2026 18:07:58 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:07:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:07:58 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:09:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:09:08 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:09:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:09:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:10 GMT
CMD ["repl"]
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
	-	`sha256:5b6928ba5efb9bf7bb0e181a9c5dc6a33e1f379c5c843e94b3f6343d9b303de0`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 14.9 MB (14857480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515bc33171d0826cdff809187273ea215e87a983a7eb1e2668d9ce4a829f8e59`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 4.5 MB (4515237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5946020c7bcadd5534502ec28bf5537b4b2adef8eaa8de6543ea4371a09f14`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:a8055609211b7a1f44d034890607ad036ba5e149526e8fd845ddb1d536dc2b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4062493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc3957a1b101c4ac08fafd2590b3a6bfde3158fbb421f2a27810cb141926774`

```dockerfile
```

-	Layers:
	-	`sha256:7d739d9ef9dd13fd263353e33be98721db8bfe422c1d00c84342170ef9201ad3`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 4.0 MB (4044899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:580d297a454390a2a7eb0b3ea8cb9ed65d1141462c188047374832e46e09432d`  
		Last Modified: Fri, 20 Nov 2026 18:09:18 GMT  
		Size: 17.6 KB (17594 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c3e674404697edfad18c34a341d3dbd43977889c86e963c9eee231660016cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214436019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89723017e445d7aa2f2670cfa686ab6966b18cc055756430e6d33b67f744092`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 20 Nov 2026 04:40:24 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 04:40:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 04:40:24 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:41:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 04:41:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 04:41:55 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 04:41:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 04:41:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:41:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:41:57 GMT
CMD ["repl"]
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
	-	`sha256:2423e3b79e045b39c3217e77bd895698ee73e8a2f07fbb2d86b191d3d29666f8`  
		Last Modified: Fri, 20 Nov 2026 04:42:06 GMT  
		Size: 14.9 MB (14867465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbf016edbe554373e983af99ca7e6deb44f0d860ba33d66a3f204305ccaef2f`  
		Last Modified: Fri, 20 Nov 2026 04:42:06 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd726dc688caab923e6be080d7a27e2ecf69cea48b86a7498fc2adab32511e16`  
		Last Modified: Fri, 20 Nov 2026 04:42:06 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:4fc5094de4784121df0a2f349c2c43690e0fc985c7dec29ef1e3a281060999aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4158028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53ab2334dc324e9145887dd2609a8b48db13a2b7c75dfe23724985a832ccb74`

```dockerfile
```

-	Layers:
	-	`sha256:35e3d8ab86c7f7d1dd882e07d85a2eb0d54fe696a9cdbc4e69d9e1ac877f50b3`  
		Last Modified: Fri, 20 Nov 2026 04:42:06 GMT  
		Size: 4.1 MB (4140343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c5e2caa52054e44879fa20e0787b97745ef7081ff5d4809ed4431266820375`  
		Last Modified: Fri, 20 Nov 2026 04:42:06 GMT  
		Size: 17.7 KB (17685 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:25f4c86a11c952295d8daf6b541ff4b48af3f34534b351c55e3ffa3c27b4c6f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.9 MB (221891894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbfc3713159af29e580450390ccd1d5a1b70abfb64d2aafd39c6341446ed945`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:15:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:15:13 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:17:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:17:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:17:59 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:18:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:18:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:18:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:18:04 GMT
CMD ["repl"]
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
	-	`sha256:3e4fa5122fc7872d1c90cbdef4ccf2525b70efa6d7b795f06c811f71b31faca1`  
		Last Modified: Fri, 20 Nov 2026 19:18:24 GMT  
		Size: 14.9 MB (14899157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d8648a16d392ea8f2867c380f089e7c14640dd405b81a8e37c9e9b1d88c85a`  
		Last Modified: Fri, 20 Nov 2026 19:18:24 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b26bdc709d632cc07e13c22f844d0a522b31f928d80bb2f94bddeb842add84e`  
		Last Modified: Fri, 20 Nov 2026 19:18:24 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:83a2ae10fbebba5f71ff577497e5f82d3216ab23327b95168008fa4a209cc483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4088775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaeee49437c64df438a0e39d2efdbd71d8fd5582d03c68df95167ebc5abb0cd`

```dockerfile
```

-	Layers:
	-	`sha256:456d1ac78fca91a4ea447130978cd640d1e914fee65c49c0c6c846c31a2a8a32`  
		Last Modified: Fri, 20 Nov 2026 19:18:24 GMT  
		Size: 4.1 MB (4071147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edb889373590e704b0fb26447f0592198d4f9c67a36a0d5c7e047d8b658cd4c1`  
		Last Modified: Fri, 20 Nov 2026 19:18:24 GMT  
		Size: 17.6 KB (17628 bytes)  
		MIME: application/vnd.in-toto+json
