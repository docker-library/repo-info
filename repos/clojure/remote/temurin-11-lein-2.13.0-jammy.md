## `clojure:temurin-11-lein-2.13.0-jammy`

```console
$ docker pull clojure@sha256:82a958d425821ab1824aeac657fb1d31c219a4e7aaa1858b68152b2424b2491e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:acf61f43ba395a2a5e36740fed6c57750a06afae15082ac7d4102c4f005f3f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211083011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6155ce8e66a0c261661d01a22f5f2c2e757332ae5990b172b27c1ae571da27e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:22:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:22:37 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:23:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:23:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:05 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:10:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:32 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:11:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:11:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:11:37 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:11:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:11:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51bf88911d0dce08f10663eed84dbdc813c20c4e7da75f72097f8d3662ef412`  
		Last Modified: Fri, 21 Aug 2026 18:22:51 GMT  
		Size: 16.1 MB (16109314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1cc0967495063559749e9f76673921df615af099290c3541108288dea7e790`  
		Last Modified: Fri, 21 Aug 2026 18:23:23 GMT  
		Size: 145.9 MB (145862846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a80fb69168ac0d8d02458d379d17a45f4715950eb983ad85256dc215cca687`  
		Last Modified: Fri, 21 Aug 2026 18:23:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d926e10fa150da644ceb79be94a8c1c982eb5c89448bf248b6492da42b1e5c89`  
		Last Modified: Fri, 21 Aug 2026 18:23:20 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8a93531083a96d3cd845a554a6575a676699637fa239601d8f1e67ae380f60`  
		Last Modified: Fri, 21 Aug 2026 19:11:48 GMT  
		Size: 14.9 MB (14856075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b6c140a84bcc2f23135f48cb1ffbaed34d9517e5dcd0585cf877c8afb296f3`  
		Last Modified: Fri, 21 Aug 2026 19:11:48 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:24c3b6407b37c424ddff6b73225c96129dfa5869bca6410e846f875ed91f2390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3919763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e27d507c94d4978f715d0d7f00664d9e55cb0124f20d06062b9ff0e9a522e9`

```dockerfile
```

-	Layers:
	-	`sha256:795f676151620402bf6bb78b84f7ff1364c3d323d72d386c3169cfc73848f186`  
		Last Modified: Fri, 21 Aug 2026 19:11:48 GMT  
		Size: 3.9 MB (3904637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d890acb960b012b9fe375e5b28e7f58f21b53550c993fe490fa3e4b05e08590`  
		Last Modified: Fri, 21 Aug 2026 19:11:47 GMT  
		Size: 15.1 KB (15126 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70f72c11091062b475f1cd71499819fba7e3fdb3a40dd916188e08c2a6d0d9fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205609639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745441e5d2c18ca7cb4cc4da60573f0adc63f06fd08107a9a734caea8c24ae3d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:23 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:26:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:32 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:01:10 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:01:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:01:10 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:02:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:02:18 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:02:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:02:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce57e5a0e6137f395e0cb976591246a29d765c7028cdc205aa3ab9309c90eb5`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 16.0 MB (16039301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51653f4cbaef72a782861aee820de76324b9a2f7d979249760e716bdadb3c925`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 142.6 MB (142575271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478e0d13b45816ac56814484c348b8629767bb9bd47743afa3f57936fc156c73`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c62c4d5d0ad212f80bc35c48472cdc7fd8a09c4f5de626b8f653e5c61549d`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df71368022bb8d767e256c402f61887130000d0e9560bef262b10be2900950f4`  
		Last Modified: Fri, 21 Aug 2026 19:02:30 GMT  
		Size: 14.9 MB (14856766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cb3f2f54c4e4a769aa7c02b6829b7a94997513cfd13c2a8176817370cdb49f`  
		Last Modified: Fri, 21 Aug 2026 19:02:30 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:226fca6a854c391be9ab7262f3ca1a1c52c8388be690e127f98429c6d33bbd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354a73eedc2b537924b50d81ba8c053885cd542f2a83bb73b188f20245cbb0d`

```dockerfile
```

-	Layers:
	-	`sha256:b2b2c6454660f2f16687f327790ea6889350bfa120618be17e2271eaed1d8f96`  
		Last Modified: Fri, 21 Aug 2026 19:02:30 GMT  
		Size: 3.9 MB (3904905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:449a12d8b38337ccec594ae815b58198fb50a657cb8a764b72cb08745d91aa24`  
		Last Modified: Fri, 21 Aug 2026 19:02:30 GMT  
		Size: 15.2 KB (15221 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:af7c67fb402b711908f4187e2dcc13357b89cf993b6c73c03daabc0d25087c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204741483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908fdb5b22d76bae4316d085a2f2ab5c594be51bb38d11e8d2dafa81fcbaebd3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 20:25:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:25:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:25:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:25:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:25:12 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 20:30:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:30:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:30:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:30:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:30:10 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 21:33:40 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:33:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:33:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:36:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:36:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:36:14 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:36:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:36:17 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a7a0a0ff7d900bf098958aff1c055b4268f0e1ddbd0b6b097b05677ba2c3b8`  
		Last Modified: Fri, 21 Aug 2026 20:25:52 GMT  
		Size: 17.6 MB (17582935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e526870f5dc702aa139a38ce9ac8a6b3a47c4e428a51581442b44a0bf1e218c`  
		Last Modified: Fri, 21 Aug 2026 20:30:48 GMT  
		Size: 133.1 MB (133104481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163daaf4273d46cdf463cdab47e8f82c7061ed83b599c408bbb951dccf288a02`  
		Last Modified: Fri, 21 Aug 2026 20:30:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da566e50a4958acea4dad42fa456e7da47e0dfa29e81a28f9a4d663d66f021f3`  
		Last Modified: Fri, 21 Aug 2026 20:30:44 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde199c6a1634a8298f35ac70996378f088232ebd40cb74ff2725e69f990acdf`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 14.9 MB (14898056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0db8306656fc84d74f1492e182c7cd7d8618064a93f72b6328fb332c8752612`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:acc26549b8bd08472d53447208be4be65ce0c81c0477e6edcdd22e440e281d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3921286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff4491d9d28dcb4c783449ee79405c9e6d9ccd844e279eaebf44be833774c68`

```dockerfile
```

-	Layers:
	-	`sha256:0c4aedaf08a445de50592818ffc9c98c4b9e5062ac8f3588cf7e36d9e2cddcb0`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 3.9 MB (3906126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:061f9f342157c0ae539e841ebabd63d909accfc8b6947816ee98ef475dd59cb5`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 15.2 KB (15160 bytes)  
		MIME: application/vnd.in-toto+json
