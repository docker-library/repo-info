## `clojure:temurin-27-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:1e002d44702cb723ed4ee34040268436be8d07816f51578d4c6ebb8c785a0604
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:3b40b05d42f1071d382bad4473f602c53160e39eac45beb714b55efbf98b028e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169093432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083a4dd7b9baf352afca03871d38960ab85b6b1c591b896506cbda4137e48865`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:54:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:41 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:54:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:54:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:55:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:55:54 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:55:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:55:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:55 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9552741b5e38029cf2c73bac76370ac0ad9c21a59fe1b848c290f6cf32a047eb`  
		Last Modified: Sat, 17 Oct 2026 01:56:16 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fe095e594c266e0d467647bf87a2b845e0b8c6e50bdf98c0d298e6ca834f27`  
		Last Modified: Sat, 17 Oct 2026 01:56:14 GMT  
		Size: 22.4 MB (22437261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fdebd9f9b042dd76bb03bd0eff3ab638f09a0b7eef2258f5b924c006c81a58`  
		Last Modified: Sat, 17 Oct 2026 01:56:13 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58c4347a6c4883a4e4457b364ae956bc43e4bd39540e153b83980815aac437b`  
		Last Modified: Sat, 17 Oct 2026 01:56:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5986211ebb082f51a4f616568aaa7e6c08c118ede728244fca0007b04526b156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db63aae06184cb20e8305b5ee309cc53157ae737277cbc397c93e36ac54f737`

```dockerfile
```

-	Layers:
	-	`sha256:27b4578b33b94ac11266eedec49193fa55131e672185dc822d611b394408a51d`  
		Last Modified: Sat, 17 Oct 2026 01:56:13 GMT  
		Size: 4.3 MB (4253573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d03f951fa1866eb0f3263e432201ad2ca360b1d61a709e67b977f29eb02c0e91`  
		Last Modified: Sat, 17 Oct 2026 01:56:13 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e33c6d35a82d606ae03c2727479545388f0b23a140864a6e3ba28390b618ffda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167781131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c63cdfd8c8912dc24378d9a3d501b601955a050570b4eba9f1992d1d4c2af26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:54:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:50 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:54:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:54:50 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:06 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:08 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08be86da8bbf308f1715b1393f07b962521cad4e5369f4cd5fdd87f33cb2fdd6`  
		Last Modified: Sat, 17 Oct 2026 01:56:29 GMT  
		Size: 92.6 MB (92633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2b7c20a45fa44538980c3755a2018f669f6df72932443302098229c08d188a`  
		Last Modified: Sat, 17 Oct 2026 01:56:27 GMT  
		Size: 22.2 MB (22230848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588eed7f9e078108d0b41259b63781ede298a12d7afeb65858e11c9775dc83cc`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98204679c69bdb148bc20b6c117407824f8959a25d4e42b6b0a9ccbe90a47bd0`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1cd95f9337ecfa485667ceabbe41a85557968c8e3cd6cb7eb8ddcc055b3e5374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f545867d4ecbf5f175a493b665a3d6fb22c008ba432dea8a30ab238ba8d2f3`

```dockerfile
```

-	Layers:
	-	`sha256:066415d290fac06cd2df285c00cdc46276c74aabf009bc5058066dcb3b368278`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 4.3 MB (4253209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4dedafe9de841fed315600dfa6211518d025467c02145994e8e3beb342cf52f`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c3f0063a7931fe968a3c4ff05ffe1f5069ec9672cef0b4746fa272ba40d129f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171964831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2a2ce96667c413e77e9ec1d8e467119ba24117c8f79847ba681c935a1e60d5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:17:58 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:17:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:17:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:21:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:21:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:21:27 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:21:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:21:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:21:33 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:21:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c35d2189bfffaa47d970581dc56eca0931336fc01963dc24bcb1872321d3f0`  
		Last Modified: Mon, 12 Oct 2026 18:22:20 GMT  
		Size: 92.3 MB (92255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4569f4444c01cf743071865bd19485a768e16c182199fea3cc1f2cf271910c3c`  
		Last Modified: Mon, 12 Oct 2026 18:22:18 GMT  
		Size: 22.8 MB (22830656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b983f6c88c7b4ca35c06b3b89ed1c831d73d2cd89abea0bebe3792f33fb40d1`  
		Last Modified: Mon, 12 Oct 2026 18:22:18 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156794d9cd10df015d5f00e73bced6c1dc82f274f102afcb3430586717455298`  
		Last Modified: Mon, 12 Oct 2026 18:22:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:648d1261b9e6204fbf9a42bcf597c91c7186432a9f4e8d7ec8f7fbe1488ab5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4257819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4da6ebfc51cbfdcfe1c12187ec6f0997ff11b03246251b53128a703730133f`

```dockerfile
```

-	Layers:
	-	`sha256:898e0c5832855c1f3fc0c4c8016bf55195dae841dad50eaab477ad1d580edaf5`  
		Last Modified: Sat, 17 Oct 2026 06:52:46 GMT  
		Size: 4.2 MB (4239382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e76612995de64dcfc883b83a7180143603cfe58c457d8ab0666a1c0c79b4836`  
		Last Modified: Sat, 17 Oct 2026 06:52:46 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
