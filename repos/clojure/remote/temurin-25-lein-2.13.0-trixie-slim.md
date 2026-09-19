## `clojure:temurin-25-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:8fd86e7a0d7edd8c5251804f78fa52eafa7b541fe9de7ce60d7c2b8bd90b6e33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:413a58ab0d629d74064eba5a7dc7d4dde98c2b33dfede56ab2c08ecc81b5d39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143716037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f66442392c4cc597402bccaf8aa49c59f1a159fdc4e152eefa816ce3e9713f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:17:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:17:08 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:22 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:18:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:18:22 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:18:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:18:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:24 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d517f378754853581549cf7bb80477b54405b4139a7e4b3bb26637b79ac7059c`  
		Last Modified: Sat, 19 Sep 2026 01:18:42 GMT  
		Size: 92.6 MB (92615109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c911532493d673dfeda7f6ca1d131c6191e880bae8afd30128da19598ec9e582`  
		Last Modified: Sat, 19 Sep 2026 01:18:40 GMT  
		Size: 16.8 MB (16754864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4810dec1df2a3e1c4612a60dd5fa447c10d3d09f7dd52e3cd26e9a5b2cbf6eb2`  
		Last Modified: Sat, 19 Sep 2026 01:18:40 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd282f03448f6ff6dce9b7ccbe5e2637b873c6c128ae52e8df63ba5e1693b5e`  
		Last Modified: Sat, 19 Sep 2026 01:18:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8649958270aec1ea5abefc1a5ef97d887e0bbc56686edd7faaa50a966b1d96cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de49b19a0e94716546f4ee8f62cc3209d2c67497dd0a1632784127887351287`

```dockerfile
```

-	Layers:
	-	`sha256:133c7f796a61ae8bef5a79759ceae2186d8e50517e85a2c7235768bb57934f25`  
		Last Modified: Sat, 19 Sep 2026 01:18:39 GMT  
		Size: 2.3 MB (2341073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fddc46b29dec0af12d712d02ec01e659824bd54a92b2d661b36a360a0bfe2840`  
		Last Modified: Sat, 19 Sep 2026 01:18:39 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:068d91844751923f8e1e9a68e53cc700c7967f70187089ddc1b8ab10e0fecf73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142949416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ad89746243b56e2f70c8c55ab8113397d845fa9b64dd4bddb354dd58a98e93`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:24:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:10 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:24:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:24:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:25:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:25:26 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:25:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:25:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6fa9ddaf066b423f26866abc9b80e4720810b1bb4bee3d96822ad9cdb710a7`  
		Last Modified: Sat, 19 Sep 2026 01:25:46 GMT  
		Size: 91.5 MB (91532237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7289d6131b6032252b1074e5ae23e6f4ba1a16f138b8bfa6a6aa468c4941b8`  
		Last Modified: Sat, 19 Sep 2026 01:25:45 GMT  
		Size: 16.7 MB (16711878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d619172b4d4ec366c284a3d7cb778948b20f04cd763a890741ab0a9bdccc8ca`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fee925c14cc35dfb481b3b990d4c8a82b291961dd891229c7a21c4bc9ac6b2d`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:80968931cbebafd904ddd7d03ac7f7aeaa634d0a8631f2241c9496ec60971e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc00d508f5fba5e0ef9e9127a5261a6f1efe49af8070f59d473b37ff8bc5947`

```dockerfile
```

-	Layers:
	-	`sha256:f24e3d36e60e71a8f157a43568dd118a6e3cf6d52ba156b774f0e8410abd2164`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 2.3 MB (2340704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ea94429ef7ff382806107a503cb8af0fe0c9a14823412f92083b24757f092d`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d1609ad7ea1f0bc1921c225d1b3291875106614d2ea427d66c915e3c6261bfa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146195293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e81154c1def8da8349765e018cff2d6707d2578117c4c9f4f5ae2cd9246ce17`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:19:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:19:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:19:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:19:13 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:19:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:19:13 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:23:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:23:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:23:10 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:23:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:23:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:23:13 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:23:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21be62dce9b3483233e51608724f74dcae42350bd67904c3212e42323e7cc0c`  
		Last Modified: Sat, 19 Sep 2026 08:23:50 GMT  
		Size: 91.3 MB (91255865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da772fc398ea882a26ce3abeb74899e231eafc1c5105f54288641e6c3d419f2`  
		Last Modified: Sat, 19 Sep 2026 08:23:48 GMT  
		Size: 16.8 MB (16782537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bde3d811c826f4af277486982c22888031497f353f906f17943f18a7b2a29c4`  
		Last Modified: Sat, 19 Sep 2026 08:23:47 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9759f427b42002d42ab91256fa5c7338083fae1a73714b04e193e2717893e974`  
		Last Modified: Sat, 19 Sep 2026 08:23:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ebbefc404ab00fcb461d11ff2b23c49b76ba31c7d7bd74d9ee84270439b9f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:491c827fe6f2fb6a2c9a769f51f4075f7f9acbc9cc37a9f76ec5ca1cb75ade00`

```dockerfile
```

-	Layers:
	-	`sha256:cc7ac837d7d665433e76cbc45c1f910480dbe42c312eab83792c3d74a035ebb4`  
		Last Modified: Sat, 19 Sep 2026 08:23:47 GMT  
		Size: 2.3 MB (2325377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b1172059d589501cb09d209f4028e3da48d2f73ccebccb88faf0906c6164cf4`  
		Last Modified: Sat, 19 Sep 2026 08:23:47 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
