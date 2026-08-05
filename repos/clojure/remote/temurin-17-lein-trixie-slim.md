## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:d97a66d80a66a79d521d67959c45bf078eca073add9d1102dead8c581a731349
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

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fd6dac38f395a1b66955da804996f7b930e0e4b734b2f88ca9654ab02cd79d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196956259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f160eacefd290ebe60c4b98ffc009c9a1133a85f7670412b4b502c257a26e97a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:20:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:20:40 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:21:54 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:21:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:21:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b9eccc8ebbb7f96252f10566b16726af367a0182b6d4b0ac42e969ea1a9965`  
		Last Modified: Wed, 05 Aug 2026 01:22:16 GMT  
		Size: 145.9 MB (145905423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99eaaec04ca24973a76ce935bb1241ea46003d0d287c8d6dc511a24e7384052`  
		Last Modified: Wed, 05 Aug 2026 01:22:13 GMT  
		Size: 16.8 MB (16754417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea280d047e00a0d8f9fd6a0f0581ec822301314307f3b897dcef1bda7ce41440`  
		Last Modified: Wed, 05 Aug 2026 01:22:12 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d4cec2fdcaa2816a20450b02293642c7eda3fa7bc451a0015bf11bc6e9e1b2`  
		Last Modified: Wed, 05 Aug 2026 01:22:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3751e503ad8bceadb0106bc195b31ab48a91ccda8271fc1f6fa46d0300e22581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3134645dcb36c6343cacb143e623d121c544a50eefee4945087beb2220fdf906`

```dockerfile
```

-	Layers:
	-	`sha256:b5e85f668e763370c28d077d744062ffc3c5f930f3ae7d785cdaf78f5072360c`  
		Last Modified: Wed, 05 Aug 2026 01:22:12 GMT  
		Size: 2.4 MB (2367117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4874246effa25fd89820cf491a0d4171a0764a1000dee89d22a96ec61f30b609`  
		Last Modified: Wed, 05 Aug 2026 01:22:12 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:81af7ed9e6176feb0e7e527c8ccf26766e3aaa7f19556fc97dc369497292029e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196095147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33308aa27e5a0657f15d035cab2ea63ed1754ec5baa2b61ad5f1d0241df4692`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:26:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:26:53 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:28:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:28:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:28:10 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:28:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:28:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:28:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:28:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee965bbc7d973beda4a28f381c6d96541f9dc27e79eec9a077a237403d0590`  
		Last Modified: Wed, 05 Aug 2026 01:28:21 GMT  
		Size: 144.7 MB (144724301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb75a68e08d272c0e1b265d341387c626abf425bda3961307cb7904d87fe3246`  
		Last Modified: Wed, 05 Aug 2026 01:28:28 GMT  
		Size: 16.7 MB (16711638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4ff63fc68f30072edd7536a0cffe822acfe86da3b3f262294975ce87c1a7eb`  
		Last Modified: Wed, 05 Aug 2026 01:28:28 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504d924bff6bb339e4efeac5b96f5b37e01627d121d2cee6309796a46d60e787`  
		Last Modified: Wed, 05 Aug 2026 01:28:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cadfd57d97c1b64fc9fcfe50b584173309616eae9226ea7e16d98602be1a38b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2067b0b36fd61edf4204840daf3540f8af8c38d4f4eb8dd6eda4935805d4490b`

```dockerfile
```

-	Layers:
	-	`sha256:76d3583bb1937dabaa61bcf20c069369e89d94bf58c25d06a7a0f81d333115f3`  
		Last Modified: Wed, 05 Aug 2026 01:28:28 GMT  
		Size: 2.4 MB (2366727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a85d79dc224b502afab2651c07a03c61b988846e9d062156baf886ce310fd397`  
		Last Modified: Wed, 05 Aug 2026 01:28:28 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7c658a4b52401d8265c0d658e145f3f544c78eb1292c6bc06d297d2fc8573638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200665158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b80ac5dc37962d0382bdbb0727779d39b4d34b73fc0b3288cf2b7be43a5de89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:43:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:43:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:43:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:43:35 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:43:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:43:35 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:46:06 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:46:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:46:06 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:46:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:46:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:46:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:46:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bc9ac95bae09b895d65d01a3dc3287bb777a358cde18c692ef70e9e7d7502c`  
		Last Modified: Wed, 05 Aug 2026 07:46:43 GMT  
		Size: 145.8 MB (145766106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e51a24aac0cf4fd10cb196f3524bdb4fa385d310701da9ad72c5faae8eb50`  
		Last Modified: Wed, 05 Aug 2026 07:46:40 GMT  
		Size: 16.8 MB (16782052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4effdae7b93adc5a77b4e1e2d57f959165e258a211d7d7e55a44385c4bb7daa`  
		Last Modified: Wed, 05 Aug 2026 07:46:40 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf667ce954b8c824f6e58b1a40be8ab5577121cf7be0a79d9c49cc860239958`  
		Last Modified: Wed, 05 Aug 2026 07:46:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f205ce647818743f44b25a71777ba33692702149bae91d4799d26ced043a9900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1156093b8f239128b4e14d736d552740790aefb57d325a8d278f5b22df5ecd96`

```dockerfile
```

-	Layers:
	-	`sha256:2646a146de7fa113c532433fc5f16d13d3ffc6490b3748e9ed1d43a81dac3c71`  
		Last Modified: Wed, 05 Aug 2026 07:46:40 GMT  
		Size: 2.4 MB (2368097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9288c7924753e71d2891941b71c11a015e99d3aba59b9cb954e5aa26f339752b`  
		Last Modified: Wed, 05 Aug 2026 07:46:39 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:4b18af000b3bc47dfbef5a732d63eaf8791d661a5db2416fc0615f03ed42819b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187052772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6862b54a68cd73837eabe348a0fab834734f22da65a6e42107f2894a6c3eb0ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:47:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:47:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:47:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:47:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:47:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:47:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:48:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:48:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:48:17 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:48:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:48:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:48:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:48:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe09bbca7209cd8bc7e45126305caa904e5b557cc719eb04ee86209ef81b7928`  
		Last Modified: Wed, 05 Aug 2026 01:47:54 GMT  
		Size: 135.9 MB (135910415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e88e532335f9ecbf00fd7eb968dc5fa220869a475727d58cf14d16522bcbd1`  
		Last Modified: Wed, 05 Aug 2026 01:48:41 GMT  
		Size: 16.8 MB (16780137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c4fb6d9e307680c5d0bf4396e8560c02e436c2d07cac7dd5369178ec3a80ae`  
		Last Modified: Wed, 05 Aug 2026 01:48:41 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e894fd8806d6c28bbc8285fd9daf2120a41c9e69479f2b163a0f9245ca23ef`  
		Last Modified: Wed, 05 Aug 2026 01:48:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cbf682b0f1692686f0c06fe110e3b82039a1ad81dd422483b94b90f7de04f3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1be3fecd23cc47badcdacd7c80dcf72f7f93e3e21e66a80269fd35191c61e66`

```dockerfile
```

-	Layers:
	-	`sha256:808467fb134346e68bd922b101e02c9e9073e8b959879dea05e73d6da9a34110`  
		Last Modified: Wed, 05 Aug 2026 01:48:41 GMT  
		Size: 2.4 MB (2363544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e84f6b2cd6ed8a3f5784ed1ffd2c3089126f41c8e48753c034f0a7d93c9a4bc1`  
		Last Modified: Wed, 05 Aug 2026 01:48:41 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
