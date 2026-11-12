## `clojure:temurin-27-lein-2.13.0`

```console
$ docker pull clojure@sha256:5bd4f7ffd6b2f565b88f0cfff34841bb64ff1b9c14b826d7ee7fc3cc111b5847
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:b3dec43381402230ac878a50e16c2848576f521a6c17b4ce5530d10b052303b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166823531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b907bbc3a06422cd336350e6226e2870101d3ee406c90c0e5b51598b99ba74e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:51:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:51:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:51:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:51:54 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:51:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:51:54 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:53:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:53:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:53:05 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:53:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:53:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:53:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:53:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb78edb7cae6200df5429b7a4d6d4ef655528a9818582bac8d1f385fdc1d9222`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 93.6 MB (93647885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88ecd31d108856d81bc88eb3652742f6818f85160a8af128e1d91facd5d53bf`  
		Last Modified: Thu, 12 Nov 2026 00:53:25 GMT  
		Size: 20.1 MB (20133027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcc7497ffcf09d965b1ad26b04e76bf9045b8bd7ab47291515e3902dc3c18dd`  
		Last Modified: Thu, 12 Nov 2026 00:53:24 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b3ac6819874dcb736ba0db9c86755e7adb8b8855c7be2d5a1157542ff401d0`  
		Last Modified: Thu, 12 Nov 2026 00:53:24 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:7d14b684c7cc2e387197dab015c67c88b9a632d1c235f01179f47c2b68873a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96b951bef54624abad3c414788baf28f569c0d5b38d32ea5494f6eada8da3fe`

```dockerfile
```

-	Layers:
	-	`sha256:851cc2f0807b2fdb32583365f597336ecb1096bd0361a759619fc804951df3a8`  
		Last Modified: Thu, 12 Nov 2026 00:53:24 GMT  
		Size: 4.3 MB (4252308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56d8b025070ff1f60055b2e389de91f7b49ba35bb734eeec727f97c65a69a1cb`  
		Last Modified: Thu, 12 Nov 2026 00:53:24 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d22582a714a71b7fd5a1555447d6386b1773fb9e380c6f2972f2b300db4e5c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.6 MB (165556148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d732a23ee16de1e8c4bbb1cb084a788b35f6440a48811b5300d8c48cdb03e806`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:07:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:33 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:08:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:08:49 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:08:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d8ba91ce0c47c572d281b1d0193ce91f39759a30ebf17d68c8189f16959b29`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 92.7 MB (92660443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ac4519f97d16723da672d8a46ce51f14f75944ad69b89ce07bdde8a7727cff`  
		Last Modified: Thu, 12 Nov 2026 01:09:09 GMT  
		Size: 20.0 MB (19967117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817018f51ddd74240dbacfa41cefadac548d7b9f69ce560e059a2776b576c8b5`  
		Last Modified: Thu, 12 Nov 2026 01:09:09 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c894623cd29d4bfa056f1c17132f02f078af9c54eaa016b5e54ecc784fc86e`  
		Last Modified: Thu, 12 Nov 2026 01:09:08 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:2aa8f72327b4b55bea2fcafd10ae67aaaaccc998abf711607ac70a65aad62970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e991009dbcd90fd229d710a2ec4cc91c5f0ea004334c9984361dac981dca75b0`

```dockerfile
```

-	Layers:
	-	`sha256:d3cef71d537e9c728a2284a4c529b1fa752231396eefcf1ee340a0c4850283a7`  
		Last Modified: Thu, 12 Nov 2026 01:09:09 GMT  
		Size: 4.3 MB (4251944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e25cae2269a32783b3eb725393ce4bc0e546829cbdaa18346a9763968d4223`  
		Last Modified: Thu, 12 Nov 2026 01:09:08 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:849111747140fe2ccbb1d0efa722562e2d1ee2e453a93fe66641bc980baae371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169167727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30b85b716620a95dfa8968215a904f8596d37cad8d3ed70f5c41a52405912c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:52:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:52:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:56:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:56:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:56:15 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:56:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:56:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:56:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:56:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e75d38b2fe5bbc4bc23e1222e27c678405808c109729123654e27aa51a377`  
		Last Modified: Tue, 10 Nov 2026 02:57:13 GMT  
		Size: 91.9 MB (91925710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4b68721257c168beff380c329470111a7ca625202bdafd56804bdfc566804a`  
		Last Modified: Tue, 10 Nov 2026 02:57:11 GMT  
		Size: 20.4 MB (20357258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685572e07c83f2da694d37068f71d0bb039daa8125615293426ce716c87dbd98`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1020cf2fac530a2b81950cffcf9755422e58fd0bdcf81677e1a34ee716567a14`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:be922deaf56bc3293f453c9aa4e4440ef85ad04cf2f3b7cfc83b9e6a856bf23f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d066e06601bf12075b456830e5a69b08a0587ee3f2a4ebb16cacc7c90e57943`

```dockerfile
```

-	Layers:
	-	`sha256:df2c757fc1407539e234088f8d2f9041a9ed66fe089841820849722e15287a00`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 4.2 MB (4236256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b68a39a80b2190da613f6e91c9bc913a1dead0a399aedb0370bcc5d40bd1c085`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
