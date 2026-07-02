## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:b2eaac152ed0331e4067352b26e6e118fcad5046add916d0006c04de4dfc9e70
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

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:df7125eb84a44f42f33e0f8fbb980826a413403524a1387b789c88933faea334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219021006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8e147486359d7fb01d0dcc11ca159b1dc2da394fbd0aa40b44cd558efb3141`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:47:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:47:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:01 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:02 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece24082a20a0cc46c00d92a3c3e6a6206a1c96eb52189890853fe101deff05`  
		Last Modified: Thu, 02 Jul 2026 05:49:23 GMT  
		Size: 145.9 MB (145886200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68e52224926e524090339afbc2dc74be91e44fa7e0fbfc4303e945028eabc71`  
		Last Modified: Thu, 02 Jul 2026 05:49:21 GMT  
		Size: 20.1 MB (20117388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da03cf07b10f58381f55d876d634f9214d2fc1e784864feaa82bb75c44910dc`  
		Last Modified: Thu, 02 Jul 2026 05:49:20 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9e3313aaa87f72e07cdf7ffd6655d6eb44f9178f4c2d9558c31a4c2c37250ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad255285ab77223a925d2e5f408e633979f2706f8cc46993aa695f26da6f36cc`

```dockerfile
```

-	Layers:
	-	`sha256:ca07e6497faab4a00b7a5dc17f69cc2e31b0d39b1d1347589e261429cb98eef0`  
		Last Modified: Thu, 02 Jul 2026 05:49:20 GMT  
		Size: 4.3 MB (4303534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6491fb7285ce9e2e21352e69dc476b50ac8620ee3dbdfcd225439fc7e57ad78`  
		Last Modified: Thu, 02 Jul 2026 05:49:19 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:223e9953e70f2ebb5e9d45062a78f1c8a5028d912cf86ceab96c31fe9658e7e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215426586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36433e4d6e703e045d3290e7bc150ca77ed23924f66e51d472084aebc2d3ea2`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:48:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:15 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:22 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c526cd7f80678d3783ff824d7aea2daed141ca332f6fda55564b664a9e3aa86f`  
		Last Modified: Thu, 02 Jul 2026 05:49:45 GMT  
		Size: 142.6 MB (142582195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc613af1cd95791a911b92ef62740699212093eb06567c9d2a75148c907ef54`  
		Last Modified: Thu, 02 Jul 2026 05:49:42 GMT  
		Size: 19.9 MB (19939984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f0608c1c124224ea41d7ddea95ac3945384861e9bf4a9a11b5a74859553c10`  
		Last Modified: Thu, 02 Jul 2026 05:49:41 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:25b23effe304c0334f3908e9c5a44745ad37148c60a1f3496ce1bc091dfaa6be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b6b8d0d3de1bc78cf55d0c4595f3b2bceed1b17d1d506494fa5eb56999a790`

```dockerfile
```

-	Layers:
	-	`sha256:68778de4939fda1242c72ca4350231ddd8e9a3ce1fdb30ec2faac1e9337971dd`  
		Last Modified: Thu, 02 Jul 2026 05:49:41 GMT  
		Size: 4.3 MB (4303767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe31dafa83e80c8257729026c244442fa33cd4e2349a2b22b0805980dc6ff095`  
		Last Modified: Thu, 02 Jul 2026 05:49:40 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ba1d3fe016bf526f28fd45da85c3ee56333735fcdb8c9f83e2eec00ef53f4dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210304404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53b9e9028d6c07681e370484d539953e23c745d1e990cbb67fb8d6932019ff6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:51:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:51:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:51:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:51:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:51:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:51:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:53:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:53:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:53:42 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:53:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:53:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299e65171f72e6722fdd5ad9801a6dff8d9c2278fb4ba6fa0faffe6c5ecc7f05`  
		Last Modified: Thu, 02 Jul 2026 06:54:25 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e33e54d64795fb84c8c6de46c05bf9b05d81ae01cd8e89035ab169caa20a65`  
		Last Modified: Thu, 02 Jul 2026 06:54:22 GMT  
		Size: 20.3 MB (20332165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d335c32104f6f53414c8d8944c10f4329705944857ce6f899717bbef226cb9`  
		Last Modified: Thu, 02 Jul 2026 06:54:21 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1d69e14cacfc3618d0b424dacd7bcb265385e5951985bd8016174502458b8366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0bff7d7ec0820a8e79e49dfa62c8a248880d9220b51a1519a8b968125e8479`

```dockerfile
```

-	Layers:
	-	`sha256:34f8e184c9d177cc7817aff30a878b5b063e29937a300e20b125edb99e8a7b42`  
		Last Modified: Thu, 02 Jul 2026 06:54:21 GMT  
		Size: 4.3 MB (4304780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab5d8e178f90e2739a770ff87744a007d93d63f7dd8237cfee1a77a2a524b5b`  
		Last Modified: Thu, 02 Jul 2026 06:54:20 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:30b436f2692b183dcada6618d7ba0bd6ec8ed521379918d821c336e22017c809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198098574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98667b0a7f4ffad5589432e0e1d5bb4b22e2cd78c267d51f696578296643730`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:43:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:43:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:43:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:45:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:45:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:45:00 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:45:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:45:02 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5180b932b6d46fe02ba85f3e4e82672609c486109a108a66213a27d5f0f03fd3`  
		Last Modified: Thu, 02 Jul 2026 05:45:26 GMT  
		Size: 126.7 MB (126651541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622f5e173872ba18f43082ebc6bd643b97eafe2e33a96b3a59519623efead473`  
		Last Modified: Thu, 02 Jul 2026 05:45:24 GMT  
		Size: 19.8 MB (19770105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a42fda8b67bfbbbda5dbc7fbaf45d000890f87feab8310de07d62d3b4493de`  
		Last Modified: Thu, 02 Jul 2026 05:45:24 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:41fdc46ab23f994508b5d7310804a04eb8dafde6660e04b6090aeba665c29d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8eadad816af90a9672686598983b46c99da4d7ace25574d4c62a95f2f1d0514`

```dockerfile
```

-	Layers:
	-	`sha256:d44c607c1cc8959217f5e28b53cf7cf88aea3e9d1cfb6115a13f956ea77fb0d2`  
		Last Modified: Thu, 02 Jul 2026 05:45:24 GMT  
		Size: 4.3 MB (4295352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f64900c7ca762b2403e2ade3b5ff5869522386002b248a4aa2a912ab37eefaf`  
		Last Modified: Thu, 02 Jul 2026 05:45:24 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json
