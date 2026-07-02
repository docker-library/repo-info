## `clojure:temurin-25-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:990641645c07381d532fed21dc29161e4ec2322bef362d6ab0a5894d4720f409
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

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0ac89b6d1c9f76156408f7b14a3c4879eb3cc6a00e3959ac2d5d264d53979718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165710135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d52f5941eddd455454bef98ce39cd96daedd8f12b0c2410b64e650a63245a73`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:53:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:48 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:53:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:53:48 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:54:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:54:55 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:54:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:54:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df92432d6e7f00eb09d28e0b26f5f41878d39d0312e11cd846808723e567dc9`  
		Last Modified: Thu, 02 Jul 2026 05:55:15 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a15cc711d121e8bc2db1f4c6d12ccc7513c95d5e23240f602eb34e8622f0a8`  
		Last Modified: Thu, 02 Jul 2026 05:55:13 GMT  
		Size: 20.1 MB (20117731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ed2081196379be0442fef2c6b585b8731f383dc0ae81a12d7d6896b41a7914`  
		Last Modified: Thu, 02 Jul 2026 05:55:13 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc90d9808f7d4f839b58743254152c45ed4207f8357122cc52543e5b98a77b69`  
		Last Modified: Thu, 02 Jul 2026 05:55:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2a7fbc9d23a295e5ae00090eaa3d3f26848c7b1a5c73768159824901bdd6d321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498e10c6b628d99d07dcec5accbc55ebfa406ddcb8e1fda836efcb658531c216`

```dockerfile
```

-	Layers:
	-	`sha256:045e7b09d5c027bc16c585befd8a05acfa7eb63dc3ef7aff4b51d9faea33440c`  
		Last Modified: Thu, 02 Jul 2026 05:55:12 GMT  
		Size: 4.3 MB (4253310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aedf78b7cf44970033d48e5e57509d259c97fbb3f41ab0707f5f00bd9db35791`  
		Last Modified: Thu, 02 Jul 2026 05:55:12 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:260ea0c8dcffe4fa6dff057e873be1bcebbba07d551ee9d06e90ffabcefa84c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164387549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a26ca648c8b19dd1970b6cb2a52b529280fbf2a594596c17c4f16636dd61be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:54:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:30 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:40 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293ccb07f1332eeab4222a874cf5cef5f2bf0ad4c55716c1c23819654dfa95fd`  
		Last Modified: Thu, 02 Jul 2026 05:56:00 GMT  
		Size: 91.5 MB (91542269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e111773d471e6f286c81b8b201bb877c0b8d3280f6011a2ceb0cd9a756ea7321`  
		Last Modified: Thu, 02 Jul 2026 05:56:00 GMT  
		Size: 19.9 MB (19940474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fad6b4a9f7e17d5e1a8cf15cf4ff28097842e3493c5ab5d3b1af5edf85da02e`  
		Last Modified: Thu, 02 Jul 2026 05:56:00 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c7d99433f0883913b595e6e5a6a07ba8137d0b22e692e66f748b33283df748`  
		Last Modified: Thu, 02 Jul 2026 05:55:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2941100fbbeade3401b87c9ef6b36cf3673556cc1c24acac5c824e7282d6b1dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7b9d59da8102edeb5f591d2f7d581a0f7b4e9511bdf3238b58a1557a05e026`

```dockerfile
```

-	Layers:
	-	`sha256:63705bd10a1b7d83174cebe82cbf6acd2ca1231b5f1c38b2e4dd4e0e78c16988`  
		Last Modified: Thu, 02 Jul 2026 05:56:00 GMT  
		Size: 4.3 MB (4252994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22040b1ea767eb4dcf6572fd3b1b16f5718b0448c3e17fde4b8000d0bd6ed075`  
		Last Modified: Thu, 02 Jul 2026 05:55:59 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:17382ad07828c95cc25c40f0a4587f5fa4a989e84c4afb4c37245d900b1368c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169108576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653ffdf1c8ade57ecdb34605930b7fc805b0e5619ecdf904ba6d7318fe0714dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:43:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:43:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:43:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:43:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:43:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:43:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:46:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:46:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:46:16 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:46:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:33:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:33:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:33:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1de9677813712ddada398d96870b701336e684bc5a28731b883aed48b1d31b`  
		Last Modified: Thu, 02 Jul 2026 06:47:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963784037ee750a7dfa2576133d5f7e57e56aeef0d7345ed19d3abda135d9cb9`  
		Last Modified: Thu, 02 Jul 2026 06:47:35 GMT  
		Size: 20.3 MB (20332041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6563e138138eac9cb737288bb0676aff81644cabb2f0815ae1acea418078382`  
		Last Modified: Thu, 02 Jul 2026 06:47:34 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63686e7dda86ccae9dc97f759285acb29b63206c469f128e8f2e04ecc24a660`  
		Last Modified: Thu, 02 Jul 2026 07:34:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2a9410c324ba022ed349cad00a225c148d7328d62eee217eb825c5a22e1f2914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4258228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc76b5cd0d3f6c04d76c9367a1bdc9fd87fcba33330ddc39935c88bc37d2430c`

```dockerfile
```

-	Layers:
	-	`sha256:e0acb3a6d4905db96f968439ef3ed10ec17b99d72f7c17b42da13d783fdffeb8`  
		Last Modified: Thu, 02 Jul 2026 07:34:04 GMT  
		Size: 4.2 MB (4238519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df9ffae9a681b59ca6c49402c524799cd5c8f42274783fd9169f3ea434cbf9da`  
		Last Modified: Thu, 02 Jul 2026 07:34:04 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:593f3b4248cc15efa67c060957d464ce357b4c5a479c76e1b91ff7b8af643f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159867976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e224b55510ed0d08251206922285659f8634d550a314f9c1859b58a3b0e4b9e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:43:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:43:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:43:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:43:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:43:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:43:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:44:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:44:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:44:35 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:44:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:56:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52593cd68da36f0e7d499121bcaba3a32b90e573cbfe4a9c3b97923edc6220a`  
		Last Modified: Thu, 02 Jul 2026 05:45:18 GMT  
		Size: 88.4 MB (88420325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f722dc36656b6c01d8d66566cd7b893235c5646fbd17dcffcaca7d82c721d0`  
		Last Modified: Thu, 02 Jul 2026 05:45:16 GMT  
		Size: 19.8 MB (19770358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556a9a8a647256fa69196d554d161ce348ac12c77ca61c4759c2d4626e738ea5`  
		Last Modified: Thu, 02 Jul 2026 05:45:16 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a348fc9e570bc85710026828de3bb3602378aaeaa36de588df82bd149ce1c93`  
		Last Modified: Thu, 02 Jul 2026 05:56:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ed3859faf45d2b4e53294199a3190d63e8720059d40ee121f04baf0b8fa43f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4248362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207b766e86eec6d8940deeb228f2364d5e43decbac1770f65445deb8027de3e1`

```dockerfile
```

-	Layers:
	-	`sha256:ead466ccb3ee14f98bd83496500676736ef78d566cfdb7a268701f2e070193f3`  
		Last Modified: Thu, 02 Jul 2026 05:56:13 GMT  
		Size: 4.2 MB (4229686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5f14d70f021299015d038f3b030d9720fa74ad770a30a88a9a223c9dd625d85`  
		Last Modified: Thu, 02 Jul 2026 05:56:13 GMT  
		Size: 18.7 KB (18676 bytes)  
		MIME: application/vnd.in-toto+json
