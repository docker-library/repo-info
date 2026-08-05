## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:02b4294f4b5831400a80f44d753fb43c64ed0b2283858173293446a6863a4b19
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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bcbad349a73072e1ae19a74f98db3f3169c2814acf2a2ea6975c0544bbeca8e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209217738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcc3411c96fe734bb48d24acd66dd49053d7c4be1162c8e81c96c3c0651ca2e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:22:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:30 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:30 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:23:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:23:45 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:23:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:23:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8929b159ed968647e6f2c0138288257250d7b45f45b1c2e432fb775f83bae6`  
		Last Modified: Wed, 05 Aug 2026 01:24:08 GMT  
		Size: 158.2 MB (158166900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fed20d1335e2cfbd5be94f410daea1f701de33ae03d8ff11e3d567d7045f92`  
		Last Modified: Wed, 05 Aug 2026 01:24:05 GMT  
		Size: 16.8 MB (16754453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b191ecce22dca27ba5516a0946b7eef4f7abe6a4840daed9ef05162df290d16`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c8b12f7012039d27ebc7ee595c7fe8925899baf062a6cb2df1e5fed94626d1`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f74bd98a1ed7984bd5349bbfa8b8e13bf7f9938b46dbd1520c4c496c28991162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1636c78355868c387529465ce0da440675b43a41d28f2186e29634e79c5319da`

```dockerfile
```

-	Layers:
	-	`sha256:957d19dcbb67bd7a92f6f8c6a18379869ab6b0e7d10ac6ea34fa8f4b94f2fd9c`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 2.4 MB (2368969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a57a62304ab2dcd9d28d62406e19ab3695751edf86423b20b818c3135f06ab23`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a7b824c34e8fb73e20f3ffd137e8db18a34c759e78ff94e2296311fd20244489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207832157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29962bc3df395ef13ca3fe08cac11073577d1b1d8f3fd6652cca275405d326fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:28:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:35 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:28:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:28:35 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:29:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:29:49 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:29:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:29:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969085f528d31c9aa4eeb5c56f0121bd996e8bafeb3832953f2eb5d5a4f6381`  
		Last Modified: Wed, 05 Aug 2026 01:30:12 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8339ad8ac69ff887a6f4dfb049fa8852f1cd7a3ad57f5eb42025238e388babab`  
		Last Modified: Wed, 05 Aug 2026 01:30:09 GMT  
		Size: 16.7 MB (16711638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0b423c149d490dd209b7982f6ee438651e9ee9ae58e7bc099257b7685dc269`  
		Last Modified: Wed, 05 Aug 2026 01:30:08 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d961d525ce1dce8f4a774271f7ccfac152c30a1122e7a672c19759d186104b9`  
		Last Modified: Wed, 05 Aug 2026 01:30:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eebe0ae56fcae5083c93de7ac2e57d9417681e6b5f4941a09baf354191a848b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e298cf7255e9b26dc5f809d6b3d9ec7e257122006936d9e8dd3344b45ee091c5`

```dockerfile
```

-	Layers:
	-	`sha256:5dba9dd1f52f09cf20765cc0a346515dfa09a5d7241bd85b01b2204991a823ba`  
		Last Modified: Wed, 05 Aug 2026 01:30:08 GMT  
		Size: 2.4 MB (2368579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1325ea2fbb0d8b40be7d3d904fba5c0ae6285536f8f84c890e4dbff719cece51`  
		Last Modified: Wed, 05 Aug 2026 01:30:08 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:546763c3106e9423152b7dc28efefd1e52927799be3987e9a017d4cc2526b056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213242685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c822c3acc5bbc5fb5ad23778319f196d2937eed902a2e7b63930906e115efc6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:48:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:48:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:48:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:48:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:48:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:48:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:51:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:51:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:51:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:51:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:51:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:51:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:51:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58428bf81c6bbac943fd99b4ba60c260cdb2e11d88fa9f2435c3931236de029`  
		Last Modified: Wed, 05 Aug 2026 07:51:44 GMT  
		Size: 158.3 MB (158343254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7993453528b04e7a1c68d63f684bd8631b75dee7a520d396f2d77eb81e27c6e`  
		Last Modified: Wed, 05 Aug 2026 07:51:41 GMT  
		Size: 16.8 MB (16782433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e90c1a9102a4c0e66cd4c196e30696e08cdb573cb8b56c78132614454d4f17`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374af3e2586f3fd4d4217fcc682fd7be986e38dd88f26d1e1c892bac7437b98a`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3911294c5ebeb5dfbbab494e10fe68e48711c50751827746fa091a8eed151ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6b64322adfb62520d583219dc52f730d2cfd1011f36426a4f84280325abcf4`

```dockerfile
```

-	Layers:
	-	`sha256:92a75c2f4504b1bc36949724732e05ad0ad37044b1238f7372a295719ecab9e2`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 2.4 MB (2369949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7475059637e2fa35f61f5dd2b0ef586269065bde52ec61daadc20fe26cf429de`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0f513b2c3cffaa522ac95115452142b3045199c14c04aadb92ff7fb5ec2a5eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198530808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00407b6fee73d0878027e7c9bd5f271247320db2b60bd9e6be0bc7765045762`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:48:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:48:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:48:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:48:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:48:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:48:16 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:49:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:49:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:49:27 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:49:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:49:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:49:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:49:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f67c9a92563e62835f69defd41b87b33592f1d7f9f1a9220ab7ce60e8a6baba`  
		Last Modified: Wed, 05 Aug 2026 01:49:44 GMT  
		Size: 147.4 MB (147388337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b3fc510589548defcdeec09b28455456e81830bdfabdce08e9813a3210e7bc`  
		Last Modified: Wed, 05 Aug 2026 01:49:42 GMT  
		Size: 16.8 MB (16780254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c771fdf318028130c5de3c23d671923fb1b561865f81307f2a6512ae3c8460ef`  
		Last Modified: Wed, 05 Aug 2026 01:49:41 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403c6654ba6fe67a36b07de818cb3e3ff47d817481d9a9870023f86b82d639cb`  
		Last Modified: Wed, 05 Aug 2026 01:49:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6abd6bc7caa8330821b0a8c693cf0753a86b971f354fd92a7dc0230dc00d5a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ad4f4377c63671fd0e51596a6d6ec622f51099858e2d6ae9c5dd200166e9`

```dockerfile
```

-	Layers:
	-	`sha256:eb09ded4291d40f8a10b47fda07893205d590352d3d804a2fd1a054f31fd971e`  
		Last Modified: Wed, 05 Aug 2026 01:49:42 GMT  
		Size: 2.4 MB (2365396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:298fab7cf6533203e020d5669496e5b26ab865b9321900b3b37397c48271c8a6`  
		Last Modified: Wed, 05 Aug 2026 01:49:41 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
