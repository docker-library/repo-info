## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:70e412db393104ccf9c0aa7d9a63c5d7ea63a934b050730f1c7df417143858df
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

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8ce92ce93ddbe1d28e44f413539fea26b6b6f04234388230648fa6606daffe1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167248309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a0dc67c9e6f398ff42d490cf69af6b6ef32090bc57f0c71f19a2f8a838bc665`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:19 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:27 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b756146459aa151774bd63c93934276cc5c5346ac83aad9e7d626659134579e`  
		Last Modified: Thu, 02 Jul 2026 05:58:19 GMT  
		Size: 94.5 MB (94524314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dee4e18a37a0fa0def4bf677b40f417cc12966923fcd66f69c0acdd4b36e26d`  
		Last Modified: Thu, 02 Jul 2026 05:58:15 GMT  
		Size: 18.9 MB (18891098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e6fc5d1f7d37260ba1367e85a8b2475184f02bebd443b49343434edd80f4ac`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4186a00f7578664180b16b56ab10aa6dbd115832d39c5e5e9ae0f301b9414e93`  
		Last Modified: Thu, 02 Jul 2026 05:58:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2a7a124fe1a8b8113ab2f8e1f9412fe4fccb7e6131f5fd2a1a102ce0d371e649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c934d437e4d122b9a38d95c475e2cdcf20322bdf212dda6f2813ad27b8cba4`

```dockerfile
```

-	Layers:
	-	`sha256:544ba3f92f9bfd3783911da1053701b5e3ebc76f6d4fc5584f1f7945f82ce98f`  
		Last Modified: Thu, 02 Jul 2026 05:58:11 GMT  
		Size: 3.8 MB (3782711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad6daf3890d2d8bfccff7963447c5803985e44450002133191df7ba56d2f3151`  
		Last Modified: Thu, 02 Jul 2026 05:58:08 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bad3ae3ef141ed157765bb163199c00a9a17185f26f5f0f38890bf2a2a626d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166537962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d130ec9a5e9e3ce1f050f7dcafa601ee440484b007e27da9cdb87e16dabbce4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:58:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:58:32 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:58:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:58:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461980d5a25d931f5ec70c5f8da60a72c8b19e1105cd7f0b01fc4227b79a3dcb`  
		Last Modified: Thu, 02 Jul 2026 05:58:54 GMT  
		Size: 93.5 MB (93504350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd077d109e37eedd227850b00adcd6de6d663ab47a228e97dac8507d07b045c`  
		Last Modified: Thu, 02 Jul 2026 05:58:52 GMT  
		Size: 18.8 MB (18839582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f0314d44c8c617ad47afd6856367fb5d8200d0372de969af46a422af38f001`  
		Last Modified: Thu, 02 Jul 2026 05:58:51 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20817378befa2d42ceef4f5126afa80286593c3bdaef9ffa65536e8118ffbae9`  
		Last Modified: Thu, 02 Jul 2026 05:58:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:835f8fb51d1d1e101619ceb6fe34778b257adbb38e36e8651d9cd739a5fee9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97047c8a2228ab695866fde1cb07b952e10236bac6b6dc609889c00448493f15`

```dockerfile
```

-	Layers:
	-	`sha256:d2fbd4c86317b8f964511bd80378bd5918a2f5ce59d108012134d3e726d723c1`  
		Last Modified: Thu, 02 Jul 2026 05:58:51 GMT  
		Size: 3.8 MB (3782948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a6a6f661185896406aa6879277aad6517ba1bcfa8752deff3fc9820c3e92744`  
		Last Modified: Thu, 02 Jul 2026 05:58:51 GMT  
		Size: 17.8 KB (17831 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:da6224f77dd09f214ba37f72d6cb87ae91862029953f133549d42d25002f37be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170492506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185fa870e97059494d23d8d21091f7ddf8c52b6d047ab0a9879f914e249b77d4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:50:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:50:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:50:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:50:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:50:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:50:19 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:53:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:53:33 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:53:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:53:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:53:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:53:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0af719890b0c1bc39d2fb63bc71bb8aa0f3a417332e4b35811081461dfa5f5e`  
		Last Modified: Thu, 02 Jul 2026 07:54:14 GMT  
		Size: 93.9 MB (93902045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb01fe01b0f12ccb71765b9311ba6f31b11bc9ada7955851c57cf427d9a4c95a`  
		Last Modified: Thu, 02 Jul 2026 07:54:12 GMT  
		Size: 18.9 MB (18936773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e40fd46d32dc3f929f4fdac45bba77c357dda26762b75fbaad213b3e057aabf`  
		Last Modified: Thu, 02 Jul 2026 07:54:11 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb00cf661b589238a0020e3428574bde87bb7cff2b402cc32bb33888afe48aa`  
		Last Modified: Thu, 02 Jul 2026 07:54:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6ae219e8d56639df8867e04e9571a4dc2d2a37212874b1b5d0553637a504a81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e813c3919397108b64d35635eb02f33834755440169173dbae52dd0e42ca0f`

```dockerfile
```

-	Layers:
	-	`sha256:46367178c9df40615eb3dfef5583c8b19261d7a28d006db1e979f49b7f3762ce`  
		Last Modified: Thu, 02 Jul 2026 07:54:11 GMT  
		Size: 3.8 MB (3767647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4116c81dc6084032f1f2ef52fa2b8878dfe5bf9f16ed3f141857ed74af816f8e`  
		Last Modified: Thu, 02 Jul 2026 07:54:10 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:fd82b97b8632318bf2df10c54f4f0d7dd7cec2bba2c4abf03e3962afd339592e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163360888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bc12092f7a951eb48b81284889f3da4e5e5899b430f78d23c6248f8930fc3b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:59:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:59:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:59:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:59:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:59:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:59:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:01:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:01:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:01:04 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:01:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:01:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:01:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:01:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26927b3f7f3553ad8ab95551985a016e4d30efb84fd142f0f9e7c894c3608e61`  
		Last Modified: Thu, 02 Jul 2026 06:01:31 GMT  
		Size: 90.5 MB (90536927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd2f57b9802bfc9be850495254ed69d3cf33ab8c99ab490f4867793ebb127e6`  
		Last Modified: Thu, 02 Jul 2026 06:01:29 GMT  
		Size: 18.9 MB (18922254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7472caddd12d42506143f8960d99902f1dbed477694858c50c17aa43cf0c32f7`  
		Last Modified: Thu, 02 Jul 2026 06:01:29 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ef0a08581de0f744eaf5516e28cfafa5cf0243c83b12a113147505bf435d77`  
		Last Modified: Thu, 02 Jul 2026 06:01:29 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8cfd426a6509163674bd6a40093d6c4e3a017f903333cd137ca7a3929e3cce14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dcf7c357dba18c975a53f5e1b7d1c8c3c1c5a1181a676b56289acf73e01c4dc`

```dockerfile
```

-	Layers:
	-	`sha256:66b9d42ed9c6e0dd04dcad4070f7048b27730cd81e61062d6e4a53a0a90c59bd`  
		Last Modified: Thu, 02 Jul 2026 06:01:29 GMT  
		Size: 3.8 MB (3764324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81216506fb6dd8565a052c2047de91a1473178701591efa9f18ffc1507977ef`  
		Last Modified: Thu, 02 Jul 2026 06:01:29 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json
