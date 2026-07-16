## `clojure:temurin-26-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:db8f9c4ad41e3d2497cb02420285792fe9c57fec38bf762dbd0c945daa009665
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

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:20f2aa05b1243958e031a767163a6e5fafb037dc5eb127448e2c7c20bbf0b2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145564433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c938da6d4a07e57536af668ded3d45974656f6cedf6062f3b089bfa5991a0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:36:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:36:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:36:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:37:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:37:26 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:37:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:37:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b59061b28bb5a5a93458d3c07b87b46b8ff9a567be77d1d9ce310a7d9bb5feb`  
		Last Modified: Thu, 16 Jul 2026 01:37:46 GMT  
		Size: 94.5 MB (94524351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf5c40471c01ba7d4275ceed5a3303955d48ebf3b08a9a97be5765d61733583`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 16.7 MB (16743531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ec6fa1d149f6840e2069350a2cfa98182340eba82320482cdaf64e84886da5`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ea21895a89025c6328a7ef3330cdd3c9add83544ced77991a22d9d254f447f`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:267feb725f233544aeab6b7db55e4d0d463036f55164fe18abe6b86c3d13d4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3daa0494293c6241c7652ec9234901255acdd0cfcf09000e6745350c21338f`

```dockerfile
```

-	Layers:
	-	`sha256:4f918723759606c515dc83793a882eecad2543d8c8f6f101dbdec0b619197ffc`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 2.3 MB (2332008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20950faac976c74b5debbebceed124dcef4725bf413458b5dc7aae9462311099`  
		Last Modified: Thu, 16 Jul 2026 01:37:43 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d50be404e524be9b5d830d6a2b57cbf69ffd612f09d23becf0caf13119e0d7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144885107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8bc7d08dc3413511350c6d2faabc830c24294036641bcb7ba8928493886bcef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:32:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:32:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:32:18 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:37 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:38 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414c3dd99ba8c65b3cb92179eb3ec302f7a2aacb40c8f40bc0254dfb12e94e0d`  
		Last Modified: Thu, 16 Jul 2026 01:33:56 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6109908e2f881d7358858e15f9db8cf3ba2f6e4cef4ac2a72ebd07067c16333`  
		Last Modified: Thu, 16 Jul 2026 01:33:55 GMT  
		Size: 16.7 MB (16721441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f87c700e11c61d90bda94ad2408a7aa015a51c62f48a3c597152e110d22c0d3`  
		Last Modified: Thu, 16 Jul 2026 01:33:54 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc4fae1516b3aacdb95198f2e8aad0831f2e8bd9e5705c933bd70dec156fc6c`  
		Last Modified: Thu, 16 Jul 2026 01:33:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0127b5db0364d0f9a0b2dbcff444df4ab531c18d8be2ec29f99695f5f4e3de1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a0c0c450c53eb41af8ffc5d23878824b4506d984a0679daf4cfc2dd72b8839`

```dockerfile
```

-	Layers:
	-	`sha256:3311ac72e17b7c41d48f183c7bc50178fc3f7caa79fed6513275ad619174f8e4`  
		Last Modified: Thu, 16 Jul 2026 01:33:54 GMT  
		Size: 2.3 MB (2331615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ccceaccd98738652921e4f64088acaa26970c07fd29b1261e574ef03b15b53c`  
		Last Modified: Thu, 16 Jul 2026 01:33:54 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d288a6c3c6941a43e7417d7b8f1e6f978552144bc1196dad3d4ed1c1d93666d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148801786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eccebd80e39df01396ee9a53d4aaf69a4b641e010188c7843868f55ec4ff8389`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 03:11:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 03:11:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 03:11:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:11:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 03:11:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 03:11:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:14:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:14:30 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:14:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:14:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:14:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:14:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64fec9b596a433755d8f808d1d126c63faa3d48a8d3a38cee403439e0c64780`  
		Last Modified: Thu, 16 Jul 2026 03:15:13 GMT  
		Size: 93.9 MB (93902053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0b5971895e2d6531cc89b83a72ae8c4ad1e17e1740c505e6eeae6f1b3d98fb`  
		Last Modified: Thu, 16 Jul 2026 03:15:11 GMT  
		Size: 16.8 MB (16782627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ceb66467682a0699605797103db5a2471020bebd159341d35e9d756ba430e8`  
		Last Modified: Thu, 16 Jul 2026 03:15:10 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fa302c7ef9b5dcaee4bb69b4db19e422ceb2be4274482d3e579cc1a594b33c`  
		Last Modified: Thu, 16 Jul 2026 03:15:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:515183b1e17d5312772e3b09b46be6a7360bbf4a585ca6b635eb3bb9200fc7d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec4010d62c0f4bf552d0ca577612021617312b1acc10df9b7fac5406ae27ab7`

```dockerfile
```

-	Layers:
	-	`sha256:6b5f4481a553ff021fafb92425da33b1c5b1e661e4f432def9b9e69c6e9a4910`  
		Last Modified: Thu, 16 Jul 2026 03:15:10 GMT  
		Size: 2.3 MB (2316924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae7f493838f8eefacf51a78085b44a767ba0695445ca32c30c8a4049caa0516b`  
		Last Modified: Thu, 16 Jul 2026 03:15:10 GMT  
		Size: 17.8 KB (17789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:30f35d69792783d5441793f7dd86e68850d646bd62a77b98a52da34222d6a184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141679748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803ad1604141e684bd7053233897fb7997f8d3492c18677687b3f4ce538c6938`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:56:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:56:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:56:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:56:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:56:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:56:43 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:57:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:57:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:57:58 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:58:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:58:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:58:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:58:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a7f8f7f880abf8e3ac4abf924ec7459f010f7c34f9f8c116e3b4d55ef0b2be`  
		Last Modified: Thu, 16 Jul 2026 01:58:25 GMT  
		Size: 90.5 MB (90536933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b338fd16b0fc9c3f6bd9d9056716f04b048ae5cf1e2f6ac405141988293b020`  
		Last Modified: Thu, 16 Jul 2026 01:58:23 GMT  
		Size: 16.8 MB (16780547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a69ea094b15c2858877ddc26af9ff234df21d6d70bc17a0c9309aea8883779`  
		Last Modified: Thu, 16 Jul 2026 01:58:23 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e09ee5d3eb9daaa49804f095532d6e79fd63c1807be12269c8cfaae9b0ce951`  
		Last Modified: Thu, 16 Jul 2026 01:58:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7918f5d0a5ed96016f464e4749a3bcf4ceeff5e53ac835213cec9aa316511737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdf11927cc3a321b0c7747d6597d618a53c958331eb011250923c6292284852`

```dockerfile
```

-	Layers:
	-	`sha256:b18bd620c4550b1edc79c3780336a9c3731704a3ff12020807c1bfb407d609d3`  
		Last Modified: Thu, 16 Jul 2026 01:58:23 GMT  
		Size: 2.3 MB (2313621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43c7ff020dff29295e2f4dc39b69969edcd68459a8654f11db23ea86511d5512`  
		Last Modified: Thu, 16 Jul 2026 01:58:23 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json
