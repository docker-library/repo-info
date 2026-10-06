## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:20aaa1dc94fe954bc2599c6c096457e691dbdd472543c4cc6b9236bac0b9a8ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:efdab2732f72a38b8fd890a611024c013266d7451fd94451455fcca42a40b662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209231913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87521f6c9295cf9def7d7c314ef905c3e0f7a81d945bd3445308ad9eb5c85d2b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:24:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:24:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:24:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 02:24:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 02:24:24 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 02:25:44 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 02:25:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 02:25:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:25:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:25:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2805a7c770380a324a47f7130651547232e6a2716689b9d62f8f93d9ec92c038`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 158.1 MB (158117474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee9b4d3a373d6b31d9554c88017b443f23b77dcd947473043e2f118ed0d7d60`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 16.8 MB (16755447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17bf2ab169f8e67e9fe96a3a1b88dd7617a57165fe02f7efabc01871f91f4f7`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f7e86ed634ed9284b42051401a814b2b801c47f558cb7cd99f90d514fa3915`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f70da3478f9641969e3ec68d4c0e9244fb46bfe71fb5fc0ad7358312304980a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3b098cdbbadc45101cc02acbdf3c6fce112737bc806042397e5424d9d2213f`

```dockerfile
```

-	Layers:
	-	`sha256:ee2825eb1b009c486df5eb09f19ff9c076c07b2769c7498cece31ce0004bfb47`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 2.4 MB (2374883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c8dd2d1d7324bdbe67e33fcc7f61f10707a2d5ead9f6d54217cd2c38f4e327`  
		Last Modified: Tue, 06 Oct 2026 02:26:03 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f3ebb2ef6a9e680224c397c23756035aaaf244ab341cc3a860a85d49925373a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211151096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e400158ba202724ff1e61f34c51f8fb649e0a1dfad68d4e7c67af1aabad7121`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:46 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:46 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:48:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:48:02 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:48:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:48:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65135c429f9cad40ed4b34d9e0e30eb4fe6b23780bde91d9a376afa6426271d4`  
		Last Modified: Fri, 02 Oct 2026 02:48:27 GMT  
		Size: 156.4 MB (156400690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ef71775ca1f67ac59fc5e12ea35382bbc0e45f4f8c8a89d94c71dddda8a698`  
		Last Modified: Fri, 02 Oct 2026 02:48:24 GMT  
		Size: 20.0 MB (20045074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3115acf2395f86fe259e7a7c93521d4e001bbe9e0eb66980deb786a7e2a7d9`  
		Last Modified: Fri, 02 Oct 2026 02:48:23 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc77f4590dd444d7cb105fd4b37933413778e50885e10b9b4bdde335c1ca5188`  
		Last Modified: Fri, 02 Oct 2026 02:48:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:850c431224c504b3e7172ddb808dce8a6addee8d91b4a3892f6448d6e593488b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a49af6b2e07bcc752fbbe12cde8b22d8d6debcc7817e871c8464240082933a`

```dockerfile
```

-	Layers:
	-	`sha256:c3258dc9c1a759c9cd1cdb0f496409c1aa2bb67b3ab7e3d3508897e1bede649b`  
		Last Modified: Fri, 02 Oct 2026 02:48:23 GMT  
		Size: 2.4 MB (2374493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f20f0536d5e935afa7c008a9d805ab43673fb8e98dbece5917d066b5230e45a`  
		Last Modified: Fri, 02 Oct 2026 02:48:23 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5d5683a545aa13c1216b8258b3d26ac00df188445cd33ed2def863314456c64b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213221739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea24432ccfa50c166f20243db6f19f966ee5292ecb1273be1b07825a212ad69`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:06:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:06:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:06:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:06:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:06:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:06:09 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:08:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:08:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:08:26 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:08:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:08:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:08:30 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:08:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e80e42dd4544a6b2f73308001cd4d61ab6a8019481027bf956fc7bca392051c`  
		Last Modified: Sat, 26 Sep 2026 05:09:08 GMT  
		Size: 158.3 MB (158282664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2a0a13313088803f0811d93baf450b486d9a9372369022e060d1dbbbbf4799`  
		Last Modified: Sat, 26 Sep 2026 05:09:05 GMT  
		Size: 16.8 MB (16782187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aad3c27678453b0cd2ba24df8e635247b0a0932c2a832072b60d44738a7fcf`  
		Last Modified: Sat, 26 Sep 2026 05:09:05 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82145c09415dfc89cf6dba9437c51d751eb51969478ef837e3bfbf0ba33cd92`  
		Last Modified: Sat, 26 Sep 2026 05:09:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1d64085e5129222b1140b7147da0460535d3c4a4ccd791abbbe190f42db181dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2144ca411e8d1c2e36e4bf0dc7a91a05abcccda9014cbfe17d5f911b7c069aa8`

```dockerfile
```

-	Layers:
	-	`sha256:18bba5bc11035bbf1798c53a17e5b5cb323bcbf80fc3026878f94ff831f546cc`  
		Last Modified: Fri, 02 Oct 2026 08:20:18 GMT  
		Size: 2.4 MB (2375863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40b96b80df5dd6ecec918a85f2796ebc44df27adabd6d2a4c6b3a2b8dd05ab8d`  
		Last Modified: Fri, 02 Oct 2026 08:20:17 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
