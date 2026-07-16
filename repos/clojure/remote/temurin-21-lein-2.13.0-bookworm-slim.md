## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:2f49b2245b13c55755bb1534297f697245c743db98a1f95915d8d9959f941f6d
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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:76226bd7d302a0c04f36c4c091bd496de315e3dad97ffbff8efa491f0189e88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208975766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5cbb146489727619906cb4647ffe3d4dabd68e2b76ab61cb7330af6d0be5afc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:33:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:33:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:33:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:34:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:34:10 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:34:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776779c34aa29d3a760c2122d6765b9c3baea30a487c1c07e33a288a7df70821`  
		Last Modified: Thu, 16 Jul 2026 01:34:32 GMT  
		Size: 158.2 MB (158166966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99698c58317bb97f322da891087f8fbe08ab9d565906219e59d51cf6fece7ba`  
		Last Modified: Thu, 16 Jul 2026 01:34:28 GMT  
		Size: 18.1 MB (18060544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af599843f83fee51d93702e579becc75d558388f3d3a257e69f242b4d36c9140`  
		Last Modified: Thu, 16 Jul 2026 01:34:28 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf92b27dbc595d636da91bf50471ef25a3f78dc67d210a6f25d950fae830d24`  
		Last Modified: Thu, 16 Jul 2026 01:34:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4efb0f71f3f15cdeec110164935255213de3499e45fe415ef747cafa462ba3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ff5ec7f78b6232b6b733dfe1a620725efff6e008afcff4cd61949e87aaa6ed`

```dockerfile
```

-	Layers:
	-	`sha256:35bfc21dedd4e676d289b4e667a915fb9dd494349f2c2e0ad8b4d966cdb2ff45`  
		Last Modified: Thu, 16 Jul 2026 01:34:28 GMT  
		Size: 2.7 MB (2734225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def054e515c927bc0352cc82b2e33972254e676943d5f9038afa7f874b31b1f8`  
		Last Modified: Thu, 16 Jul 2026 01:34:27 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4dfb660e62b3286ced4e826d345b4a294598e69803d74483a9ea0d556ef24b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207000315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5794ac0dde35c708b6ccedc5432e75bc0d67f9a565ddf54363ca1d32f162eed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:27:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:27:43 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:28:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:28:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:28:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:28:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:28:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:28:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:28:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ba737595d1f6a84022cd6923706a21b9bde5b4db3e428fb9f178eb36221277`  
		Last Modified: Thu, 16 Jul 2026 01:29:14 GMT  
		Size: 156.5 MB (156461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572ee1d5cb2cd2cb24424a89b25a4574bf9a05d9f9e50bf1bab86d8f32a7979b`  
		Last Modified: Thu, 16 Jul 2026 01:29:12 GMT  
		Size: 17.9 MB (17906114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5145a28cad258c95ff3a72d1988f290c97b2f1dc6ab8ccfa2cd81541b106d870`  
		Last Modified: Thu, 16 Jul 2026 01:29:11 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ff25dd0acf8e3176a8b7754a29e616f2eb033a3ca9b27d55d6baa20c9c4c03`  
		Last Modified: Thu, 16 Jul 2026 01:29:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:417af55681fc2c0fa28d45cbdfdc488a83cb9c15bbc4cd8017ff8237de2e2786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61fa709290895beb81aadd522806c2670033c98cd5d33166fea70472917bf60`

```dockerfile
```

-	Layers:
	-	`sha256:2064ed6130894d2f66dd2b12b29c8ba687320b385c10cb98d073ff7e2fbe1490`  
		Last Modified: Thu, 16 Jul 2026 01:29:11 GMT  
		Size: 2.7 MB (2733840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0eefcaca6fcec357ac584e400d7b67208f8cd392a7c870ad4676b1152164e140`  
		Last Modified: Thu, 16 Jul 2026 01:29:11 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:50c98c89013be5c81cbfdbeab6a3086bf7e4a12c5bf49bdd431b1d24c7b317c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213198895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a263eed65e081b8f8122a98c150f201232a1f72fbc65465ae7218e0463f99186`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:48:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:48:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:48:26 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:48:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:48:27 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:50:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:50:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:50:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:50:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:50:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:50:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c7687e3e503f67f28ed48874231824dfe0d502900eb690ce26123c0fce6c77`  
		Last Modified: Thu, 16 Jul 2026 02:51:42 GMT  
		Size: 158.3 MB (158343218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd94b20f864a8739c3bbf2c6d07e63ab0053959712183092ae659323220d37b0`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 18.3 MB (18263618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31799a459894ed9ef0d827db26122deb0bc528be6623043f39fa5c054f21882`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d155ba3f5f6d681c232eec3f73cb9451ee022888c56a5e89314ed527b45d383`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:148d99bd07c00c817910c5b6e28785c8b845154baf808e53cf29dc63b115ce80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec00fd290716ab6fc307b3349d5a17a08c5a47b965a96875d9582335d35bf6c`

```dockerfile
```

-	Layers:
	-	`sha256:9b81b9457c439708fd882daa4bc0b97fd12568bc0e4e4b0ab7ebdbc0471626e0`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 2.7 MB (2736058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e7616e04139d367782143b7317b37f7cba9e294c15b1b1cf3af12cf7fa36e37`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:17cbb6ddb818a7d82bcfc7fce5830484c6a5403a76f2bc19c07ed98f563fc71a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196517126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ac288718a0de91a432b539b2ca0248a46d1e3f5a14d7ef57613f94842eedb2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:49:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:49:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:49:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:49:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:49:53 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:51:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:51:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:51:11 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:51:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:51:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:51:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:51:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b4c27e82c72f992785147ec97b6bf3311a62d3ce2457dae43b8f0ad210e8e7`  
		Last Modified: Thu, 16 Jul 2026 01:51:45 GMT  
		Size: 147.4 MB (147388352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337840a45992c8882a40c543b3f223d988593e5cee98f7ce2c9be50ef00b7e4d`  
		Last Modified: Thu, 16 Jul 2026 01:51:43 GMT  
		Size: 17.7 MB (17724846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f6d622ea7709b38d18ea25923e5b4edda3fa1d8169d0925fff94e426775ab7`  
		Last Modified: Thu, 16 Jul 2026 01:51:43 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa438fb9f6606edb3574317445ae1c4f7a43f113ee8da469ac9815a2a329d73`  
		Last Modified: Thu, 16 Jul 2026 01:51:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:81e4b1909c867540d907804ee7419e293ff4c21514fedf7ee3deb23a2c15346b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac7b1df231e128eb5002063ce28c5ba03dcc7fdbbbf5c6d3a197a4803badb35`

```dockerfile
```

-	Layers:
	-	`sha256:a5e04cbb7caa9a58b1558289a3e4cebab27e9df3ef4ee463882ec354a58225d1`  
		Last Modified: Thu, 16 Jul 2026 01:51:43 GMT  
		Size: 2.7 MB (2726039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a54d1332c8f9047fa1b3012e3e465adf6562407ffdf303340c984977ac4085`  
		Last Modified: Thu, 16 Jul 2026 01:51:42 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
