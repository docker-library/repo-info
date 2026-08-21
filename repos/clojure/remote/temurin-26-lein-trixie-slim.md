## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:a909753467d5e99161114edbc0b5fe12168171fbc6f0ce7f96110cdc8fe0be72
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

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:08def40806536a02c82ff18f29edf6ba2281e2b4b9631eb6b981b15d7dad8416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145603589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93f410740b2d043f668f9ffca00e23151d31a94c4e9d4e713fb27bbc0e5a4cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:22:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:43 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:22:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:22:43 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:24:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:24:01 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:24:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:24:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab373f040427b967107bc2ed0266e9cb0ceb34dbf9b93d05f24d3145e2203855`  
		Last Modified: Fri, 21 Aug 2026 19:24:23 GMT  
		Size: 94.6 MB (94563689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231687e5ff77121cdb2305a440effcca1dbe5de0acedbdee01111b0468669278`  
		Last Modified: Fri, 21 Aug 2026 19:24:21 GMT  
		Size: 16.7 MB (16743502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a570069f3874b118867667c2140151ddf2f942244db545442ec575c09b99f52e`  
		Last Modified: Fri, 21 Aug 2026 19:24:21 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e059512c6469ad4336ba3f2015fc1bb363002eaa00acb586c79f2cb74fad3b9b`  
		Last Modified: Fri, 21 Aug 2026 19:24:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fb53a4bacef7dc444d9735e6985b04683cfeb34a4cbb62aecf76da89307fc97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d341be15a4243e4e34492e8d6f41ab94fbe42f4d2e66df64503fbf09b02408e`

```dockerfile
```

-	Layers:
	-	`sha256:5619b6289d3005b552b4f0a20d2263a585312295d7d2e955124cb2122da1e573`  
		Last Modified: Fri, 21 Aug 2026 19:24:21 GMT  
		Size: 2.3 MB (2332010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7dd0f4bb507b4426ba30415b3eccc56515660298572bcc404218816a37f4635`  
		Last Modified: Fri, 21 Aug 2026 19:24:20 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6ca1032ec28c12e775daa13b61a115caaf49df2ed404024ba90e921200cc82df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144912549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3831f60f31d72492903ed704a92d6ef3ed6c020c3efd2412026ac4bdf1ec23f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:12:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:21 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:12:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:12:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:13:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:13:39 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:13:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:13:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69676175345aa41a606a38130d20bc681689aca5d2096ba814305c09a7614710`  
		Last Modified: Fri, 21 Aug 2026 19:14:00 GMT  
		Size: 93.5 MB (93541568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d82b39b5c376fd4ee68d3088e1bd0c8d1e7cce010cf9b5a4191d6c88a74cc7`  
		Last Modified: Fri, 21 Aug 2026 19:13:58 GMT  
		Size: 16.7 MB (16711728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f2556d2a318e2672e13cd2e6e8ef70dd2cc5d8f77794069058fce46dd2720b`  
		Last Modified: Fri, 21 Aug 2026 19:13:58 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563233175f142fdff1f254af8883b6a71e04b4f5391cc3803bbf2e48d147fe9f`  
		Last Modified: Fri, 21 Aug 2026 19:13:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e5b39f0a56b699c503e69662335e6862ae1c0025eb636c57818b0e72cf71100e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377374593a067cb776c870ff268712dbb5c161dcd6a63b0011bd845091812958`

```dockerfile
```

-	Layers:
	-	`sha256:33b2bc15d1cd831a7c956d955c993ce7779f5ecf7030dfa7195cb04f73749c4b`  
		Last Modified: Fri, 21 Aug 2026 19:13:58 GMT  
		Size: 2.3 MB (2331617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e589e68196ef0fe7cc0992713879d1b92776a91b7a4395a97e021a9095b8dd10`  
		Last Modified: Fri, 21 Aug 2026 19:13:58 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4965a0a4cd35f1640acad27860e17326aa000b838ae0d651015c245fe0fd2675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148801284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2815733b54f52aff8788c8e11ce9aae515ad42328219a32b7e257ae63ae69481`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:48:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:48:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:48:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:48:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:48:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:48:05 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:50:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:50:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:50:52 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:50:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:50:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:50:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:50:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ed3a37c0c2d8cca43ab75bf1f40d348ed3f74e5755e33b1bf2e20505fc97c`  
		Last Modified: Thu, 20 Aug 2026 01:51:29 GMT  
		Size: 93.9 MB (93902044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37670cf8adfc8fc5438c9b5d4218bceab361942e6ac1984ee0d546abdff3b970`  
		Last Modified: Thu, 20 Aug 2026 01:51:27 GMT  
		Size: 16.8 MB (16782240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a409bd0acd754a8748e3559730e1a8451234f6445af7e832b8d426ab020325`  
		Last Modified: Thu, 20 Aug 2026 01:51:27 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03de6054b18b10a6a7849dff07f7bb5bec65dccbb7cc22f7947da4b170ac72b`  
		Last Modified: Thu, 20 Aug 2026 01:51:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:347bf5ec6f6dcccc60b4b4c5eb2fb3600cb7f52a731f842bf816f2117c6722e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9150a19e09a80d0a2733baf1e0fbad5a533c18860e2e3595b1a4bd4b3234f9`

```dockerfile
```

-	Layers:
	-	`sha256:1cb8823b3bff1dbd05f0ff92a78b9ba59c832b35668929e7674a546bbcc1ad80`  
		Last Modified: Thu, 20 Aug 2026 01:51:27 GMT  
		Size: 2.3 MB (2316924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bd47aeb5e4ccb4b02577cbdedb74e7c8110cf53c0f183244cc152f74d7718be`  
		Last Modified: Thu, 20 Aug 2026 01:51:26 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c3d5a4e0a9b9152b755f4e7d03af5c8a93a06eeff5c6745f1a7bf81385e92851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141730083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241d2db6373e135a4250fbabce7e331b332502d80c3cce9abd2cd2a1160347bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:13:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:13:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:13:38 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:14:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:14:45 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:14:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:14:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9afef644587f890c33881a7da16c656163d16fc8dbd9edfdba49a084973b41`  
		Last Modified: Fri, 21 Aug 2026 19:15:11 GMT  
		Size: 90.6 MB (90588227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdaeb6b882746652eb6025c3d82ad92cb014ac153b166313cdb90e00d2401a2`  
		Last Modified: Fri, 21 Aug 2026 19:15:10 GMT  
		Size: 16.8 MB (16779639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc31c7d223b27cd96090599c87322dda1d540e6d0cb95b98238d89e86d662784`  
		Last Modified: Fri, 21 Aug 2026 19:15:10 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba1afe44ed71e725d54df140907b67984c043fae44f822ff87625240326e229`  
		Last Modified: Fri, 21 Aug 2026 19:15:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f443f1f4766215e3936177d0763e91755e48b431972f6bf3760328f88e3ea1a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c84d2bd5ee73c6a4bd868aa0f28044e8c44c89f684834f180e4c0c63fc39a83`

```dockerfile
```

-	Layers:
	-	`sha256:32945f6688c381d6551388c23dc39ca67ab226a6c3bbc68a1afe2c01e06c1bb3`  
		Last Modified: Fri, 21 Aug 2026 19:15:09 GMT  
		Size: 2.3 MB (2313623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e252dcd064d4463732735c6fbdd274bca620f38eafec7e3ae6d18f57bcfe9782`  
		Last Modified: Fri, 21 Aug 2026 19:15:09 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json
